
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
4. Klonirati projekat na svoj računar: `git clone --recursive git@github.com:{USER_NAME}/{REPOSITORY_NAME}.git` (link preuzeti preko zelenog dugmeta `Clone` na stranici **forkovanog** projekta)
5. `cd {REPOSITORY_NAME}`
6. Pokrenuti `./setup.sh` za instalaciju potrebnih biblioteka
7. Pokrenuti `doxygen Doxyfile` za generisanje dokumentacije
8. Napraviti granu sa vašim brojem indeksa: `git checkout -b {miXXXXX}`.
9. Pokrenuti CLion i otvoriti projekat: `File` -> `Open` -> `path/to/{REPOSITORY_NAME}`

Praviti male, logične promene u kodu i redovno komitovati sa porukama koje sažeto opisuju dodatu promenu. Izbegavati dodavanje *velike* količine koda od jednom. 

Dokumentaciji se može pristupiti lokalno otvaranjem: `path/to/{REPOSITORY_NAME}/engine/docs/html/index.html` u veb pretraživaču ili preko stranice kursa [https://matf-racunarska-grafika.github.io/matf-rg-project-2024/](https://matf-racunarska-grafika.github.io/matf-rg-project-2024/).

Stil pisanja koda koji projekat treba da prati nalazi se u README.md dokumentu kloniranog repozitorijuma. 
Pre svakog pokretanja procesa prevođenja projekta, pokreće se skripta koja verifikuje da je kod napisan prema pravilima u dokumentu README.md. Eventualne greške kao i smernice za ispravljanje grešaka biće ispisani u `CMake` podprozoru okruženja CLion (jedan od podprozora koji se može uključiti pritiskom na CMake dugme u donjem levom uglu okruženja CLion). 

## CLion podešavanja
1. Učitati stil formatiranja koda: `Settings` -> `Editor` -> `Code Style` -> `Schema (Wheel icon)` -> `Import scheema` -> `path/to/{REPOSITORY_NAME}/clion-code-style.xml`
2. Uključiti automatsko formatiranje koda: `Settings` -> `Tools` -> `Actions on Save` -> `Reformat code`
3. Uključiti izuzetke za formatiranje koda: `Settings` -> `Tools` -> `Editor` -> `Code Style` -> Check `Turn formatter on/off with markers in code comments` -> `Off: @formatter:off`, `On: @formatter:on`
4. [Opciono] Instalirati dodatak GLSL za bojenje sintakse: `Settings` -> `Plugins` -> `Marketplace` -> search `GLSL` -> `Install`.
5. [Opciono] Instalirati dodatak GitToolBox za bolju git integraciju: `Settings` -> `Plugins` -> `Marketplace` -> search `GitToolBox` -> `Install`.


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

Lekcije grupe A i B implementiraju se kao komponente modula `engine` koje bi svaka instanca aplikacije mogla da koristi, na sličan način kako je implementirana 
lekcija `skybox`. Lekcije grupe A i grupe B koje nisu implementirane kao komponenta modula `engine` **neće biti bodovane**.

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

## Kako da koristim Git i Github?  
Napraviti baznu granu za projekat prema upustvu: [Kako da započnem projekat?].  
Za svaku lekciju od grane `{miXXXXX}` napraviti odvojenu granu `{lesson-name-implemntation}` i promene postavljati na toj grani kako bi pregledanje, poređenje i testiranje bilo lakše.  
Kada je lekcija implementirana, granu sa lekcijom `{lesson-name-implemntation}` spojiti sa granom `{miXXXXX}`.  

Kompletan primer rada na implementaciji osvetljenja:  
```bash
# Napraviti granu
git checkout -b miXXXXX
# ... dodati osnovne, zatim za svaku funkcionalnost projekta napraviti granu
git checkout -b lighting-implementation
# ... implementirati svetlo
git add Lighting.cpp light.glsl
git commit -m 'Implemented basic Point light.'
# ... podesiti svetlo
git add Lighting.cpp light.glsl MainController.cpp
git commit -m 'Fine tune Point light.'
# if (implementacija svetla završena) {
    git checkout miXXXXX
    git merge lighting-implementation
# } else if (implementacija svetla ima problem) {
    git push -u origin HEAD
    # Pogledati upustvo [Implementation] ispod
# }
```
## [Implementation] Imam problem/poteškoću prilikom implementacije lekcije koju ne mogu da rešim?  
Obavezno ispratiti upustvo iznad: [## Kako da efektivno koristim Git i Github?]. Implementacije lekcija držati u odvojenim granama.  
- Barem 1-2 sata probajte sami da rešite problem
- Probajte da vratite projekat u poslednje stanje u kojem je sve radilo pa inkrementalno dodajte promene jednu po jednu, testirajući dodati kod: `git stash` zatim `git checkout .`. `git stash` će sačuvati sve trenutne promene, možete ih vratiti sa `git stash pop`.

Ako ništa od toga ne uspe:
1. U podešavanjima sa GitHub stranice **Vašeg** projekta dodati korisničko ime: `@spaske00` u `Contributors`:  : `Settings` -> `Collaborators and teams` -> `Add people` type `@spaske00`. Za `role` staviti `write`. 
2. Komitovati promene i postaviti granu na GitHub: `git push -u origin {lesson-name-implementation}`
3. Napravite Pull Request sa stranice **Vašeg** projekta: `Pull Requests` -> `New pull request` -> `base` postaviti `{YOUR_REPOSITORY_NAME}:miXXXXX`, za `compare` odabrati `{YOUR_REPOSITORY_NAME}:{lesson-name-implementation}` -> `Create pull request`
4. U opisu ostaviti pitanja
5. Sidebar desno `Reviewers` -> `wheel icon` -> `add @spaske00`.
6. Poslati mejl sa naslovom: `[RG][Implementation]` i u sadržaju ostaviti **samo** link do pull requesta: `https://github.com/{YOUR_USER_NAME}/{YOUR_REPOSITORY_NAME}/pulls/{NUMBER}`.  

```
To: {asistent} _At__ @math.rs
Subject: [RG][Implementation]
Content:

https://github.com/{YOUR_USER_NAME}/{YOUR_REPOSITORY_NAME}/pulls/{NUMBER}

```

## [Question] Imam opšte pitanje u vezi projekta/lekcije?  
Ukoliko imate opšte pitanje u vezi lekcije ili projekta, koje nema prateći kod, prvo barem 1-2 sata probajte sami da pronađete odgovor u materijalima kursa.  
Ako ne uspete:
1. Uključiti opciju Issues: Settings -> Features -> Enable Issues
2. Na stranici Vašeg repozitorijuma napraviti novi issue: `https://github.com:{YOUR_USER_NAME}/{YOUR_REPOSITORY_NAME}/issues`
3. Naslov [Issue] postavite da bude tekst pitanja
4. U opisu [Issue] opisati koje ste materijale pogledali i eventualno detaljnije pojasnite pitanje.
5. U opisu problema tagovati korisničko ime: `@spaske00`.
6. Poslati mejl sa naslovom: `[RG][Question]` i u sadržaju ostaviti **samo** link do napravljenog `issue` na GitHub-u.

Jedan [Issue] treba sadržati tačno jedno pitanje, ukoliko imate više pitanja, napravite više [Issue] tiketa.



## [Review] Projekat je završen, želim da znam koliko bi bodova osvojio i kako ga mogu unaprediti?

U bilo kom trenutku tokom školske (osim u toku trajanja prijave projekta) godine možete poslati trenutno stanje projekta radi dobijanja procene koliko bi projekat osvojio bodova i kako ga unaprediti: 
1. U podešavanjima sa GitHub stranice projekta dodati korisničko ime: `@spaske00` u `Contributors`:  : `Settings` -> `Collaborators and teams` -> `Add people` type `@spaske00`. Za `role` staviti `write`. 
2. Komitovati promene i postaviti granu na GitHub: `git push -u origin {miXXXXX}`
3. Napravite Pull Request sa stranice Vašeg projekta: `Pull Requests` -> `New pull request` -> `base` ostaviti `{YOUR_REPOSITORY_NAME}:main`, za `compare` odabrati `{YOUR_REPOSITORY_NAME}:{miXXXXX}` -> `Create pull request`. (Obratiti pažnju da umesto {YOUR_REPOSITORY_NAME} Github ponekad ostavi `matf-rg-projekat`, svakako zameniti sa granom main na Vašem repozitroijumu)
4. U opisu ostaviti pitanja
5. Sidebar desno `Reviewers` -> `wheel icon` -> `add @spaske00`.
6. Poslati mejl sa naslovom: `[RG][Review]` i u sadržaju ostaviti **samo** link do pull requesta: `https://github.com/{YOUR_USER_NAME}/{YOUR_REPOSITORY_NAME}/pulls/{NUMBER}`.
7. Nakon pregledanja, ukoliko su potrebne izmene na projektu, komentari će biti ostavljeni na Github-u.
8. Komitove sa ispravkama na osnovu ostavljenih komentara postaviti na **istu granu**.
9. **Ne markirati komentare sa: Resolved**. Kada se komitovi sa unesenim izmenama budu postavljeni, kao odgovor na komentar napisati ukratko šta je urađeno u komitu kao ispravka koda. Pogledati sekciju **Komentari** niže za više detalja.  
10. Kada su ispravljeni **svi** komentari, na pull request-u ostaviti komentare da su svi komentari ispravljeni i poslati mejl sa naslovom: [RG][Review][Done] a poruci ostaviti samo link do do pull requesta. 


```
To: {asistent} _At__ @math.rs
Subject: [RG][Review]
Content:

https://github.com/{YOUR_USER_NAME}/{YOUR_REPOSITORY_NAME}/pulls/{NUMBER}

```

## Komentari  
Radi lakše organizacije i određivanja prioriteta rada na projektu, komentari koji budu ostavljeni na platformi Github su podeljeni u nekoliko kategorija:  
* **[CRITICAL]** - Problemi koji moraju biti rešeni kako bi projekat imao prolazni broj bodova.  
* **[STYLE]** - Sugestije koje se odnose na stil koda, uključujući imenovanje identifikatora, formatiranje i  
 konzistentnost.  
* **[REFACTOR]** - Predlozi za reorganizaciju koda radi bolje čitljivosti, razumevanja i lakše buduće nadogradnje.  
* **[FEATURE]** -  Predlozi za dodatne funkcionalnosti koje bi mogle poboljšati projekat.  
* **[OPTIONAL]** -  Opciono ispravljanje i sugestije koje ne utiču na konačan broj bodova, ali mogu pomoći u istraživanju alternativnih rešenja i proširivanju znanja.

Ako je predlog iz komentara usvojen u kodu, molimo Vas da u odgovoru na komentar ostavite kratak opis promene. Ako niste sigurni kako da implementirate predlog, slobodno postavite pitanje za dodatno pojašnjenje.  
Ako predlog nije implementiran, nemojte razrešavati komentar dok ne bude obrađen kako bismo lakše pratili koje izmene su još potrebne.



## Prijava i ocenjivanje projekata

Koraci za prijavu projekta:
1. U podešavanjima dodati korisničko ime: `@spaske00` u `Contributors`:  sa stranice Vašeg projekta: `Settings` -> `Collaborators and teams` -> `Add people` type `@spaske00`. Za `role` staviti `write`. 
2. Postaviti granu na Github: `git push -u origin {miXXXXX}`
3. Napraviti Pull Request sa stranice projekta: `Pull Requests` -> `New pull request` -> `base` ostaviti `{YOUR_REPOSITORY_NAME}:main`, za `compare` odabrati `{YOUR_REPOSITORY_NAME}:{miXXXXX}` -> `Create pull request`. (Obratiti pažnju da umesto {YOUR_REPOSITORY_NAME} Github ponekad ostavi `matf-rg-projekat`, svakako zameniti sa granom main na **Vašem** repozitorijumu)
4. Sidebar desno `Reviewers` -> `wheel icon` -> `add @spaske00`.
5. Prijaviti projekat popunjavanjem [formulara](https://forms.gle/eRCeUS6rEYwF8CXU7) sa stranice kursa. 

Projekat će biti pregledan i bodovi objavljeni na stranici kursa.  
Student može biti pozvan na usmenu odbranu projekta. Usmena odbrana projekta se sastoji od:  
- Opštih pitanja iz lekcija sa vežbi
- Opštih pitanja samo iz implementiranih lekcija iz grupe A i grupe B
- Opštih pitanja o konkretnoj implementaciji i razumevanju samog projekta
- Na odbrani projekta se očekuje da razumete oblast koju ste implementirali – ukoliko ne možete objasniti kod i lekciju koji ste dodali, ta oblast se ocenjuje sa **nula bodova**.

**Važno: Konsultacije, `Question`, `Review` i `Issue` projekata se ne održavaju od početka prijave projekata do dana ispitnog roka.**  


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



## Sinhronizacija forka projekta
Fork projekta je kopija originalnog projekta nastala od stanja originala u trenutku forkovanja i od tog trenutka promene na oba su međusobno nezavisne.  
Ukoliko originalni projekta dobije nove komitove nakon trenutka forkovanja, fork projekta se može sinhronzivaoti sa originalnom na sledeći način:  
```bash
cd my/project/directory

# Prebaciti se na main granu
git checkout main

# Dodati upstream originalnog projekta
git remote add upstream git@github.com:matf-racunarska-grafika/matf-rg-project-2024.git

# Preuzeti grane sa originalnog projekta
git fetch upstream

# Prebaciti sve nove kommitve sa main grane originala na lokalnu main granu
git rebase upstream/main

# Postaviti novu main granu na forkovan repozitorijum
git push origin main --force

# Sinhronizovati granu za rad sa glavnom granom
git checkout miGGXXXX && git rebase main
```
