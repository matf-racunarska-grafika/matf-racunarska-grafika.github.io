# 1. Podešavanje sistema (Fedora)

Otvorite terminal i pokrenite komande jednu po jednu. Pročitajte ispis posle svakog koraka. Ako se pojavi greška, rešite je pre nego što nastavite.

Ovo uputstvo koristi `dnf` (DNF 4 ili DNF 5). Komande su iste u obe verzije.


## Korak 1.1: Ažuriranje sistema

```bash
sudo dnf upgrade --refresh -y
```

Ako se ažurira kernel, ponovo pokrenite računar: `sudo reboot`.

## Korak 1.2: Alati za razvoj i kompajliranje

```bash
sudo dnf install -y gcc gcc-c++ make cmake git pkgconf-pkg-config clang-tools-extra
```

| Paket | Namena |
|---|---|
| `gcc`, `gcc-c++`, `make` | GCC/G++ kompajler i make. Zamena za `build-essential`. Fedora nema jedan paket sa tim imenom. |
| `clang-tools-extra` | Sadrži `clang-format` i `clang-tidy` |
| `cmake` | Sistem za prevođenje koji koriste svi repozitorijumi sa kursa |
| `git` | Sistem za kontrolu verzija |
| `pkgconf-pkg-config` | Omogućava CMake-u da pronađe opcije kompajlera i linkera za biblioteke. Zamena za `pkg-config`. |

Opciono, instalirajte celu grupu alata za razvoj. Komanda zavisi od verzije DNF-a:

```bash
sudo dnf group install -y development-tools    # DNF 5 (Fedora 41 i novije)
sudo dnf groupinstall -y "Development Tools"   # DNF 4 (Fedora 40 i starije)
```

## Korak 1.3: OpenGL, Mesa i dijagnostički alati

```bash
sudo dnf install -y mesa-libGL-devel mesa-libGLU-devel libglvnd-devel mesa-demos
```

| Paket | Namena |
|---|---|
| `mesa-libGL-devel`, `libglvnd-devel` | OpenGL zaglavlja i biblioteke |
| `mesa-libGLU-devel` | GLU zaglavlja (opciono, neki primeri ih koriste) |
| `mesa-demos` | Alati `glxinfo` i `glxgears` za proveru OpenGL-a |

## Korak 1.4: Biblioteke za sistem prozora (X11 i Wayland)

GLFW-u su za kompajliranje potrebne sledeće biblioteke.

```bash
sudo dnf install -y libX11-devel libXrandr-devel libXinerama-devel libXcursor-devel \
    libXi-devel libXext-devel libXxf86vm-devel \
    wayland-devel libxkbcommon-devel wayland-protocols-devel
```

Fedora nema metapaket `xorg-dev`. Zato ovde navedite svaki X11 paket posebno.

## Korak 1.5: Grafičke biblioteke i biblioteke za učitavanje resursa

```bash
sudo dnf install -y glfw-devel glm-devel assimp-devel freetype-devel
```

| Paket | Namena |
|---|---|
| `glfw-devel` | GLFW: kreiranje prozora, obrada ulaza i kreiranje OpenGL konteksta. Izvršna biblioteka `glfw` se instalira automatski kao zavisnost. |
| `glm-devel` | GLM: vektori, matrice, transformacije i matematičke operacije potrebne za kameru |
| `assimp-devel` | Assimp: učitavanje različitih formata 3D modela |
| `freetype-devel` | FreeType: iscrtavanje fontova (koristi se u primeru za iscrtavanje teksta) |

## Korak 1.6: Instalacija svih paketa jednom komandom (opciono)

Ovom komandom preskačete korake 1.2–1.5:

```bash
sudo dnf upgrade --refresh -y && sudo dnf install -y \
    gcc gcc-c++ make cmake git pkgconf-pkg-config clang-tools-extra \
    mesa-libGL-devel mesa-libGLU-devel libglvnd-devel mesa-demos \
    libX11-devel libXrandr-devel libXinerama-devel libXcursor-devel \
    libXi-devel libXext-devel libXxf86vm-devel \
    wayland-devel libxkbcommon-devel wayland-protocols-devel \
    glfw-devel glm-devel assimp-devel freetype-devel
```

## Korak 1.7: Instalacija drajvera za grafičku karticu

Performanse OpenGL-a zavise od drajvera grafičke kartice.

**Intel / AMD:** Drajver otvorenog koda Mesa dolazi uz Fedoru. Nije potrebna dodatna instalacija.

**NVIDIA:** Fedora nema NVIDIA drajvere u podrazumevanim repozitorijumima. Koristite repozitorijum RPM Fusion.

1. Uključite RPM Fusion (free i nonfree):

   ```bash
   sudo dnf install -y \
     https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
     https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
   ```

2. Instalirajte drajver:

   ```bash
   sudo dnf install -y akmod-nvidia
   ```

3. Sačekajte oko 5 minuta. Paket `akmod-nvidia` gradi kernel modul u pozadini.
4. Proverite da je modul spreman. Komanda treba da ispiše broj verzije:

   ```bash
   modinfo -F version nvidia
   ```

5. Ponovo pokrenite računar:

   ```bash
   sudo reboot
   ```

Fedora ne nudi alat `ubuntu-drivers`. Paket `akmod-nvidia` uvek instalira najnoviji stabilan drajver. Za stare kartice pogledajte dokumentaciju RPM Fusion-a (`akmod-nvidia-470xx`, `akmod-nvidia-390xx`).

**Secure Boot:** Ako je Secure Boot uključen, potpišite modul pre ponovnog pokretanja računara:

```bash
sudo dnf install -y kmodtool akmods mokutil openssl
sudo kmodgenca -a
sudo mokutil --import /etc/pki/akmods/certs/public_key.der
```

Komanda `mokutil` traži lozinku. Zapamtite je. Nakon ponovnog pokretanja pojaviće se plavi ekran za upravljanje MOK ključevima. Izaberite **Enroll MOK**, a zatim unesite lozinku. U suprotnom, drajver se neće učitati.

**Laptop sa dve grafičke kartice (Intel + NVIDIA):** Ako se programi pokreću na pogrešnoj grafičkoj kartici, pogledajte odeljak Rešavanje problema. Program na NVIDIA kartici pokrenite ovako:

```bash
__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia ./program
```

## Korak 1.8: Provera instalacije

```bash
glxinfo | grep "OpenGL renderer"
cmake --version
pkg-config --modversion glfw3 assimp freetype2
```

Prva komanda ispisuje naziv grafičke kartice. Ako ispiše `llvmpipe`, OpenGL koristi softversko iscrtavanje, što znači da drajver nije ispravno učitan.
