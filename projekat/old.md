## Praktični ispit (STARA VERZIJA 2020-2023)

Praktični nosi 55 poena (35 projekat + 20 pismeni)

**Kako se boduje projekat?**  
Projekat se radi individualno.  
Projekat nosi 35 poena.  
Bodovanje lekcija:  
* **Obavezne lekcije (10 bodova)**
  * [1-7] nedelje 
  * [Blending](https://learnopengl.com/Advanced-OpenGL/Blending)  
  * [Face culling](https://learnopengl.com/Advanced-OpenGL/Face-culling)  
  * [Advanced lighting](https://learnopengl.com/Advanced-Lighting/Advanced-Lighting)  
* **Opcione lekcije**    
  * Model (5 bodova)  
  * Lekcija iz oblasti grupe A (10 bodova)  
  * Lekcija iz oblasti grupe B (10 bodova)
* Ukoliko projekat sadrži sve gore navedeno moguće je implementirati još jednu oblast iz grupe B za bonus 5 poena.

**Veoma važno: Na platformi Github mora postojati istorija komitova celog projekta. Projekat koji nema istoriju komitova neće biti pregledan.**  

Oblasti grupe A:  
-[Framebuffers](https://learnopengl.com/Advanced-OpenGL/Framebuffers)  
-[Cubemaps](https://learnopengl.com/Advanced-OpenGL/Cubemaps)  
-[Instancing](https://learnopengl.com/Advanced-OpenGL/Instancing)  
-[Anti Aliasing](https://learnopengl.com/Advanced-OpenGL/Anti-Aliasing)  

Oblasti grupe B:  
-[Point shadows](https://learnopengl.com/Advanced-Lighting/Shadows/Point-Shadows)  
-[Parallax Mapping](https://learnopengl.com/Advanced-Lighting/Parallax-Mapping)  
-[Bloom](https://learnopengl.com/Advanced-Lighting/Bloom)  
-[Deffered Shading](https://learnopengl.com/Advanced-Lighting/Deferred-Shading)  
-[SSAO](https://learnopengl.com/Advanced-Lighting/SSAO)

Bodovanje obuhvata:  
-Kvalitet koda (curenja memorije, segfault, neočekivano zaustavljanje, neočekivano ponašenje...)  
-Stil, kreativnost i skladnost scene  
-Uočljivost, izraženost i doprinos implementiranih oblasti atmosferi scene   

U projektu nije dozvoljeno korišćenje .obj modela i tekstura iz glavnog [repozitorijuma](https://github.com/matf-racunarska-grafika/LearnOpenGL).

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

<!--- > Možete koristiti [skelet projekta](https://github.com/matf-racunarska-grafika/project_base). Iskopirati sve fajlove uključujući i sakriveni .gitignore

> Ukoliko koristite nečiji kod obavezno navesti početak i kraj, i odakle je kod preuzet. 

**Kako se brani projekat?**  
Projekat se prijavljuje preko gugl forme koja će biti istaknuta na stranici kursa oko 10 dana pre datuma ispita. Prijava traje nedelju dana.  
Uz projekat se (opciono) prilaže snimak ekrana u trajanju najviše do 5 minuta na kojem se demonstrira projekat. Snimak postaviti na youtube, a link ostaviti u README datoteci repozitorijuma projekta. Za snimanje ekrana projekta preporučuje se https://obsproject.com/download.  
Projekat se ocenjuje do poslednjeg komita na grani `main` u trenutku prijave projekta. Sve izmene nakon prijave projekta  neće biti pregledane.    
