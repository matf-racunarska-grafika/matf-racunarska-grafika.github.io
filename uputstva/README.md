# Računarska grafika – Uputstvo za podešavanje okruženja

Pratite korake redom. Na kraju svake celine nalazi se provera kojom možete da utvrdite da li je sve uspešno podešeno. Ako naiđete na problem, pogledajte odeljak [7. Rešavanje problema](#7-rešavanje-problema).

## Sadržaj

0. [Pre nego što počnete](#0-pre-nego-što-počnete)
1. [Podešavanje sistema](#1-podešavanje-sistema)
2. [Kreiranje GitHub naloga i podešavanje SSH pristupa](#2-kreiranje-github-naloga-i-podešavanje-ssh-pristupa)
3. [Preuzimanje materijala sa kursa](#3-preuzimanje-materijala-sa-kursa)
4. [Preuzimanje šablona za vežbe](#4-preuzimanje-šablona-za-vežbe)
5. [Podešavanje razvojnog okruženja (CLion)](#5-podešavanje-razvojnog-okruženja-clion)
6. [Završna provera: kompajliranje i pokretanje programa](#6-završna-provera-kompajliranje-i-pokretanje-programa)
7. [Rešavanje problema](#7-rešavanje-problema)

---



## 0. Pre nego što počnete

**Preporučeno okruženje:** Koristite operativni sistem koji je instaliran direktno na računaru. Virtuelna mašina ima virtuelizovanu grafičku karticu (GPU) zbog čega programi rade sporije, a neke OpenGL funkcionalnosti možda neće biti dostupne.

**Zvanično podržani sistemi:** **Ubuntu 22.04 LTS ili 24.04 LTS**. Starije verzije, poput Ubuntu 20.04, se ne preporučuju.

**Ako još uvek ne koristite Ubuntu, na raspolaganju su sledeće opcije** (redosledom preporuke):

1. **Dual boot:** Instalirajte Ubuntu uz postojeći operativni sistem. Preuzmite ISO sa <https://ubuntu.com/download/desktop>, napravite instalacioni USB (na primer, pomoću programa [Rufus](https://rufus.ie/) ili [balenaEtcher](https://etcher.balena.io/)), pokrenite računar sa USB-a i izaberite opciju *Install Ubuntu alongside your existing OS*. Pre instalacije napravite rezervnu kopiju podataka. Ako je disk šifrovan pomoću BitLocker-a, privremeno obustavite zaštitu pre menjanja particija.
2. **Instalacija Ubuntu-a na zaseban disk ili eksterni USB SSD.**
3. **Virtuelna mašina:** Može da posluži, ali uz slabije performanse. Pogledajte odeljak [Virtuelna mašina](#virtuelna-masina-alternativa).

> Windows i macOS **nisu zvanično podržani** na kursu. Repozitorijumi se mogu kompajlirati i na ovim sistemima (pogledajte njihove `DOCS.md` datoteke), ali asistent vam može pružiti podršku samo za probleme na Ubuntu-u.

---


### Kratak pregled najvažnijih komandi

```
# Provera OpenGL verzije
glxinfo -B

# Kloniranje, kompajliranje i pokretanje primera sa kursa
git clone git@github.com:YourUsername/LearnOpenGL.git
cd LearnOpenGL
cmake -S . -B build && cmake --build build --parallel
cd bin/1.getting_started && ./1.getting_started__1.1.hello_window

# Kompajliranje i pokretanje projekta na osnovu šablona
cd ~/rg/rg-playground
cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug
cmake --build build --parallel
./project

# Ručno formatiranje datoteke
clang-format -i path/to/file.cpp

# Preuzimanje izmena nastavnika u sopstveni fork
git fetch upstream
git pull upstream master

# Čuvanje sopstvenih izmena
git add .
git commit -m "Describe what you changed"
git push origin master
```

---

## 1. Podešavanje sistema

### Ubuntu

Otvorite terminal (**Ctrl + Alt + T**) i pokrenite navedene komande. Izvršavajte ih jednu po jednu i pročitajte ispis nakon svakog koraka. Ako se pojavi greška, rešite je pre nego što nastavite.

### Korak 1.1: Ažuriranje liste paketa i instaliranih programa

```bash
sudo apt update
sudo apt upgrade -y
```

### Korak 1.2: Alati za razvoj i kompajliranje

```bash
sudo apt install -y build-essential clang-format clang-tidy cmake git pkg-config
```

| Paket | Namena |
|---|---|
| `build-essential` | GCC/G++ kompajler, `make` i standardna zaglavlja |
| `clang-format` | Automatsko formatiranje C/C++ koda |
| `clang-tidy` | Statička analiza C/C++ koda (otkriva potencijalne greške) |
| `cmake` | Sistem za prevođenje koji koriste svi repozitorijumi sa kursa |
| `git` | Sistem za kontrolu verzija |
| `pkg-config` | Omogućava CMake-u da pronađe odgovarajuće opcije kompajlera i linkera za biblioteke |

### Korak 1.3: OpenGL, Mesa i dijagnostički alati

```bash
sudo apt install -y libgl1-mesa-dev libglvnd-dev mesa-common-dev mesa-utils
```

| Paket | Namena |
|---|---|
| `libgl1-mesa-dev`, `libglvnd-dev`, `mesa-common-dev` | OpenGL zaglavlja i biblioteke |
| `mesa-utils` | Alati poput `glxinfo` i `glxgears` za proveru OpenGL-a |

### Korak 1.4: Biblioteke za prozorski sistem (X11 i Wayland)

Biblioteci GLFW, koja se koristi za kreiranje prozora i obradu ulaza, potrebne su sledeće biblioteke za kompajliranje.

```bash
sudo apt install -y xorg-dev libwayland-dev libxkbcommon-dev wayland-protocols
```

Paket `xorg-dev` već uključuje `libx11-dev`, `libxrandr-dev`, `libxi-dev`, `libxxf86vm-dev`, `libxcursor-dev`, `libxinerama-dev` i `libxext-dev`, tako da ih nije potrebno posebno navoditi.

### Korak 1.5: Grafičke biblioteke i biblioteke za učitavanje resursa

```bash
sudo apt install -y libglfw3-dev libglm-dev libassimp-dev libfreetype-dev
```

| Paket | Namena |
|---|---|
| `libglfw3-dev` | GLFW: kreiranje prozora, obrada ulaza i kreiranje OpenGL konteksta (uključuje i izvršnu biblioteku, tako da `libglfw3` nije potrebno posebno instalirati) |
| `libglm-dev` | GLM: vektori, matrice, transformacije i matematičke operacije potrebne za kameru |
| `libassimp-dev` | Assimp: učitavanje različitih formata 3D modela |
| `libfreetype-dev` | FreeType: iscrtavanje fontova (koristi se u primeru za iscrtavanje teksta) |


### Korak 1.6: Instalacija svih paketa jednom komandom (opciono)

Ako želite da instalirate sve odjednom, umesto da prolazite kroz korake 1.2–1.5, pokrenite:

```bash
sudo apt update && sudo apt install -y \
    build-essential clang-format clang-tidy cmake git pkg-config \
    libgl1-mesa-dev libglvnd-dev mesa-common-dev mesa-utils \
    xorg-dev libwayland-dev libxkbcommon-dev wayland-protocols \
    libglfw3-dev libglm-dev libassimp-dev libfreetype-dev
```

### Korak 1.7: Instalacija drajvera za grafičku karticu

Performanse OpenGL-a zavise od drajvera grafičke kartice.

- **Intel / AMD:** Drajver otvorenog koda Mesa, koji dolazi uz Ubuntu, odgovarajući je za ove grafičke kartice. Nije potrebna dodatna instalacija.
- **NVIDIA:** Potrebno je instalirati vlasnički ili NVIDIA drajver otvorenog koda. Ubuntu može automatski da izabere preporučenu verziju:

  ```bash
  ubuntu-drivers devices          # prikazuje preporučeni drajver
  sudo ubuntu-drivers autoinstall # instalira drajver
  sudo reboot
  ```

  Ako je Secure Boot uključen, instalacioni program će zatražiti da kreirate lozinku. Nakon ponovnog pokretanja računara pojaviće se plavi ekran za upravljanje MOK ključevima. Izaberite **Enroll MOK**, a zatim unesite prethodno kreiranu lozinku. U suprotnom, drajver se neće učitati.

- **Laptop sa dve grafičke kartice (Intel + NVIDIA):** Ako se programi pokreću na pogrešnoj grafičkoj kartici, pogledajte odeljak [Rešavanje problema](#7-resavanje-problema).

### Korak 1.8: Provera verzija instaliranih alata

```bash
g++ --version        # preporučuje se verzija 11 ili novija (podrška za C++20)
cmake --version      # verzija 3.16 ili novija
git --version
clang-format --version
```

### Korak 1.9: Provera OpenGL verzije

```bash
glxinfo -B
```

Kratak ispis koji se dobija opcijom `-B` pregledniji je od kompletne komande `glxinfo | grep OpenGL`, koja takođe može da se koristi:

```bash
glxinfo | grep OpenGL
```

**Potrebna je OpenGL verzija 4.0 ili novija.** Obratite pažnju na red `OpenGL core profile version string`.

Primer ispisa (NVIDIA):

```text
direct rendering: Yes
OpenGL vendor string: NVIDIA Corporation
OpenGL renderer string: GeForce RTX 2060/PCIe/SSE2
OpenGL core profile version string: 4.6.0 NVIDIA 460.91.03     <--- OpenGL verzija 4.6.0
OpenGL core profile shading language version string: 4.60 NVIDIA
OpenGL core profile context flags: (none)
OpenGL core profile profile mask: core profile
OpenGL version string: 4.6.0 NVIDIA 460.91.03
OpenGL shading language version string: 4.60 NVIDIA
OpenGL ES profile version string: OpenGL ES 3.2 NVIDIA 460.91.03
```

**Šta treba proveriti u sopstvenom ispisu:**

| Stavka                               | Ispravno                                            | Neispravno                                                      |
| ------------------------------------ | --------------------------------------------------- | --------------------------------------------------------------- |
| `direct rendering`                   | `Yes`                                               | `No` (nema hardverskog ubrzanja)                                |
| `OpenGL renderer string`             | Naziv vaše grafičke kartice (NVIDIA, AMD, Intel...) | `llvmpipe` ili `softpipe` (softversko iscrtavanje, veoma sporo) |
| `OpenGL core profile version string` | `4.0` ili novija verzija                            | Verzija starija od 4.0                                          |

> **Provera:** Potrebno je da `direct rendering` bude `Yes`, da renderer prikazuje naziv stvarne grafičke kartice i da verzija OpenGL core profila bude 4.0 ili novija. Ako nešto od ovoga nije ispunjeno, pogledajte odeljak Rešavanje problema.

Možete pokrenuti i komandu `glxgears`. Trebalo bi da se otvori prozor sa tri rotirajuća zupčanika, a u terminalu će se ispisivati broj frejmova u sekundi.


### Virtuelna mašina (alternativa)

Ovu opciju koristite samo ako ne možete da instalirate Ubuntu direktno na računar. Očekujte slabije performanse, a pojedini primeri možda neće raditi punom brzinom.

1. Preuzmite i instalirajte [VirtualBox](https://www.virtualbox.org/). Na Linux sistemima domaćinima možda će biti potrebno instalirati module za kernel. Na svim sistemima potrebno je uključiti hardversku virtuelizaciju (**Intel VT-x / AMD-V**) u BIOS/UEFI podešavanjima, ako VirtualBox prijavi da je isključena. Na Windows-u isključite *Hyper-V* / *Virtual Machine Platform* ako VirtualBox ne može da pokrene virtuelnu mašinu.
2. Preuzmite [unapred podešenu virtuelnu mašinu](https://drive.google.com/file/d/1uqbRI_YOH7oSbX-8NQXNbtO90kHTRd2K/view?usp=drive_link) i raspakujte ZIP arhivu. Proverite da li imate dovoljno slobodnog prostora na disku za raspakovane datoteke.
3. Pokrenite VirtualBox. Na Windows-u ga pokrenite kao administrator: desni klik -> **Run as administrator**.
4. Kliknite na dugme **Add** i izaberite datoteku `matf-rg.vbox` iz raspakovanog direktorijuma.
5. Izaberite virtuelnu mašinu `matf-racunarska-grafika` i kliknite na **Start**.
6. Prijavite se koristeći lozinku: `matfrg`

Sve potrebne biblioteke i alati već su instalirani. Nije potrebno dodatno podešavanje virtuelne mašine, tako da možete preskočiti prvi odeljak ovog uputstva i nastaviti od odeljka 2.

Ako virtuelna mašina radi sporo, dodelite joj više resursa: ugasite je, a zatim u **Settings -> System** povećajte količinu RAM memorije (najmanje 4 GB) i broj procesorskih jezgara. U **Settings -> Display** povećajte video memoriju i uključite 3D ubrzanje.

---

## 2. Kreiranje GitHub naloga i podešavanje SSH pristupa

SSH ključevi omogućavaju da šaljete (push) i preuzimate (pull) izmene sa GitHub-a bez unošenja lozinke pri svakom pristupu.

### Korak 2.1: Kreiranje naloga

1. Otvorite [https://github.com/](https://github.com/).
2. Kliknite na **Sign up**.
3. Unesite svoje podatke. Možete koristiti privatnu imejl adresu – nije neophodno da koristite adresu fakulteta.
4. Potvrdite nalog (rešavanjem CAPTCHA zadatka i unosom koda koji dobijete imejlom).
5. Opciono, ali preporučeno: uključite dvofaktorsku autentifikaciju u **Settings -> Password and authentication**.

### Korak 2.2: Podešavanje Git identiteta

Koristite istu imejl adresu kao na GitHub nalogu (ili privatnu `noreply` adresu koju možete pronaći u **Settings -> Emails**). Ovi podaci će biti vezani za vaše Git commit-ove.

```
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
git config --global init.defaultBranch main
git config --global pull.rebase false
```

Ispravnost podešavanja možete proveriti komandom:

```
git config --global --list
```

### Korak 2.3: Generisanje SSH ključa

Otvorite terminal i pokrenite:

```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

- Kada program zatraži putanju za čuvanje ključa, pritisnite **Enter** da biste prihvatili podrazumevanu lokaciju (`~/.ssh/id_ed25519`).
- Unesite lozinku (passphrase) ili ostavite polje prazno. Lozinka štiti ključ u slučaju krađe laptopa, dok je prazno polje praktičnije za svakodnevnu upotrebu. (Dok unosite lozinku, ništa se neće prikazivati na ekranu, što je očekivano.)

Ako vaš sistem ne podržava algoritam `ed25519`, koristite:

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

### Korak 2.4: Dodavanje ključa SSH agentu

```
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

Trebalo bi da dobijete poruku `Identity added: ...`.

Na Ubuntu desktop sistemima SSH agent se obično automatski pokreće prilikom prijavljivanja, tako da ovaj korak možda nećete morati da ponavljate nakon svakog restartovanja računara.

Ako je potrebno, ponovo pokrenite `ssh-add` ili omogućite automatsko dodavanje ključa kreiranjem datoteke `~/.ssh/config` sa sledećim sadržajem:

```
Host github.com
    AddKeysToAgent yes
    IdentityFile ~/.ssh/id_ed25519
```

### Korak 2.5: Kopiranje javnog ključa

```
cat ~/.ssh/id_ed25519.pub
```

Označite i kopirajte kompletan ispis. U pitanju je jedan red koji počinje sa `ssh-ed25519` i završava se vašom imejl adresom.

**Kopirajte isključivo datoteku sa ekstenzijom `.pub`.** Datoteka bez ekstenzije `.pub` sadrži privatni ključ i nikada je ne smete deliti sa drugima.

Opciono, možete instalirati `xclip` i direktno kopirati ključ u clipboard:

```
sudo apt install xclip
xclip -selection clipboard < ~/.ssh/id_ed25519.pub
```

### Korak 2.6: Dodavanje ključa na GitHub

1. Otvorite [https://github.com/settings/keys](https://github.com/settings/keys).
2. Kliknite na **New SSH key**.
3. **Title:** Unesite naziv po kojem ćete prepoznati računar, na primer `Ubuntu laptop`.
4. **Key type:** Izaberite *Authentication Key*.
5. **Key:** Nalepite sadržaj koji ste kopirali u prethodnom koraku.
6. Kliknite na **Add SSH key** (GitHub može zatražiti lozinku).

### Korak 2.7: Provera SSH konekcije

```
ssh -T git@github.com
```

Prilikom prvog povezivanja, SSH može prikazati sledeću poruku:

```
The authenticity of host 'github.com (...)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```

Proverite da li se otisak ključa (fingerprint) poklapa sa onim koji je objavljen na [https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints), a zatim unesite `yes`.

Ako je sve ispravno podešeno, trebalo bi da dobijete sledeću poruku:

```
Hi ${YourUsername}! You've successfully authenticated, but GitHub does not provide shell access.
```

Deo poruke *does not provide shell access* je očekivan i ne predstavlja grešku.

> **Provera:** Trebalo bi da dobijete navedenu poruku sa svojim korisničkim imenom. Ako se pojavi greška `Permission denied (publickey)` ili istekne vreme za povezivanje (timeout), pogledajte odeljak Rešavanje problema.

> **Napomena:** Kada se u video-snimcima sa vežbi koristi HTTPS adresa za kloniranje repozitorijuma (`https://github.com/...`), zamenite je odgovarajućom SSH adresom (`git@github.com:...`). SSH adresu možete kopirati na GitHub stranici repozitorijuma klikom na **Code -> SSH**.

---

## 3. Preuzimanje materijala sa kursa

Materijali za vežbe nalaze se u repozitorijumu [LearnOpenGL](https://github.com/matf-racunarska-grafika/LearnOpenGL).

### Preporučeni način: Fork, pa kloniranje sopstvenog repozitorijuma

Fork predstavlja vašu kopiju originalnog GitHub repozitorijuma. U njoj možete čuvati svoje beleške i eksperimente, bez menjanja originalnog repozitorijuma sa kursa.

1. Otvorite [https://github.com/matf-racunarska-grafika/LearnOpenGL](https://github.com/matf-racunarska-grafika/LearnOpenGL) i kliknite na **Fork** (u gornjem desnom uglu). Kao vlasnika izaberite svoj GitHub nalog.
2. Klonirajte **svoj** fork (zamenite `YourUsername` svojim korisničkim imenom):
   ```
   mkdir -p ~/rg
   cd ~/rg
   git clone git@github.com:YourUsername/LearnOpenGL.git
   cd LearnOpenGL
   ```
3. Dodajte originalni repozitorijum sa kursa pod nazivom `upstream`, kako biste kasnije mogli da preuzimate nove materijale:
   ```
   git remote add upstream git@github.com:matf-racunarska-grafika/LearnOpenGL.git
   git remote -v
   ```
   Trebalo bi da vidite dva udaljena repozitorijuma (remote):
   - `origin` – vaš fork
   - `upstream` – originalni repozitorijum sa kursa
4. Kada želite da preuzmete nove izmene, pokrenite:
   ```
   git fetch upstream
   git pull upstream master
   ```

Ako želite samo da pregledate materijale i nemate potrebu da čuvate sopstvene izmene u GitHub repozitorijumu, možete direktno klonirati originalni repozitorijum:

```
git clone git@github.com:matf-racunarska-grafika/LearnOpenGL.git
```

> **Savet:** Čuvajte svoje beleške u zasebnom direktorijumu, na primer `notes/`, kako biste izbegli konflikte prilikom preuzimanja novih izmena.

### Kompajliranje primera sa kursa

Detaljnija uputstva nalaze se u datoteci `README.md` unutar repozitorijuma. Osnovni postupak je sledeći:

```
cd ~/rg/LearnOpenGL
cmake -S . -B build
cmake --build build --parallel
```

Izvršne datoteke biće napravljene u direktorijumima `bin/<chapter>/`.

**Svaki program pokrenite iz njegovog direktorijuma**, kako bi mogao da pronađe odgovarajuće shader datoteke:

```
cd bin/3.model_loading
./3.model_loading__3.1.model_loading
```

> **Provera:** Trebalo bi da se otvori prozor u kojem je nacrtan ranac.

---

## 4. Preuzimanje šablona za vežbe

Na raspolaganju su vam dva repozitorijuma sa šablonima:

| Repozitorijum                                                                         | Namena                                                                                                                                |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| [rg-playground](https://github.com/matf-racunarska-grafika/rg-playground)             | Minimalna struktura projekta sa svim bibliotekama potrebnim za zadatke koji se rade na časovima. Koristite ga za samostalno vežbanje. |
| [rg-project-template](https://github.com/matf-racunarska-grafika/rg-project-template) | Šablon projekta koji ćete koristiti za izradu **završnog projekta na kursu**.                                                         |

### Kreiranje sopstvenog projekta na osnovu šablona

1. Otvorite odgovarajući repozitorijum sa šablonom na GitHub-u.
2. Kliknite na **Use this template -> Create a new repository**.
3. Klonirajte **novokreirani repozitorijum** na svoj računar:
   ```
   cd ~/rg
   git clone git@github.com:YourUsername/rg-playground.git
   cd rg-playground
   ```
5. Pročitajte datoteku `README.md` u repozitorijumu. U njima se nalaze uputstva za kompajliranje i pravila za formatiranje koda.

### Kompajliranje i pokretanje

```
cmake -S . -B cmake-build-debug -DCMAKE_BUILD_TYPE=Debug
cmake --build cmake-build-debug --parallel
./project
```

Program pokrenite iz **korenskog direktorijuma projekta** (direktorijuma koji sadrži `resources/`), kako bi mogao da pronađe shader-e, teksture i modele.

> **Provera:** Prozor projekta trebalo bi da se otvori bez grešaka u terminalu.

---

## 5. Podešavanje razvojnog okruženja (CLion)

CLion je razvojno okruženje koje se koristi u video-snimcima sa kursa. Možete koristiti i druge editore (VS Code i slično), ali je CLion baziran na okviru koji koristi Intellij a koji je već poznat sa predmeta Objektno orijentisano programiranje.  

### Korak 5.1: Instalacija CLion-a

- **JetBrains Toolbox (preporučeno):** Preuzmite ga sa [https://www.jetbrains.com/toolbox-app/](https://www.jetbrains.com/toolbox-app/), a zatim kroz njega instalirajte CLion.
- **Snap:**
  ```
  sudo snap install clion --classic
  ```

### Korak 5.2: Otvaranje projekta i podešavanje kompajliranja

1. Izaberite **File -> Open**, pronađite direktorijum repozitorijuma (onaj koji sadrži `CMakeLists.txt`) i potvrdite da verujete projektu (Trust Project).
2. Otvorite **Settings -> Build, Execution, Deployment -> CMake**. Trebalo bi da već postoji `Debug` profil. Kliknite na **+** da biste dodali i `Release` profil. Za oba profila možete ostaviti podrazumevane direktorijume za izgradnju (`cmake-build-debug` i `cmake-build-release`).
3. Sačekajte da CMake završi konfiguraciju. Na kartici *CMake* pri dnu prozora trebalo bi da se pojavi `[Finished]`, bez grešaka.
4. U gornjem desnom uglu izaberite cilj (target) `project`, a zatim kliknite na **Run** (▶) ili **Debug** (🐞).
5. **Podesite radni direktorijum (veoma važno):** Otvorite **Run -> Edit Configurations -> project -> Working directory** i postavite ga na korenski direktorijum projekta (`$ProjectFileDir$`). U suprotnom, program neće moći da pronađe direktorijum `resources/`.

### Korak 5.3: Učitavanje stila za formatiranje koda

1. Otvorite **Settings -> Editor -> Code Style -> Schema** (ikona zupčanika ⚙) -> **Import Schema** i izaberite datoteku `path/to/{REPOSITORY_NAME}/clion-code-style.xml`.
2. Proverite da li je u padajućoj listi Schema izabran upravo uvezeni stil.
3. Na istoj stranici proverite da opcija **Enable ClangFormat** ne zamenjuje uvezeni stil. Ako CLion ponudi korišćenje datoteke `.clang-format` iz repozitorijuma, možete koristiti bilo koju od te dve opcije, pod uslovom da se dosledno držite izabrane opcije.

### Korak 5.4: Automatsko formatiranje prilikom čuvanja datoteke

Otvorite **Settings -> Tools -> Actions on Save** i uključite opciju **Reformat code**.

### Korak 5.5: Omogućavanje izuzetaka od automatskog formatiranja

Otvorite **Settings -> Editor -> Code Style** i uključite opciju **Turn formatter on/off with markers in code comments**, a zatim podesite:

- **Off:** `@formatter:off`
- **On:** `@formatter:on`

Na ovaj način možete isključiti automatsko formatiranje za delove koda čiji raspored želite ručno da kontrolišete (na primer, nizove podataka o temenima):

```
// @formatter:off
float vertices[] = {
    -0.5f, -0.5f, 0.0f,
     0.5f, -0.5f, 0.0f,
     0.0f,  0.5f, 0.0f,
};
// @formatter:on
```

### Korak 5.6: Opciono – dodatni dodaci (plugins)

- **GLSL:** Otvorite **Settings -> Plugins -> Marketplace**, pronađite `GLSL` i kliknite na **Install**. Omogućava isticanje sintakse u shader datotekama. Nakon instalacije restartujte CLion.
- **GitToolBox:** Otvorite **Settings -> Plugins -> Marketplace**, pronađite `GitToolBox` i kliknite na **Install**. Poboljšava integraciju sa Git-om (prikaz autora izmena i statusa u alatnoj traci).

### Korak 5.7: Opciono – uključivanje clang-tidy analize

Otvorite **Settings -> Editor -> Inspections -> C/C++ -> General -> Clang-Tidy** i uključite ovu opciju.

Koristiće se `clang-tidy` koji ste instalirali u koraku 1.2.

### Korišćenje terminala u CLion-u

Ugrađeni terminal možete otvoriti prečicom **Alt + F12**. Radi kao običan terminal, sa trenutnim direktorijumom postavljenim na direktorijum projekta, tako da u njemu možete koristiti sve `git` i `cmake` komande iz ovog uputstva.

---

## 6. Završna provera: kompajliranje i pokretanje programa

Pre prvih vežbi proverite da li sve navedeno funkcioniše:

- Komanda `glxinfo -B` prikazuje `direct rendering: Yes` i OpenGL core profile verziju 4.0 ili noviju.
- Komande `g++ --version`, `cmake --version` i `git --version` rade bez greške.
- Komanda `ssh -T git@github.com` prikazuje pozdrav sa vašim korisničkim imenom.
- Repozitorijum LearnOpenGL je kloniran (po mogućstvu kao fork) i primer `1.1.hello_window` uspešno otvara prozor.
- Kreirali ste sopstveni repozitorijum na osnovu šablona `rg-playground`, klonirali ga i uspešno kompajlirali.
- (Ako koristite) CLion uspešno otvara projekat, kompajlira ga i pokreće sa radnim direktorijumom postavljenim na korenski direktorijum projekta.
- (Ako koristite) Čuvanjem datoteke u CLion-u kod se automatski formatira.

Ako neki od koraka ne funkcioniše, pogledajte sledeći odeljak, ukoliko ni u sledećem odeljku ne pronađete rešenje, javite se za pomoć.  

---

## 7. Rešavanje problema

Kada tražite pomoć, obavezno priložite:

- **Tačnu komandu** koju ste pokrenuli.
- **Kompletan tekst greške** koji je terminal ispisao.
- Verziju Ubuntu-a (`lsb_release -a`).
- Ispis komande `glxinfo -B` ako je problem povezan sa grafikom.

### 7.1. Problemi prilikom instalacije paketa

| Problem                                                                                | Uzrok i rešenje                                                                                                                                                                                                                                                            |
| -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `E: Unable to locate package ...`                                                      | Prvo pokrenite `sudo apt update`. Proverite da li je naziv paketa ispravno napisan. Ako problem i dalje postoji, omogućite *universe* repozitorijum: `sudo add-apt-repository universe && sudo apt update`.                                                                |
| `E: Unable to locate package #` ili `command not found` nakon reda koji počinje sa `#` | Kopirali ste komande u kojima se komentari (`#`) nalaze iza znaka `\`. Koristite komande iz ovog uputstva, u kojima su komentari u zasebnim redovima, ili instalirajte pakete jednom komandom u jednom redu.                                                               |
| `Could not get lock /var/lib/dpkg/lock-frontend`                                       | Drugi proces trenutno instalira ili ažurira pakete (Software Updater ili prethodno pokrenuta `apt` komanda). Sačekajte nekoliko minuta, zatvorite Software Updater i pokušajte ponovo. **Nemojte brisati lock datoteke** ako niste sigurni da nijedan proces nije aktivan. |
| `dpkg was interrupted, you must manually run 'sudo dpkg --configure -a'`               | Pokrenite `sudo dpkg --configure -a`, zatim `sudo apt -f install` i ponovite instalaciju.                                                                                                                                                                                  |
| `Package '...' has no installation candidate`                                          | Paket je preimenovan ili uklonjen u vašoj verziji Ubuntu-a. Potražite ga komandom `apt search <name>`. Za FreeType se na novijim verzijama koristi `libfreetype-dev`, a na starijim `libfreetype6-dev`.                                                                    |
| `The following packages have unmet dependencies`                                       | Pokrenite `sudo apt --fix-broken install`, a zatim ponovite instalaciju.                                                                                                                                                                                                   |
| `Temporary failure resolving 'archive.ubuntu.com'`                                     | Nema internet konekcije ili postoji problem sa DNS-om. Proverite mrežnu konekciju.                                                                                                                                                                                         |
| `sudo: command not found` ili korisnik nije u sudoers listi                            | Morate koristiti korisnički nalog koji ima administratorska prava.                                                                                                                                                                                                         |

### 7.2. Problemi sa kompajlerom i CMake-om

| Problem                                                                                                                                   | Uzrok i rešenje                                                                                                                                                                                                                                            |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `CMake 3.xx or higher is required`                                                                                                        | Instalirana verzija CMake-a je prestara. Koristite Ubuntu 22.04 ili noviji, ili instalirajte noviju verziju pomoću `sudo snap install cmake --classic`.                                                                                                    |
| `error: 'concepts' / 'std::...' is not a member` ili neprepoznate C++20 opcije                                                            | Kompajler je prestara verzija. Proverite `g++ --version` (preporučuje se verzija 11 ili novija). Na starijim sistemima pokrenite `sudo apt install g++-11` i konfigurišite projekat pomoću `-DCMAKE_CXX_COMPILER=g++-11`.                                  |
| `Could NOT find OpenGL`                                                                                                                   | Instalirajte `libgl1-mesa-dev` i `libglvnd-dev`.                                                                                                                                                                                                           |
| `Could NOT find X11` / `Xrandr` / `Xinerama` / `Xcursor` / `Xi`                                                                           | Instalirajte `xorg-dev`.                                                                                                                                                                                                                                   |
| `Could NOT find ASSIMP`                                                                                                                   | Instalirajte `libassimp-dev`.                                                                                                                                                                                                                              |
| `Could NOT find GLM`, `GLFW3` ili `Freetype`                                                                                              | Instalirajte `libglm-dev`, `libglfw3-dev` i `libfreetype-dev`.                                                                                                                                                                                             |
| `Could not find a package configuration file provided by "..."`                                                                           | Nedostaje odgovarajući razvojni paket (`-dev`). Naziv paketa uglavnom odgovara nazivu biblioteke: `Assimp` -> `libassimp-dev`.                                                                                                                              |
| GLFW prijavljuje greške `xkbcommon`, `wayland-scanner` ili `wayland-protocols`                                                            | Instalirajte `libwayland-dev libxkbcommon-dev wayland-protocols`. Ako problem i dalje postoji, ponovo pokrenite CMake sa opcijom `-DGLFW_BUILD_WAYLAND=OFF`.                                                                                               |
| `undefined reference to ...` prilikom povezivanja (linking)                                                                               | Nedostaje neka biblioteka. Pogledajte prvi simbol za koji nije pronađena definicija: `glfw...` -> GLFW, `aiImportFile` -> Assimp, `FT_...` -> FreeType. Instalirajte odgovarajuću biblioteku, obrišite direktorijum `build/` i ponovo konfigurišite projekat. |
| `fatal error: GL/gl.h: No such file or directory`                                                                                         | Instalirajte `libgl1-mesa-dev`.                                                                                                                                                                                                                            |
| `fatal error: glm/glm.hpp: No such file`                                                                                                  | Instalirajte `libglm-dev` (za LearnOpenGL). Šabloni već sadrže GLM u direktorijumu `libs/`.                                                                                                                                                                |
| CMake koristi zastarelu konfiguraciju nakon premeštanja ili preimenovanja direktorijuma, odnosno nakon instalacije nedostajuće biblioteke | Obrišite direktorijum za izgradnju i ponovo konfigurišite projekat: `rm -rf build && cmake -S . -B build`. U CLion-u izaberite **Tools -> CMake -> Reset Cache and Reload Project**.                                                                         |
| Kompajliranje je veoma sporo ili se računar zamrzava                                                                                      | Smanjite broj paralelnih procesa: `cmake --build build -j2`. Zatvorite ostale zahtevne programe.                                                                                                                                                           |

### 7.3. Problemi prilikom pokretanja programa i sa OpenGL-om

| Problem                                                                                             | Uzrok i rešenje                                                                                                                                                                                                                                                                                                                                             |
| --------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `glxinfo: command not found`                                                                        | Instalirajte `mesa-utils`.                                                                                                                                                                                                                                                                                                                                  |
| `Error: unable to open display`                                                                     | Komandu pokrećete iz terminalske sesije bez grafičkog okruženja ili preko SSH-a. Pokrenite je u terminalu unutar grafičke sesije.                                                                                                                                                                                                                           |
| `direct rendering: No` ili je renderer `llvmpipe` / `softpipe`                                      | OpenGL koristi procesor (CPU), a ne grafičku karticu (GPU). Instalirajte odgovarajući drajver (odeljak 1.7), restartujte računar i ponovo proverite. U virtuelnoj mašini ovo je očekivano, ali značajno usporava rad.                                                                                                                                       |
| OpenGL verzija je starija od 4.0                                                                    | Ažurirajte sistem (`sudo apt update && sudo apt upgrade`) i drajver grafičke kartice. Veoma stare grafičke kartice ne mogu da pokrenu primere sa kursa.                                                                                                                                                                                                     |
| Laptop koristi pogrešnu grafičku karticu (NVIDIA + Intel)                                           | Prebacite sistem na NVIDIA karticu pomoću `sudo prime-select nvidia` (potreban je restart), ili pokrenite samo određeni program na NVIDIA kartici pomoću `__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia ./project`. Za hibridne AMD/Intel sisteme koristite `DRI_PRIME=1 ./project`. Aktivnu grafičku karticu proverite pomoću `glxinfo -B`. |
| NVIDIA drajver je instaliran, ali `nvidia-smi` ne radi, ili se nakon restartovanja pojavi crn ekran | Secure Boot blokira učitavanje drajvera. Potvrdite ključ na plavom *MOK* ekranu (odeljak 1.7) ili isključite Secure Boot u BIOS-u.                                                                                                                                                                                                                          |
| `Failed to create GLFW window` ili `GLFW Error ... GLX: Failed to create context`                   | Grafička kartica ili drajver ne podržavaju zahtevanu OpenGL verziju. Proverite `glxinfo -B`. Ako koristite virtuelnu mašinu, uključite 3D ubrzanje.                                                                                                                                                                                                         |
| `Failed to initialize GLAD`                                                                         | OpenGL kontekst nije uspešno kreiran ili ne podržava potrebne funkcionalnosti. Uzrok je isti kao u prethodnom slučaju.                                                                                                                                                                                                                                      |
| Crn prozor, ništa se ne iscrtava                                                                    | Često je u pitanju problem sa shader-ima ili putanjama do datoteka. Proverite ispis terminala i greške pri kompajliranju shader-a. Proverite i da li je radni direktorijum ispravno podešen (videti sledeći red).                                                                                                                                           |
| Shader, tekstura ili model ne mogu da se pronađu                                                    | Program pokrenite iz odgovarajućeg direktorijuma: iz **direktorijuma izvršne datoteke** za LearnOpenGL primere, odnosno iz **korenskog direktorijuma projekta** za šablone. U CLion-u podesite radni direktorijum u konfiguraciji za pokretanje.                                                                                                            |
| `error while loading shared libraries: libassimp.so...`                                             | Instalirajte `libassimp-dev` ili ponovo kompajlirajte projekat nakon njegove instalacije.                                                                                                                                                                                                                                                                   |
| Prozor je zamućen ili ima pogrešnu veličinu na Wayland-u ili pri skaliranju ekrana                  | Pokušajte da koristite X11 sesiju: odjavite se i na ekranu za prijavljivanje, preko ikone zupčanika, izaberite *Ubuntu on Xorg*.                                                                                                                                                                                                                            |
| Miš je zarobljen u prozoru i ne možete da izađete                                                   | Pritisnite **Alt + Tab** ili taster Escape, ako ga primer podržava. Program možete prekinuti i iz terminala pomoću **Ctrl + C**.                                                                                                                                                                                                                            |

### 7.4. Problemi sa Git-om i SSH pristupom

| Problem                                                                      | Uzrok i rešenje                                                                                                                                                                                                                                                                                                                                                                            |
| ---------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `Permission denied (publickey)`                                              | GitHub nije prihvatio vaš ključ. Proverite: (1) da li ste na [https://github.com/settings/keys](https://github.com/settings/keys) dodali sadržaj datoteke **`.pub`**; (2) da li SSH agent ima učitan ključ – pokrenite `ssh-add -l` (ako ga nema, pokrenite `ssh-add ~/.ssh/id_ed25519`); (3) da li detaljni ispis komande `ssh -vT git@github.com` pokazuje da se vaš ključ nudi serveru. |
| `Could not open a connection to your authentication agent`                   | SSH agent nije pokrenut. Prvo pokrenite `eval "$(ssh-agent -s)"`, a zatim `ssh-add`.                                                                                                                                                                                                                                                                                                       |
| `WARNING: UNPROTECTED PRIVATE KEY FILE!`                                     | Podesite dozvole nad datotekama: `chmod 700 ~/.ssh && chmod 600 ~/.ssh/id_ed25519`.                                                                                                                                                                                                                                                                                                        |
| `ssh: connect to host github.com port 22: Connection timed out`              | Port 22 je blokiran (na nekim Wi-Fi mrežama ili firewall-ima). Koristite SSH preko porta 443 tako što ćete u `~/.ssh/config` dodati: <br>`Host github.com`<br>`    Hostname ssh.github.com`<br>`    Port 443`<br>`    User git`<br>Zatim ponovo proverite konekciju.                                                                                                                       |
| `Host key verification failed` ili `REMOTE HOST IDENTIFICATION HAS CHANGED`  | Uklonite stari zapis pomoću `ssh-keygen -R github.com`, zatim ponovo proverite konekciju i uporedite novi fingerprint sa zvanično objavljenim GitHub fingerprint-ima.                                                                                                                                                                                                                      |
| `git clone` traži korisničko ime i lozinku                                   | Koristite HTTPS adresu umesto SSH adrese. Pređite na SSH adresu (`git@github.com:...`) ili promenite adresu postojećeg repozitorijuma komandom `git remote set-url origin git@github.com:YourUsername/Repository.git`.                                                                                                                                                                     |
| `Repository not found`                                                       | Pogrešno ste uneli korisničko ime ili naziv repozitorijuma, ili pokušavate da pristupite privatnom repozitorijumu za koji nemate dozvolu. Proverite adresu i nalog.                                                                                                                                                                                                                        |
| `fatal: destination path '...' already exists and is not an empty directory` | Direktorijum već postoji i nije prazan. Obrišite ga, promenite mu naziv ili klonirajte repozitorijum u drugi direktorijum.                                                                                                                                                                                                                                                                 |
| `Author identity unknown. Please tell me who you are.`                       | Podesite ime i imejl adresu (odeljak 2.2).                                                                                                                                                                                                                                                                                                                                                 |
| `! [rejected] ... (fetch first)` prilikom slanja izmena (push)               | Vaš fork sadrži izmene koje nemate lokalno. Pokrenite `git pull origin master`, rešite eventualne konflikte i ponovo pošaljite izmene.                                                                                                                                                                                                                                                     |
| Konflikt pri spajanju nakon `git pull upstream master`                       | Vi i nastavnici ste menjali istu datoteku. Otvorite datoteke sa konfliktima, rešite delove označene sa `<<<<<<<`, a zatim pokrenite `git add` i `git commit`. Čuvanje beleški u zasebnom direktorijumu sprečava ovakve probleme.                                                                                                                                                           |
| `error: src refspec main does not match any`                                 | Podrazumevana grana repozitorijuma sa kursa zove se `master`, a ne `main`. Koristite `git push origin master` ili proverite naziv grane komandom `git branch`.                                                                                                                                                                                                                             |

### 7.5. Problemi sa CLion-om

| Problem                                                                                        | Uzrok i rešenje                                                                                                                                                                                               |
| ---------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| CMake prijavljuje greške prilikom učitavanja projekta                                          | Otvorite karticu *CMake* i pročitajte prvu grešku. Rešite je prema uputstvima iz odeljka 7.2, a zatim izaberite **Tools -> CMake -> Reset Cache and Reload Project**.                                           |
| `No such file or directory` za shader-e ili teksture prilikom pokretanja iz CLion-a            | Pogrešno je podešen radni direktorijum. Otvorite **Run -> Edit Configurations -> project -> Working directory** i postavite ga na korenski direktorijum projekta.                                                |
| Crvene linije ispod `#include <glm/...>` ili `<GLFW/...>`, iako se projekat uspešno kompajlira | Ponovo učitajte CMake projekat, a zatim izaberite **File -> Invalidate Caches -> Invalidate and Restart**.                                                                                                      |
| CLion ne prikazuje cilj `project`                                                              | Sačekajte da CMake završi konfiguraciju ili ponovo učitajte projekat. Proverite da li ste otvorili direktorijum koji sadrži glavni `CMakeLists.txt`.                                                          |
| Kod se ne formatira automatski prilikom čuvanja                                                | Proverite da li je uključena opcija **Settings -> Tools -> Actions on Save -> Reformat code** i da li je uvezeni stil formatiranja zaista izabran.                                                               |
| Formatiranje se razlikuje od primera                                                           | Aktiviran je drugi stil formatiranja. Ponovo uvezite `clion-code-style.xml`, izaberite ga i proverite da podrška za `.clang-format` ne prepisuje podešavanja (odeljak 5.3).                                   |
| `clion-code-style.xml` nije pronađen                                                           | Datoteka se nalazi u kloniranom repozitorijumu šablona, a ne u početnom (home) direktorijumu. Koristite putanju do svoje kopije, na primer `~/rg/rg-playground/clion-code-style.xml`.                         |
| Debugger ne zaustavlja program na breakpoint-ovima                                             | Pokrenite projekat u **Debug** režimu (🐞), a ne u **Release** režimu. Optimizacije u Release verziji mogu preskočiti ili promeniti redosled izvršavanja koda.                                                |
| CLion radi sporo ili zauzima previše memorije                                                  | Izaberite **Help -> Change Memory Settings**. Isključite direktorijume `build/` i `cmake-build-*/` iz indeksiranja (desni klik na direktorijum -> **Mark Directory as -> Excluded**).                            |
| CLion ne pronalazi kompajler ili CMake                                                         | Otvorite **Settings -> Build, Execution, Deployment -> Toolchains** i proverite da li su pronađeni CMake, kompajler (`g++`) i debugger (`gdb`). Nedostajuće alate instalirajte komandom `sudo apt install gdb`. |

### 7.6. Problemi sa virtuelnom mašinom

| Problem                                                                           | Uzrok i rešenje                                                                                                                                                                         |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| VirtualBox prijavljuje *VT-x is disabled* ili ne može da pokrene virtuelnu mašinu | Uključite hardversku virtuelizaciju (VT-x / AMD-V / SVM) u BIOS/UEFI podešavanjima. Na Windows-u isključite i Hyper-V u podešavanjima *Windows Features* ako problem i dalje postoji.   |
| `matf-rg.vbox` ne može da se doda ili nedostaje datoteka virtuelnog diska         | ZIP arhiva nije potpuno raspakovana ili je preuzeta datoteka oštećena. Ponovo raspakujte arhivu i nemojte premeštati datoteke izvan raspakovanog direktorijuma.                         |
| Lozinka nije prihvaćena                                                           | Lozinka je `matfrg` (sva mala slova). Proverite i raspored tastature.                                                                                                                   |
| Grafika radi veoma sporo                                                          | Ovo je očekivano u virtuelnoj mašini. Povećajte video memoriju i uključite 3D ubrzanje u **Settings -> Display**, a virtuelnoj mašini dodelite više procesorskih jezgara i RAM memorije. |
| Veličina ekrana se ne menja automatski                                            | Instalirajte ili uključite VirtualBox Guest Additions ili izaberite **View -> Auto-resize Guest Display**.                                                                               |
| Kopiranje i nalepljivanje između glavnog sistema i virtuelne mašine ne radi       | Izaberite **Devices -> Shared Clipboard -> Bidirectional**.                                                                                                                               |

---

**I dalje imate problem?** Postavite pitanje mejlom i obavezno priložite informacije navedene na početku odeljka Rešavanje problema.


