## Praktični ispit

Praktični nosi 55 poena (35 projekat + 20 pismeni)

**Kako se boduje projekat?**  
Projekat se može raditi u paru ili individualno.  
Projekat nosi 35 poena.  
Neophodno je da projekat sadrži sve teme od 1. nedelje zaključno sa 8. nedeljom, [Blending](https://learnopengl.com/Advanced-OpenGL/Blending), [Face culling](https://learnopengl.com/Advanced-OpenGL/Face-culling), [Advanced lighting](https://learnopengl.com/Advanced-Lighting/Advanced-Lighting). Ako sadrži to i samo to maksimalan broj bodova koje je moguće osvojiti je 15.  

Svo osvetljenje na sceni treba da se računa po Blin-Fonogovom modelu [Advanced lighting](https://learnopengl.com/Advanced-Lighting/Advanced-Lighting).  
Dovoljno je da projekat ima jedan tip [Blendinga](https://learnopengl.com/Advanced-OpenGL/Blending)(Discard ili blend).  

Za više bodova, ukoliko se projekat radi individualno bira se po jedna oblast iz grupe A i jedna oblast iz grupe B. Ukoliko se projekat radi u paru svaki član bira po jednu oblast iz grupe A i jednu oblast iz grupe B. Ukupno dve različite oblasti iz grupe A i dve različite oblasti iz grupe B za projekat.

Ukoliko projekat sadrži sve neophodne oblasti i oblast (dve oblasti ukoliko se radi u paru) iz grupe A maksimalan broj bodova koje je moguće osvojiti je 25.    
Ukoliko projekat sadrži sve neophodne oblasti, oblast iz grupe A (dve ukoliko se radi u paru) i oblast iz grupe B (dve ukoliko se radi u paru) maksimalan broj bodova koje je moguće osvojiti je 35.  

Ukoliko projekat sadrži sve gore navedeno moguće je implementirati još jednu oblast iz grupe B za bonus 5 poena.

**Veoma važno: Na platformi Github mora postojati istorija komitova celog projekta. Projekat koji nema istoriju komitova neće biti pregledan.**  

Oblasti grupe A:  
-[Framebuffers](https://learnopengl.com/Advanced-OpenGL/Framebuffers)  
-[Cubemaps](https://learnopengl.com/Advanced-OpenGL/Cubemaps)  
-[Instancing](https://learnopengl.com/Advanced-OpenGL/Instancing)  
-[Anti Aliasing](https://learnopengl.com/Advanced-OpenGL/Anti-Aliasing)  

Oblasti grupe B:  
-[Point shadows](https://learnopengl.com/Advanced-Lighting/Shadows/Point-Shadows)  
-[Normal mapping](https://learnopengl.com/Advanced-Lighting/Normal-Mapping), [Parallax Mapping](https://learnopengl.com/Advanced-Lighting/Parallax-Mapping)  
-[HDR](https://learnopengl.com/Advanced-Lighting/HDR), [Bloom](https://learnopengl.com/Advanced-Lighting/Bloom)  
-[Deffered Shading](https://learnopengl.com/Advanced-Lighting/Deferred-Shading)  
-[SSAO](https://learnopengl.com/Advanced-Lighting/SSAO)

Bodovanje obuhvata:  
-Kvalitet koda (curenja memorije, segfault, neočekivano zaustavljanje, neočekivano ponašenje...)  
-Stil, kreativnost i skladnost scene  
-Uočljivost, izraženost i doprinos implementiranih oblasti atmosferi scene   

U projektu nije dozvoljeno korišćenje .obj modela iz glavnog [repozitorijuma](https://github.com/matf-racunarska-grafika/LearnOpenGL).

**Kako se boduje i polaže pismeni deo?**  
Pismeni deo nosi 20 bodova i polaže se na papiru u terminu ispita po rasporedu sa sajta fakulteta.   
Sastoji se od pitanja iz oblasti od 1-8 nedelje, [Depth testing](https://learnopengl.com/Advanced-OpenGL/Depth-testing), [Face culling](https://learnopengl.com/Advanced-OpenGL/Face-culling), [Advanced Lighting](https://learnopengl.com/Advanced-OpenGL/Anti-Aliasing), [Blending](https://learnopengl.com/Advanced-OpenGL/Blending).  Uspešno urađen i odbranjen projekat je uslov za izlazak na pismeni i teorijski deo ispita.

**Šta mora da sadrži Github repozitorijum?**  
Celokupan izvorni kod projekta zajedno sa potrebnim resurisma (modeli, teksture...). Ukoliko je veličina datoteke u kojoj se nalaze objekti ili teksture prevelika za git, isti se mogu postaviti na google-drive kao zip fajl. U tom slučaju neophodno je u README.md ostaviti link ka tom zip fajlu.

README.md datoteka treba da sadrži upustvo za korišćenje projekta u vidu dugmića tastature i efekta koji proizvode. Ukoliko se u projektu nalazi gradivo iz grupe A i grupe B, onda treba da sadrži i nazive oblasti koje su implementirane.

Deo koda koji preuzet iz nekog izvora mora biti jasno naznačen početkom i krajom i linkom do orignalnog koda.  
Sav kod iz project_base i LearnOpenGL repozitorijuma se može koristiti bez navođenja.  

**Kada počinje prijava projekata?**  
Prijava projekata će biti otvorena dve nedelje pre svakog teorijskog završnog ispita i zatvara se nedelju dana pre termina završnog teorijskog ispita. Prijavu popunjavate za onaj rok u kome želite da branite projekat. Nije potrebno unapred prijavljivati temu.

**Da li negde možemo videti primere projekata prethodnih godina?**
Primere odličnih projekata iz prethodnih godina možete pronaći na: [https://github.com/matf-racunarska-grafika-galerija](https://github.com/matf-racunarska-grafika-galerija)

**Da li sve u projektu mora da bude urađeno od početka ili postoji neki šablon za projekat?**

> Možete koristiti [skelet projekta](https://github.com/matf-racunarska-grafika/project_base). Iskopirati sve fajlove uključujući i sakriveni .gitignore

> Ukoliko koristite nečiji kod obavezno navesti početak i kraj, i odakle je kod preuzet. 

**Kako se brani projekat?**  
Projekat se prijavljuje preko gugl forme koja će biti istaknuta na stranici kursa nedelju dana pre datuma ispita. Prijava traje nedelju dana.  
Uz projekat se prilaže snimak ekrana u trajanju najviše do 5 minuta na kojem se demonstrira projekat. Snimak postaviti na youtube, a link ostaviti u README datoteci repozitorijuma projekta. Za snimanje ekrana projekta preporučuje se https://obsproject.com/download.  
Projekat se ocenjuje do poslednjeg komita na main grani u trenutku prijave projekta. Sve izmene nakon prijave projekta ce nece pregledati.  
Projekti će biti pregledani u toku trajanje prijave.  
