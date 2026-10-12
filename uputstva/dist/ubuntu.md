# Podešavanje sistema (Ubuntu)

Otvorite terminal (**Ctrl + Alt + T**) i pokrenite navedene komande. Izvršavajte ih jednu po jednu i pročitajte ispis nakon svakog koraka. Ako se pojavi greška, rešite je pre nego što nastavite.

# Korak 1: Ažuriranje liste paketa i instaliranih programa

```bash
sudo apt update
sudo apt upgrade -y
```

# Korak 2: Alati za razvoj i kompajliranje

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

### Korak 3: OpenGL, Mesa i dijagnostički alati

```bash
sudo apt install -y libgl1-mesa-dev libglvnd-dev mesa-common-dev mesa-utils
```

| Paket | Namena |
|---|---|
| `libgl1-mesa-dev`, `libglvnd-dev`, `mesa-common-dev` | OpenGL zaglavlja i biblioteke |
| `mesa-utils` | Alati poput `glxinfo` i `glxgears` za proveru OpenGL-a |

### Korak 4: Biblioteke za prozorski sistem (X11 i Wayland)

Biblioteci GLFW, koja se koristi za kreiranje prozora i obradu ulaza, potrebne su sledeće biblioteke za kompajliranje.

```bash
sudo apt install -y xorg-dev libwayland-dev libxkbcommon-dev wayland-protocols
```

Paket `xorg-dev` već uključuje `libx11-dev`, `libxrandr-dev`, `libxi-dev`, `libxxf86vm-dev`, `libxcursor-dev`, `libxinerama-dev` i `libxext-dev`, tako da ih nije potrebno posebno navoditi.

### Korak 5: Grafičke biblioteke i biblioteke za učitavanje resursa

```bash
sudo apt install -y libglfw3-dev libglm-dev libassimp-dev libfreetype-dev
```

| Paket | Namena |
|---|---|
| `libglfw3-dev` | GLFW: kreiranje prozora, obrada ulaza i kreiranje OpenGL konteksta (uključuje i izvršnu biblioteku, tako da `libglfw3` nije potrebno posebno instalirati) |
| `libglm-dev` | GLM: vektori, matrice, transformacije i matematičke operacije potrebne za kameru |
| `libassimp-dev` | Assimp: učitavanje različitih formata 3D modela |
| `libfreetype-dev` | FreeType: iscrtavanje fontova (koristi se u primeru za iscrtavanje teksta) |


### Korak 6: Instalacija svih paketa jednom komandom (opciono)

Ako želite da instalirate sve odjednom, umesto da prolazite kroz korake 1.2–1.5, pokrenite:

```bash
sudo apt update && sudo apt install -y \
    build-essential clang-format clang-tidy cmake git pkg-config \
    libgl1-mesa-dev libglvnd-dev mesa-common-dev mesa-utils \
    xorg-dev libwayland-dev libxkbcommon-dev wayland-protocols \
    libglfw3-dev libglm-dev libassimp-dev libfreetype-dev
```

### Korak 7: Instalacija drajvera za grafičku karticu

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

### Korak 8: Provera verzija instaliranih alata

```bash
g++ --version        # preporučuje se verzija 11 ili novija (podrška za C++20)
cmake --version      # verzija 3.16 ili novija
git --version
clang-format --version
```

### Korak 9: Provera OpenGL verzije

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
