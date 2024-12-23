
# Projekat

Projekat je predispitna obaveza koja nosi ukupno (35 + 10) bodova. Projekat se smatra položenim ako je ocenjen sa barem 10 bodova.
Uspešno urađen i položen projekat je **uslov za izlazak na pismeni i teorijski** deo ispita.  
Projekat se radi individualno.   


**Nesamostalan rad na projektu, plagiranje, kao i direktno preuzimanje delova koda iz drugih studentskih projekata smatra se kršenjem pravila polaganja ispita prema pravilniku fakulteta i povlači automatsko pokretanje disciplinskog postupka i zabranu polaganja ispita Računarske grafike u trenutnoj školskoj godini.**


Molimo Vas, **detaljno** pročitajte i ispratite uputstva u daljem tekstu.  
**Projekti koji odstupaju od šablona datog u uputstvu neće biti pregledani.**  
Ukoliko budete imali poteškoća u bilo kom koraku slobodno se javite mejlom.

Sav koda iz repozitorijuma sa primerima sa časa možete slobodno koristiti u projektu bez ikakvih restrikcija i navođenja.

## Kako da započnem projekat?
1. Napraviti nalog na platformi [Github](https://github.com) i dodajte SSH ključ ([Uputstva -> Github](https://matf-racunarska-grafika.github.io/uputstva/))
2. Forkovati [skelet projekta](https://github.com/matf-racunarska-grafika/matf-rg-project-2024) (Dugme `Fork` na stranici)
3. Na forkovanom projektu promeniti naziv u podešavanjima (`Settings` -> `Repository name`)
4. Klonirati projekat na svoj računar: `git clone --recursive git@github.com:{USER_NAME}/{REPOSITORY_NAME}.git` (zeleno dugme `Clone` na stranici **forkovanog** projekta)
5. `cd {REPOSITORY_NAME}`
6. Pokrenuti `./setup.sh` za instalaciju potrebnih biblioteka
7. Pokrenuti `doxygen Doxyfile` za generisanje dokumentacije
8. Napraviti granu sa vašim brojem indeksa: `git checkout -b {miXXXXX}`.
9. Pokrenuti CLion i otvoriti projekat: `File` -> `Open` -> `path/to/{REPOSITORY_NAME}`

Praviti male, logične promene u kodu i redovno komitovati sa porukama koje sažeto opisuju dodatu promenu. Izbegavati dodavanje *velike* količine koda od jednom. 

Dokumentaciji se može pristupiti lokalno otvaranjem: `path/to/{REPOSITORY_NAME}/engine/docs/html/index.html` u veb pretraživaču ili preko stranice kursa [https://matf-racunarska-grafika.github.io/matf-rg-project-2024/](https://matf-racunarska-grafika.github.io/matf-rg-project-2024/).

## CLion podešavanja
1. Učitati stil formatiranja koda: `Settings` -> `Editor` -> `Code Style` -> `Schema (Wheel icon)` -> `Import scheema` -> `path/to/{REPOSITORY_NAME}/clion-code-style.xml`
2. Uključiti automatsko formatiranje koda: `Settings` -> `Tools` -> `Actions on Save` -> `Reformat code`
3. [Opciono] Instalirati dodatak GLSL za bojenje sintakse: `Settings` -> `Plugins` -> `Marketplace` -> search `GLSL` -> `Install`.
4. [Opciono] Instalirati dodatak GitToolBox za bolju git integraciju: `Settings` -> `Plugins` -> `Marketplace` -> search `GitToolBox` -> `Install`.


## Bodovanje

[Obavezno] Osnova (15 bodova)
- Model osvetljen sa barem dva tipa svetlosti (`Directional|Point|Spot`)
- Osvetljenje koje može da se podešava preko grafičkog korisničkog interfejsa ili tastature/miša
- Implementiran niz događaja: `{ACTION_X} --- AFTER_M_SECONDS---Triggers---> {EVENT_A} ---> AFTER_N_SECONDS---Triggers---> {EVENT_B}`
    - ACTION - pritisak dugmenta, pomeranje na neku lokaciju na sceni, određen trenutak u vremenu...
    - AFTER_X_SECONDS - nakon što protekne X sekundi od registrovane akcije
    - EVENT - nešto se pomeri na sceni, boja svetla se promeni, neki objekat nestane, neki objekat se pojavi...
- Popunjen `PROJECT-DESCRIPTION-TEMPLATE.md`

[Opciono] Jedna lekcija iz grupe A (10 bodova):
- [Frame-buffers with post-processing](https://learnopengl.com/Advanced-OpenGL/Framebuffers)  
- [Instancing](https://learnopengl.com/Advanced-OpenGL/Instancing)  
- [Off-screen Anti-Aliasing](https://learnopengl.com/Advanced-OpenGL/Anti-Aliasing)  
- [Parallax Mapping](https://learnopengl.com/Advanced-Lighting/Parallax-Mapping) 

[Opciono] Jedna lekcija iz grupe B (10 bodova): 
- [Bloom](https://learnopengl.com/Advanced-Lighting/Bloom)
- [Deferred Shading](https://learnopengl.com/Advanced-Lighting/Deferred-Shading)  
- [Point Shadows](https://learnopengl.com/Advanced-Lighting/Shadows/Point-Shadows)  
- [SSAO](https://learnopengl.com/Advanced-Lighting/SSAO)

Obratiti pažnju na svrhu i primenu lekcija iz grupe A i grupe B. Implementirane lekcije koje se na sceni ne primećuju neće biti bodovane. Primer:
- Bloom efekat bez tačkastog izvora svetlosti predstavljenog nekim objektom iz kojeg se svetlo `preliva`
- Instanciranje sa malim brojem objekata
- Parallax Mapping bez teksture sa dubinom i normalama
- Deffered Shading sa malim brojem izvora svetlosti
- ...

[Bonus] Dodatna `engine` funkcionalnost i lekcija (10 bodova)
- Ako je projekat ocenjen sa maksimalnih 35 bodova, možete se javiti mejlom za dodatnu oblast za bonus 10 bodova.
- Dodatna oblast i `engine` funkcionalnost bira se u dogovoru sa studentom i u skladu sa temom projekta.
- Svaki student koji se prijavi za bonus će dobiti jedinstvenu `engine` funkcionalnost za trenutnu školsku godinu.
- Rok za završetak bonus oblasti je 30 dana od trenutka dobijanja opisa.
- Konsultacije tokom izrade bonus oblasti biće držane jednom nedeljno u dogovorenom terminu.

U projektu se takođe boduje:
- Stil, kreativnost i skladnost scene. 
- Uočljivost, izraženost i doprinos implementiranih oblasti atmosferi scene. 
- Kvalitet koda
    - Konzistentno formatiranje prema `clion-code-style.xml` (pogledati `engine` i `test::app` kod za primere)
    - Modularnost i logična podeljenost koda na `app/engine` delove (pogledati `skybox` primer u `engine/test/app`)
    - Čitljiva i razumljiva imena klasa, funkcija, promenljivih
    - Minimizovana semantička duplikacija koda  


[Primeri scena i bodova](primeri/EXAMPLES.md)
 

**Projekat neće biti pregledan ako:**
- Ne postoji istorija pojedinačnih komitova projekta (na primer ceo projekat postavljen jednim komitom)
- Scena sadrži modele i teksture iz repozitorijuma sa primerima sa časa
- Projekat nije napravljen kao fork skeleta projekta iz uputstva
- Projekat se ne kompilira, ne pokreće, iznenadno se zaustavlja (segfault, exception...)
- Nema popunjen `PROJECT-DESCRIPTION-TEMPLATE.md`
- Kod nije formatiran prema stilu datom u `clion-code-style.xml`


Ako projekat sadrži samo obavezne oblasti, može osvojiti potencijalno 15 bodova u skladu sa uslovima bodovanja.  
Ako projekat sadrži obavezne oblasti i jednu lekciju iz grupe A, može osvojiti potencijalno 25 bodova u skladu sa uslovima bodovanja.  
Ako projekat sadrži obavezne oblasti, jednu lekciju iz grupe A i jednu lekciju iz grupe B, može osvojiti potencijalno 35 bodova u skladu sa uslovima bodovanja.  
Ako projekat sadrži sve prethodno navedeno, uz implementaciju bonus oblasti može osvojiti potencijalno 45 bodova.


## [Issue] Imam problem/poteškoću na projektu koju ne mogu da rešim?  
- Barem 1-2 sata probajte sami da rešite problem
- Probajte da vratite projekat u poslednje stanje u kojem je sve radilo pa inkrementalno dodajte promene jednu po jednu, testirajući dodati kod: `git stash` zatim `git checkout .`. `git stash` će sačuvati sve trenutne promene, možete ih vratiti sa `git stash pop`.

Ako ništa od toga ne uspe:
1. Postavite Vašu granu na Github: `git checkout {miXXXXX} && git push -u origin HEAD`
2. Na stranici Vašeg repozitorijuma napraviti novi issue: `https://github.com:{USER_NAME}/{REPOSITORY_NAME}/issues`
3. Opisati problem i barem 3 pokušana pristupa za rešavanje problema (izlaz iz terminala ukoliko je u pitanju neka greška)
4. U opisu problema tagovati korisničko ime: `@spaske00`.
5. Poslati mejl sa naslovom: `[RG][Issue]` i u sadržaju ostaviti **samo** link do napravljenog `issue` na GitHub-u.  


```
To: {asistent} _At__ @math.rs
Subject: [RG][Issue]
Content:

https://github.com/{USER_NAME}/{REPOSITORY_NAME}/issues/{Issue-NUM}

```

## [Review] Projekat je završen, želim da znam koliko bi bodova osvojio i kako ga mogu unaprediti?

U bilo kom trenutku tokom školske (osim u toku trajanja prijave projekta) godine možete poslati trenutno stanje projekta radi dobijanja procene koliko bi projekat osvojio bodova i kako ga unaprediti: 
1. U podešavanjima sa GitHub stranice projekta dodati korisničko ime: `@spaske00` u `Contributors`:  : `Settings` -> `Collaborators and teams` -> `Add people` type `@spaske00`. Za `role` staviti `write`. 
2. Komitovati promene i postaviti granu na GitHub: `git push -u origin {miXXXXX}`
3. Napravite Pull Request sa stranice Vašeg projekta: `Pull Requests` -> `New pull request` -> `base` ostaviti `main`, za `compare` odabrati `{miXXXXX}` -> `Create pull request`
4. U opisu ostaviti pitanja
5. Sidebar desno `Reviewers` -> `wheel icon` -> `add @spaske00`.
6. Poslati mejl sa naslovom: `[RG][Review]` i u sadržaju ostaviti **samo** link do pull requesta: `https://github.com/{USER_NAME}/{REPOSITORY_NAME}/compare/main...{miXXXXX}`.  


```
To: {asistent} _At__ @math.rs
Subject: [RG][Review]
Content:

https://github.com/{USER_NAME}/{REPOSITORY_NAME}/compare/main...{miXXXXX}

```

## Prijava i ocenjivanje projekata

Tri nedelje pred svaki ispitni rok na stranici kursa biće okačena forma za prijavu završenih projekata za taj rok. Formular će biti otvoren nedelju dana. Nakon zatvaranja formulara nije moguća naknadna prijava projekata. Projekat je potrebno završiti i prijaviti dve nedelje pre samog datuma ispita. Projekat se pregleda u stanju u trenutku prijave, svako naknadno menjanje projekta nakon prijave se ne pregleda.
Koraci za prijavu projekta:
1. U podešavanjima dodati korisničko ime: `@spaske00` u `Contributors`:  sa stranice Vašeg projekta: `Settings` -> `Collaborators and teams` -> `Add people` type `@spaske00`. Za `role` staviti `write`. 
2. Postaviti granu na Github: `git push -u origin {miXXXXX}`
3. Napraviti Pull Request sa stranice projekta: `Pull Requests` -> `New pull request` -> `base` ostaviti `main`, za `compare` odabrati `{miXXXXX}` -> `Create pull request`
4. U opisu ostaviti pitanja
5. Sidebar desno `Reviewers` -> `wheel icon` -> `add @spaske00`.
6. Prijaviti projekat popunjavanjem formulara sa stranice kursa. 

Projekat će biti pregledan i bodovi objavljeni na stranici kursa.  
[Opciono] Student može biti pozvan na usmenu odbranu projekta. Usmena odbrana projekta se sastoji od:  
- Opštih pitanja iz lekcija sa vežbi
- Opštih pitanja samo iz implementiranih lekcija iz grupe A i grupe B
- Opštih pitanja o konkretnoj implementaciji i razumevanju samog projekta

**Važno: Konsultacije, `Review` i `Issue` projekata se ne održavaju od početka prijave projekata do dana ispitnog roka.**  


## [Upgrade] Da li mogu unaprediti projekat za veću ocenu?
Ocena iz predmeta računarske grafike formira se kao zbir bodova na projektu, praktičnom i teorijskom delu. A
ko položeni projekat ima manje od maksimalnog broja bodova, možete doraditi projekat do poslednjeg ispitnog roka za više bodova.
Ako želite da doradite projekat za više bodova potrebno je da nam **odmah nakon objavljivanja rezultata ispitnog roka** javite mejlom:  

```
To: {profesorka} _At_ math.rs, 
CC: {asistent} _at_ math.rs
Subject:  [RG][Upgrade]
Content:  
Poštovana, 

Želim da doradim projekat {LINK_DO_VASEG_REPOZITORIJUMA} na kojem trenutno imam osvojenih {BROJ_BODOVA} bodova za neki od narednih rokova.

S` poštovanjem,
{Ime} {Prezime}
{brINDEKSA}
```

## Gde mogu pronaći modele za projekat?  
Modele možete preuzeti sa:  
- [sketchfab](https://sketchfab.com/3d-models)
- [artec3d](https://www.artec3d.com/3d-models)
- [free3D](www.free3d.com)
- [turbosquid](https://www.turbosquid.com/3d-models/)
- [gdrive](https://drive.google.com/drive/folders/1vMCZej9C5V0uc4RgKrinMHS6OM1IaY2g?usp=sharing)

