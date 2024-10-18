# Uputstva

## Virtualna mašina

Ukoliko želite, kurs možete pratiti i raditi projekat i na virtuelnoj mašini. 

1. Preuzeti i instalirati [Virtual box](https://www.virtualbox.org/).  
2. Preuzeti [podešenu virtualnu mašinu](https://drive.google.com/file/d/1ejqbQNY-rAuQOMw9d6nubZovhW0JWEDy/view?usp=drive_link) i otpakovati `zip` datoteku.  
3. Pokrenuti `Virtual box` (sa Windows-a kao administrator: desni klik -> Run as Administrator) 
4. Klikunti dugme `Add` i otvoriti odabrati `matf-rg.vbox` koja se nalazi u otpakovanoj datoteci iz koraka 2.  
5. Pokrenuti virtualnu mašinu `matf-racunarska-grafika` pritiskom na dugme `Start`  
6. Šifra: matfrg

Sve biblioteke i alati su instalirani. Nije potrebno dodatno podešavanje virtualne mašine.  


## Postupna instalacija

## Biblioteke
`sudo apt-get install g++ cmake git build-essential libgl1-mesa-dev libsoil-dev libglm-dev libassimp-dev libglew-dev libglfw3-dev libxinerama-dev libxcursor-dev libxi-dev mesa-common-dev mesa-utils libxxf86vm-dev libfreetype6-dev`

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
5) [SSH key i kloniranje repozitorijuma](https://www.youtube.com/watch?v=Z3ELWci34cM) [Github dokumentacija](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
6) [Kreiranje SSH kljuca](https://www.youtube.com/watch?v=WgZIv5HI44o)  
7) U terminalu pokrenuti: ssh -T git@github.com  
8) Ukoliko je sve dobro uradjeno trebalo bi da ispise poruku: "Hi ${VasUsername}! You've successfully authenticated, but GitHub does not provide shell access."  
Napomena: Svuda gde se u snimku koristi HTTPS link za kolniranje, zameniti sa SSH linkom. 
9) Klonirati repozitorijum sa primerima: `git clone git@github.com:matf-racunarska-grafika/LearnOpenGL.git`

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

### Ubuntu 16.04+
Pre instalacija obavezno poreknuti komande u terminalu:

`sudo apt-get install g++ cmake git build-essential`

### Postupna instalacija

1) Skinuti CLion sa stranice https://www.jetbrains.com/clion/download/#section=linux  
2) Preuzeti fajl CLion-NekiDatumStojiOvde.tar.gz otpakovati u željeni folder  
3) cd clion-2020.2.4/bin/  
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
Na primer Mint distribucija nema podršku neke grafičke kartice. Preporučuje se korišćenje novije Ubuntu 18.04+ distribucije.  

## Šta radi FileSystem::getPath?

U [repozitorijumu](https://github.com/matf-racunarska-grafika/LearnOpenGL/) radni direktorijum svakog programa je bin/*redni_broj_poglavlja*/.

Na primer, kada pokrenemo 1.1.getting_started/3.3.shaders_class, radni direktorijum iz kojeg se startuje program je
bin/1.1.getting_started relativno od korenog direkotrijuma projekta.

U primerima u repozitrijumu se fajl koji sadrži izvorni kod nekog šejdera nalazi u istom direktorijumu kao 
i izvorni kod tog primera. Tako se šejderi za 1.1.getting_started/3.3.shaders_class nalaze u direktorijumu
src/1.1.getting_started/3.3.shaders_class. Kada se bilduje ceo projekat šejderi se iskopiraju
u bin/*redni_broj_poglavlja*. Zbog toga u repozitorijumu kada se koristi šejder klasa kao na [primer](https://github.com/matf-racunarska-grafika/LearnOpenGL/blob/master/src/1.getting_started/3.3.shaders_class/shaders_class.cpp) na liniji 50 navodi se samo ime šejdera.

Kada smo kucali na času, u project_base šederi si nalaze na putanji resources/shaders/, a radni direktorijum projekta pri pokretanju je
koreni direktorijum projekta. Zato smo navodili resources/shaders/vertexShader.vs na primer.

U [repozitorijumu](https://github.com/matf-racunarska-grafika/LearnOpenGL/)  svim primerima susrešće te se sa funkcijom
FileSystem::getPath kao na [primer](https://github.com/matf-racunarska-grafika/LearnOpenGL/blob/master/src/1.getting_started/4.1.textures/textures.cpp) na
liniji 105.

To je opet zato što u tom repozirtorijumu radni direktorijum programa kada se pokrene je bin/*redni_broj_poglavlja* relativno od korenog direktorijuma
celog projekta, a teksture se nalaze u resources/textures. Sve što uradi FileSystem::getPath("resources/textures/container.jpg") je da pretvori
u "../../resources/textures/container.jpg".


Kada radimo sa project_base ne koristimo FileSystem::getPath jer je radni direktorijum programa postavljen da bude koreni direktorijum programa.
Implementacija FileSystem::getPath je za project_base izmenjena tako da odgovara toj razlici. Copy-paste primeri bi trebalo da rade bez problema,
samo treba osigurati da su šejderi u resources/shaders/ i da svaki put kada učitavamo šejder navedemo punu putanju
resources/shaders/vertexShader.vs.

Ili se šejderi mogu staviti u koreni direktorijum projekta.





