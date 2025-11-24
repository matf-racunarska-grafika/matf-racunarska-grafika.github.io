# Uputstva

## Virtualna mašina

Ukoliko želite, kurs možete pratiti i raditi projekat i na virtuelnoj mašini. 

1. Preuzeti i instalirati [Virtual box](https://www.virtualbox.org/).  
2. Preuzeti [podešenu virtualnu mašinu](https://drive.google.com/file/d/1uqbRI_YOH7oSbX-8NQXNbtO90kHTRd2K/view?usp=drive_link) i otpakovati `zip` datoteku.  
3. Pokrenuti `Virtual box` (sa Windows-a kao administrator: desni klik -> Run as Administrator) 
4. Klikunti dugme `Add` i otvoriti odabrati `matf-rg.vbox` koja se nalazi u otpakovanoj datoteci iz koraka 2.  
5. Pokrenuti virtualnu mašinu `matf-racunarska-grafika` pritiskom na dugme `Start`  
6. Šifra: matfrg

Sve biblioteke i alati su instalirani. Nije potrebno dodatno podešavanje virtualne mašine.  

## RG-Playground
Na sledećem linku [rg-playground](https://github.com/matf-racunarska-grafika/rg-playground) nalazi se minimalni skelet projekta, koji uključuje sve potrebne biblioteke, za vežbanje zadataka sa časa.  


## Postupna instalacija

## Biblioteke
`sudo apt install pkg-config clang-format clang-tidy cmake git build-essential libglfw3 libglfw3-dev libx11-dev libxrandr-dev libxi-dev libxxf86vm-dev libxcursor-dev libwayland-dev libxkbcommon-dev xorg-dev libgl1-mesa-dev mesa-common-dev mesa-utils doxygen graphviz libsoil-dev libglm-dev libassimp-dev libglew-dev libglfw3-dev libxinerama-dev libxcursor-dev  libxi-dev
`

Provera verzije OpenGL: `glxinfo | grep OpenGL`  
```
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

## Github  
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
Napomena: Svuda gde se u snimku koristi HTTPS link za kolniranje, zameniti sa SSH linkom. 

### JetBrains CLion student licence

1. Preko linka https://www.jetbrains.com/shop/eform/students uneti sve podatke
i školski mejl i kliknuti na `Applay for free products`
2. Na školski emejl će stići email od JetBrains-a u kojem se nalazi link za
potvrdu.
3. Klikom na taj link prikazaće se stranica sa tekstom: 
"Keep it going! You're just one step away from using JetBrains Educational Pack
for free." i dugmetom 'Get started to use'
4. Klikom na 'Get started to use' pretraživač vodi do stranice za kreiranje naloga
i logovanje.
5. Kreirati novi nalog sa školskom mejl adresom. Ukoliko već imate nalog sa
školskom mejl adresom samo se ulogujete.
6. Nakon toga će stići još jedan mejl u kojem se nalazi link sa tekstom: "Link your free licence". 
Klikom na taj link je proces dobijanja licence završen.

### CLion
CLion je integrisano razvojno okruženje namenjeno za programske jezike C i C++.

Bazirano je na IntelliJ okruženju koje se koristi na predmetu OOP.

### Postupna instalacija

1) Skinuti CLion sa stranice https://www.jetbrains.com/clion/download/#section=linux  
2) Preuzeti fajl CLion-{ReleaseVersion}.tar.gz otpakovati u željeni folder  
3) cd clion-{ReleaseVersion}/bin/  
4) sudo ./clion.sh  
5) Continue -> Send/Don't send statistics -> Odabrati Activate Clion i JB Account -> Log In to JetBrains Account...  
6) Ako se u pretraživaču automatski ne otvori link kliknuti *Troubles?* -> copy the link -> otvoriti u pretraživaču ručno  
7) Ako već nije urađeno, ispratiti korake u upustvu (JetBrains CLion student licence)  
8) Nakon logovanja prekopirati dobijeni token iz pretraživača u okruženje CLion -> kliknuti *Check Token*  
9) Kliknuti Activate  
10) Continue  
11) Open -> Pronaći LearnOpenGL direktorijum na sistemu  
12) Kreirati prečicu na sistemu preko *Tools -> Create Desktop Entry...*

Na alas mejl adresu će stići mejl za potvrdu. Nakon potvrde naloge dobija se studentska
licenca.

## Drajveri  
Nakon pokretanja skripte za insaltaciju proveriti da li je verzija OpenGL driajver >= 3.3.  
Ukoliko nije pokrenuti: `sudo apt-get update && apt-get upgrade`  
Probati reinstalaciju: `sudo apt-get remove libgl1-mesa-devmesa-common-dev mesa-utils && apt-get install libgl1-mesa-devmesa-common-dev mesa-utils`  
Neke distribucije Linux operativnog sistema nemaju podršku novijih verzija OpenGL na nekim integrisanim ili starim grafičkim karticama.  
Na primer Mint distribucija nema podršku neke grafičke kartice. Preporučuje se korišćenje novije Ubuntu 20.04+ distribucije.  




