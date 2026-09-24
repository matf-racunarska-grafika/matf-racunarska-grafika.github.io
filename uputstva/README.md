# Uputstva

Preporučljivo je da kurs računarske grafike pratite na operativnom sistemu koji radi direktno na računaru, bez virtuelne mašine, radi 
optimalnih performansi grafičkih akceleratora (GPU).  

Kurs je zvanično podržan na operativnom sistemu Ubuntu.  


## 1. Podešavanje okruženja

### Ubuntu

```bash
# Build / development tools
sudo apt install \
    build-essential \        # GCC/G++, make, standard build tools
    clang-format \           # C/C++ code formatting
    clang-tidy \             # C/C++ static analysis
    cmake \                  # Build system
    git \                    # Version control
    pkg-config               # Finds compiler/linker flags for libraries

# GLFW
sudo apt install \
    libglfw3-dev \            # GLFW headers + libraries: window, input, OpenGL context
    libglfw3                  # GLFW runtime library

# OpenGL / Mesa
sudo apt install \
    libgl1-mesa-dev \         # OpenGL development headers/libraries
    mesa-common-dev \         # Common Mesa/OpenGL development files
    mesa-utils                # Tools such as glxinfo/glxgears

# X11 backend / window-system dependencies
sudo apt install \
    libx11-dev \              # X11 client API
    libxrandr-dev \           # Display resolution/mode management
    libxi-dev \               # X11 input devices
    libxxf86vm-dev \          # Video mode extension
    libxcursor-dev \          # Mouse cursor support
    libxinerama-dev           # Multi-monitor/Xinerama support

# Wayland backend
sudo apt install \
    libwayland-dev \          # Wayland client development
    libxkbcommon-dev           # Keyboard handling for Wayland/X11

# X.Org development bundle
sudo apt install \
    xorg-dev                  # X.Org development dependencies

# Graphics / asset libraries
sudo apt install \
    libglm-dev \              # GLM: vectors, matrices, transforms, camera math
    libassimp-dev \           # Assimp: loading 3D model formats
    libglew-dev \             # GLEW: OpenGL extension/function loading
    libsoil-dev                # SOIL: loading images/textures

# Documentation
sudo apt install \
    doxygen \                  # Generate API documentation from C/C++ comments
    graphviz                   # Graph generation for Doxygen diagrams


```


Nakon instalacije, proveriti verziju OpenGL komandom `glxinfo | grep OpenGL`. 
Potrebno je da verzija bude >= 4.0.
Primer ispisa:  
```bash
OpenGL vendor string: NVIDIA Corporation
OpenGL renderer string: GeForce RTX 2060/PCIe/SSE2
**OpenGL core profile version string: 4.6.0 NVIDIA 460.91.03** <--- Verzija OpenGL-a 4.6.0
OpenGL core profile shading language version string: 4.60 NVIDIA
OpenGL core profile context flags: (none)
OpenGL core profile profile mask: core profile
OpenGL core profile extensions:
OpenGL version string: 4.6.0 NVIDIA 460.91.03
OpenGL shading language version string: 4.60 NVIDIA
OpenGL context flags: (none)
OpenGL profile mask: (none)
OpenGL extensions:
OpenGL ES profile version string: OpenGL ES 3.2 NVIDIA 460.91.03
OpenGL ES profile shading language version string: OpenGL ES GLSL ES 3.20
OpenGL ES profile extensions:
```

### Virtualna mašina

Ukoliko želite, kurs možete pratiti i raditi projekat i na virtuelnoj mašini. 

1. Preuzeti i instalirati [Virtual box](https://www.virtualbox.org/).  
2. Preuzeti [podešenu virtualnu mašinu](https://drive.google.com/file/d/1uqbRI_YOH7oSbX-8NQXNbtO90kHTRd2K/view?usp=drive_link) i otpakovati `zip` datoteku.  
3. Pokrenuti `Virtual box` (sa Windows-a kao administrator: desni klik -> Run as Administrator) 
4. Klikunti dugme `Add` i otvoriti odabrati `matf-rg.vbox` koja se nalazi u otpakovanoj datoteci iz koraka 2.  
5. Pokrenuti virtualnu mašinu `matf-racunarska-grafika` pritiskom na dugme `Start`  
6. Šifra: matfrg

Sve biblioteke i alati su instalirani. Nije potrebno dodatno podešavanje virtualne mašine.  

## 2. Pravljenje naloga na platformi Github  
1) https://github.com/  
2) Sign up.  
3) Unesite svoje informacije. Mejl ne mora biti sa alasa.  
4) Potvrdite nalog.  
5) Iz terminala
  - `ssh-keygen -t ed25519 -C "your_email@example.com"`
  - uneti passkey ili ostaviti prazno
  - `eval "$(ssh-agent -s)"`
  - `ssh-add ~/.ssh/id_ed25519`
  - `cat ~/.ssh/id_ed25519.pub` -> koprati
6) Otvoriti stranicu `https://github.com/settings/keys` -> `New SSH Key` -> u polje `Key` prekoprati izlaz iz komande iz prethodnog koraka `cat ~/.ssh/id_ed25519.pub`. Uneti `Title` -> `Add SSH key`.
7) U terminalu pokrenuti: ssh -T git@github.com  
8) Ukoliko je sve dobro uradjeno trebalo bi da ispise poruku: "Hi ${VasUsername}! You've successfully authenticated, but GitHub does not provide shell access."  
**Napomena**: Svuda u video snimku sa vežbi gde se koristi HTTPS link za kolniranje, zameniti sa SSH linkom. 


## 3. Preuzimanje materijala

Materijale sa vežbi možete preuzeti kloniranjem repozitorijuma [LearnOpenGL](https://github.com/matf-racunarska-grafika/LearnOpenGL)
```bash
git clone git@github.com:matf-racunarska-grafika/LearnOpenGL.git
```

## 4. Preuzimanje šablona za vežbanje
Na sledećem linku [rg-playground](https://github.com/matf-racunarska-grafika/rg-playground) minimalni potrebni skelet koji uključuje sve potrebne biblioteke za vežbanje zadataka sa časa.  
U ovom projektu možete samostalno vežbati zadatke sa časa.  
Skelet za izradu samog projekta nalazi se na linku [rg-project-template](https://github.com/matf-racunarska-grafika/rg-project-template)











