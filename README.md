# Računarska grafika 


## Materijali iz vežbi za kurs iz Računarske grafike na Matematičkom fakultetu - Univerzitet u Beogradu

> [Obaveštenja](#obaveštenja) 

> [Bodovanje](#bodovanje) 

> [Projekat](projekat/) 

> [Materijali](#materijali) 

> [Literatura Dokumentacija Alati](#literatura)

> [Extras](#extras)


## Obaveštenja



## Nastavnici i asistenti
-nastavnik: [dr. Vesna Marinković](http://poincare.matf.bg.ac.rs/~vesnam/grafika.html)

-asistent: Marko Spasić (marko_spasic@matf.bg.ac.rs)

## Bodovanje
-Projekat (50 poena) 

-Završni teorijski ispit (50 poena)

**Da bi se ispit položio potrebno je na projektu osvojiti bar 25 poena, na završnom teorijskom ispitu osvojiti bar 20 poena i u zbiru imati bar 51 poen.**


## Materijali
[Snimci](https://www.youtube.com/playlist?list=PLD-fbfqEboxyzhQpaa_5SoNwKIOXoY5uj) 

[cpp tutorial repozitorijum](https://github.com/spaske00/cpp_tutorial)

[cpp tutorial snimci](https://www.youtube.com/playlist?list=PLD-fbfqEboxwg1LG1K8emMmPPEWGcfRcT)

[Prezentacije, dokumenti](https://drive.google.com/drive/folders/1KqTmrBcbMp_hbUfxV9fCBXvuXd6Wgcbm?usp=sharing)

[Kodovi sa časa](kodovi/)

[learnopengl repozitorijum](https://github.com/matf-racunarska-grafika/LearnOpenGL/)

[Domaci](https://matf-racunarska-grafika.github.io/domaci/)

[Uputstva](uputstva/) CLion, Github

[Skelet projekta](https://github.com/matf-racunarska-grafika/project_base) Skelet projekta sa svim uključenim bibliotekama za vežbanje primera sa časa. 
Biće dopunjavan tokom semestra.

## Konsultacije
Nakon svakog termina vežbi po rasporedu ili u dogovoru mejlom.

### 01
-[CLion](https://www.jetbrains.com/clion/): integrisano razvojno okruženje, kompajliranje, debagovanje, CMake

-C++: osnove jezika

-Git: clone, add, commit, remove, branch, checkout, push, pull, merge, rebase

-Uvod u interaktivnu računarsku grafiku

### 02
-GLFW, GLAD

-[Hello Window](https://learnopengl.com/Getting-started/Hello-Window): Skelet projekta, uključivanje biblioteka GLFW i GLAD, prozor, dorađaji

-[Hello Triangle](https://learnopengl.com/Getting-started/Hello-Triangle): Vertex shader, Fragmen shader, Vertex Buffer Object, Vertex Array Object, Element Buffer Object

### 03
-[Shaders](https://learnopengl.com/Getting-started/Shaders): GLSL, in, out, Uniforms, Shader klasa (naša prva abstrakcija)

-[Textures](https://learnopengl.com/Getting-started/Textures): teksture, mapiranje tekstura, MipMaps



### 04
-[Transformations](https://learnopengl.com/Getting-started/Transformations): vektori, matrice, operacije nad matricama, translacije, rotacije, GLM

-[Coordinate systems](https://learnopengl.com/Getting-started/Coordinate-Systems): local space, world space, view space, clip space, screen space

-[Camera](https://learnopengl.com/Getting-started/Camera): pozicija, pogled, opseg, kretanje kamere, Camera klasa (još abstrakcija)

-[Rekapitulacija](https://learnopengl.com/Getting-started/Review)

### 05
-[Colors](https://learnopengl.com/Lighting/Colors): scena sa svetlom

-[Basic lighting](https://learnopengl.com/Lighting/Basic-Lighting): ambijentalno, difuzno, spekularno 

-[Materials](https://learnopengl.com/Lighting/Materials): postavljanje materijala, svojstva svetla, različite boje svetla

-[Ligthing maps](https://learnopengl.com/Lighting/Lighting-maps): difuzne, spekularne

### 06
-[Light casters](https://learnopengl.com/Lighting/Light-casters): direkciono, tačkasto, koncentrisano

-[Multiple lights](https://learnopengl.com/Lighting/Multiple-lights): direkciono, tačkasto

-[Rekaputilacija svetlosti](https://learnopengl.com/Lighting/Review)

### 07
-[Assimp](https://learnopengl.com/Model-Loading/Assimp): instalacija i korišćenje biblioteke

-[Mesh](https://learnopengl.com/Model-Loading/Mesh): modeli i optimizacije

-[Modeli](https://learnopengl.com/Model-Loading/Model): formati i učitavanje modela

-[Blender](https://youtube.com/watch?v=4DQquG_o-Ac): kako konvertovati bilo koji model u Blenderu tako da radi sa trenutnom implementacijom učitavanja modela

### 08
-[Model and Lighting]: Model i osvetljenje (Mora biti u projektu. Ovde je demonstrirano kako se radi.)

-[ImGui](https://github.com/ocornut/imgui): GUI biblioteka

-[Text Rendering](https://learnopengl.com/In-Practice/Text-Rendering): prikazivanje teksta


### 09
-[Depth testing](https://learnopengl.com/Advanced-OpenGL/Depth-testing): Bafer dubine, funkcija testiranja dubine, preciznost vrednosti dubine, vizuelizacija bafera dubine, z-bafer, [z-value math](http://www.songho.ca/opengl/gl_projectionmatrix.html)

-[Stencil testing](https://learnopengl.com/Advanced-OpenGL/Stencil-testing): odbacivanje fragmenata, stencil funkcije, ivičenje objekata

-[Blending](https://learnopengl.com/Advanced-OpenGL/Blending): providnost, odbacivanje fragmenata, utapanje, prikaz polu-providnih tekstura

-[Face culling](https://learnopengl.com/Advanced-OpenGL/Face-culling): winding number, odsecanja

-[Framebuffers](https://learnopengl.com/Advanced-OpenGL/Framebuffers): kreiranje, renderovanje na teksturu, post-procesiranje, kernel efekti

### 10
-[Cubemaps](https://learnopengl.com/Advanced-OpenGL/Cubemaps): kreiranje, skybox, mapiranje okruženja, dinamične mape okruženja

-[Advanced Data](https://learnopengl.com/Advanced-OpenGL/Advanced-Data): vertex atributi, baferi

-[Advanced GLSL](https://learnopengl.com/Advanced-OpenGL/Advanced-GLSL): GLSL promenljive, interfejsi blokovi, uniform bafer objekti

-[Geometry Shader](https://learnopengl.com/Advanced-OpenGL/Geometry-Shader): korišćenje, eksplodirajući objekti

-[Instancing](https://learnopengl.com/Advanced-OpenGL/Instancing): primer (polje asterioda)

-[Anti Aliasing](https://learnopengl.com/Advanced-OpenGL/Anti-Aliasing): multisampling, MSAA, Off-screen MSAA

### 11
-[Advanced Lighting](https://learnopengl.com/Advanced-OpenGL/Anti-Aliasing): Blinn-Phong

-[Gamm Correction](https://learnopengl.com/Advanced-Lighting/Gamma-Correction): sRGB teksture

-[Shadow mapping](https://learnopengl.com/Advanced-Lighting/Shadows/Shadow-Mapping): mapa senki, mapa dubine, renderovanje senki, PCF

-[Point shadows](https://learnopengl.com/Advanced-Lighting/Shadows/Point-Shadows): omnidirekcione mape senki, PCF

### 12
-[Normal mapping](https://learnopengl.com/Advanced-Lighting/Normal-Mapping): mapiranje normala, tangenti prostori, kompleksni objekti, 

-[Parallax Mapping](https://learnopengl.com/Advanced-Lighting/Parallax-Mapping): paralaks mapiranje, koso paralaks mapiranje, paralaks absorbovanje

-[HDR](https://learnopengl.com/Advanced-Lighting/HDR)

-[Bloom](https://learnopengl.com/Advanced-Lighting/Bloom): ekstrakovanje blještavih boja, Gausov blur, blending

-[Deffered Shading](https://learnopengl.com/Advanced-Lighting/Deferred-Shading): G-bafer

-[SSAO](https://learnopengl.com/Advanced-Lighting/SSAO): 

### 13

### Biblioteke
`sudo apt-get install g++ cmake git build-essential libgl1-mesa-dev libsoil-dev libglm-dev libassimp-dev libglew-dev libglfw3-dev libxinerama-dev libxcursor-dev libxi-dev mesa-common-dev mesa-utils libxxf86vm-dev libfreetype6-dev`

Provera verzije OpenGL: `glxinfo | grep OpenGL`

### Literatura
-[learnopengl](https://learnopengl.com/)

-[learncpp](https://www.learncpp.com/)

-[Tour of C++ - Bjarne](https://www.stroustrup.com/Tour.html)

### Dokumentacija
-[OpenGL docs](http://docs.gl/)

-[glfw](https://www.glfw.org/)

-[glad generator](https://glad.dav1d.de/)

-[cppreference](https://en.cppreference.com/w/)

-[Git cheatsheet](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)

-[learngit](https://learngitbranching.js.org/)

### Alati
[CLion](https://www.jetbrains.com/clion/)

[CMake](https://cmake.org/)

[Github](https://github.com/)

### Extras

[John Carmack on inlined code](http://number-none.com/blow/john_carmack_on_inlined_code.html)

### Stara obaveštenja
**[06.12.2020.]**

> **Nadoknada**

> Nadoknada časova za radnu nedelju od 23.11. do 27.11. biće održana u terminima:

> Subota (12.12.2020.):  10h-13h

> Nedelja (13.12.2020.):  16h-19h

> Možete prisustvovati u bilo kojem od termina. Snimci će svakako biti okačani.

> Ako bude pitanja, možemo ostati malo duže.


**[04.12.2020.]**

**Nadoknada**

Nadoknada časova od prošle nedelje će se održati u subotu 12.12. ili nedelju 13.12.

Precizno vreme i dan biće objavljeni naknadno.

Gradivo za sledeću nedelju se nadovezuje na vežbe od ove nedelje. 

Obnovite sve što smo radili ove nedelje da bi ste mogli lakše da ispratite časove sledeće nedelje :)


**[02.12.2020]**

**Gostujuće predavanje: Syrmia 3.12. od 12:15h**


**Grafički procesor i sistemska softverska podrška za njega **

*U okviru predavanja biće opisani osnovni načini na koje je grafička
kartica spregnuta sa računarskim sistemom. Opisaće se kako sistemski
softver omogućava optimalan rad sa njom. Ukazaće se na neke od čestih
problema u radu sa grafikom i prikazati načini za njihovo rešavanje.
Uvešće se pojam virtuelizacije grafičkih kartica i diskutovati o
prednostima ove tehnologije. Razgovaraćemo o različitim programskim i
tehnološkim rešenjima, od VGA, preko modernih grafičkih procesora, sve
do centralizovane obrade grafičkih zadataka na udaljenim računarima.
Prikazaćemo strukturu sistemkog softvera za rad sa grafikom u svakom
od ovih slučajeva.*

Predavači: Nikola Veljković i Nikola Prica, senior inženjeri u kompaniji Sirmija

Link za prisustvovanje predavanju je:

Meeting link: https://matf.webex.com/matf/j.php?MTID=m0c602f153ba74371a0673ddc91d963b8

Meeting number: 137 443 6386

Password: HFw2MKw3nm3




**[26.10.2020. 17:01]**

U sredu 11.11.2020. u terminu od 08:00-11:00 zbog državnog praznika neće biti vežbi.

Mole se studenti koji slušaju vežbe u ovom terminu te nedelje da dođu u bilo koji drugi termin po želji.


**[26.10.2020. 08:00]**

Dodati su linkovi u sekciji Materijali za C++.

[cpp tutorial repozitorijum](https://github.com/spaske00/cpp_tutorial)

[cpp tutorial snimci](https://www.youtube.com/playlist?list=PLD-fbfqEboxwg1LG1K8emMmPPEWGcfRcT)

Do kraja dana će biti okačeno još snimaka. 

Knjiga [Bjarne Stroustrup - A Tour of C++-Addison-Wesley Professional (2018)] je dobar uvod u C++ i može se pročitati za
jedno popodne. Samo obratite pažnju da bude drugo izdanje.


**[23.10.2020. 17:34]**

Dodata je sekcija [kodova sa časa](kodovi/). Kada klonirate repozitorijum sa primerima klonirajte 
https://github.com/matf-racunarska-grafika/LearnOpenGL/. U njemu su dodati neki primeri kojih nema u originalnom repozitorijumu. Uskoro
će i video tutorial o kloniranju repozitorijuma sa svim primerima biti izmenjen.


**[17.10.2020. 09:18]** 

Okačeni su [snimci](https://www.youtube.com/playlist?list=PLD-fbfqEboxyzhQpaa_5SoNwKIOXoY5uj) časova prve nedelje.


**[11.10.2020. 11:46]** 

-Vežbe će se održavati online putem platforme Webex u terminu po rasporedu časova. 

-Snimci sa vežbi će biti okačeni. 

-Upustvo za pristup i korišćenje možete pročitati  
[ovde](http://alas.matf.bg.ac.rs/webexUputstvoStudenti.pdf). 

-Link za pristup vežbama će biti postavljen na ovoj stranici desetak minuta pre početka vežbi.

**[10.10.2020. 11:20]**

Na ovoj stranici će biti postavljeni linkovi za vežbe.


### Licenca
Materijali kursa su bazirani na [www.learnopengl.com](www.learnopengl.com) sajtu napravljenom od strane [Joey De Vries](https://joeydevries.com/#home) i kao takvi spadaju pod [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) licencu. Celokupan tekst licence možete pronaći [ovde](https://creativecommons.org/licenses/by/4.0/legalcode).



Examples used in this course are based on [www.learnopengl.com](www.learnopengl.com) tutorials by [Joey De Vries](https://joeydevries.com/#home) and as such are licensed under [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/). Full text of the licence can be found [here](https://creativecommons.org/licenses/by/4.0/legalcode).



<!--- <3 N --->


