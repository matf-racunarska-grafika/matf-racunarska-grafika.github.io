
# Projekat

Projekat obavezan deo kursa koji nosi ukupno 60 (+15 bonus) bodova. Projekat se smatra položenim ako je ocenjen sa barem 20 bodova i radi se individualno.  

**Nesamostalan rad na projektu, plagiranje, kao i direktno preuzimanje delova koda iz drugih studentskih projekata smatra se kršenjem pravila polaganja ispita prema pravilniku fakulteta i povlači automatsko pokretanje disciplinskog postupka i zabranu polaganja ispita Računarske grafike u trenutnoj školskoj godini.**

Molimo Vas, **detaljno** pročitajte i ispratite uputstva u daljem tekstu.  
**Projekti koji odstupaju od šablona datog u uputstvu neće biti pregledani.**  
Ukoliko budete imali poteškoća u bilo kom koraku slobodno se javite mejlom.

Sav koda iz repozitorijuma sa primerima sa časa možete slobodno koristiti u projektu bez ikakvih restrikcija i navođenja. 
Korišćenje razvojnog okruženja (CLion, QTCreator...) nije obavezno, ali može olakšati rad na projektu.  

## Kako da započnem projekat?
Praviti male, logične promene u kodu i redovno komitovati sa porukama koje sažeto opisuju dodatu promenu. Izbegavati dodavanje *velike* količine koda od jednom.  
Stil pisanja koda koji projekat treba da prati nalazi se u DOCS.md dokumentu kloniranog repozitorijuma.   

## Šta projekat treba da sadrži?

[30 bodova]  Osnova (Obavezno) 
- Pokretnu kameru
- Blending
- Face culling
- Cubemaps
- Instanciranje
- Blin-fongov model osvetljenja na svim objektima
- Model osvetljen sa barem dva tipa svetlosti (`Directional|Point|Spot`)
- Osvetljenje koje može da se podešava preko grafičkog korisničkog interfejsa (ImGui)
- Implementiran niz događaja: `{ACTION_X} --- AFTER_M_SECONDS---Triggers---> {EVENT_A} ---> AFTER_N_SECONDS---Triggers---> {EVENT_B}`
    - ACTION - pomeranje kamere na neku lokaciju na sceni, određen trenutak u vremenu...
    - AFTER_X_SECONDS - nakon što protekne X sekundi od registrovane akcije
    - EVENT - nešto se pomeri na sceni, boja svetla se promeni, neki objekat nestane, neki objekat se pojavi...

[10 bodova] [Off-screen Anti-Aliasing](https://learnopengl.com/Advanced-OpenGL/Anti-Aliasing) (Opciono)

[10 bodova] [Bloom](https://learnopengl.com/Advanced-Lighting/Bloom) (Opciono)

[10 bodova] [Point Shadows](https://learnopengl.com/Advanced-Lighting/Shadows/Point-Shadows)  (Opciono)

[+15 bodova] Ukoliko je projekat ocenjen sa maksimalnih 60 bodova možete se javiti mejlom za dodatni zadatak koji će nositi 15 bonus poena, tako da u zbiru na kraju ispita možete imati 115 bodova.  

Obratiti pažnju na svrhu i primenu opcionih lekcija. Implementirane lekcije koje se na sceni ne primećuju neće biti bodovane. Na primer: 
- Bloom efekat bez tačkastog izvora svetlosti predstavljenog nekim objektom iz kojeg se svetlo `preliva`

U projektu se takođe boduje:
- Stil, kreativnost i skladnost scene. 
- Uočljivost, izraženost i doprinos implementiranih oblasti atmosferi scene. 
- Kvalitet koda
    - Konzistentno formatiranje prema `clion-code-style.xml` (pogledati kod `engine` i `test::app` za primere)
    - Modularnost i logična podeljenost koda
    - Čitljiva i razumljiva imena klasa, funkcija, promenljivih

[Primeri scena i bodova](primeri/EXAMPLES.md)
 
**Projekat neće biti pregledan ako:**
- Ne postoji istorija pojedinačnih komitova projekta (na primer ceo projekat postavljen jednim komitom)
- Scena sadrži modele i teksture iz repozitorijuma sa primerima sa časa  
- Projekat nije napravljen kao *template* skeleta projekta iz uputstva  
- Projekat se ne kompilira, ne pokreće, iznenadno se zaustavlja (segfault, exception...)
- Nema popunjen `README.md`



## Kako da koristim Git i Github?  
Napraviti baznu granu za projekat prema upustvu: [Kako da započnem projekat?].  
Za svaku lekciju od grane `{dev}` napraviti odvojenu granu `{lesson-name-implemntation}` i promene postavljati na toj grani kako bi pregledanje, poređenje i testiranje bilo lakše.  
Kada je lekcija implementirana, granu sa lekcijom `{lesson-name-implemntation}` spojiti sa granom `{dev}`.  

Kompletan primer rada na implementaciji osvetljenja:  
```bash
# Napraviti granu
git checkout -b dev
# ... dodati osnovne, zatim za svaku funkcionalnost projekta napraviti granu
git checkout -b lighting-implementation
# ... implementirati svetlo
git add Lighting.cpp light.glsl
git commit -m 'Implemented basic Point light.'
# ... podesiti svetlo
git add Lighting.cpp light.glsl Main.cpp
git commit -m 'Fine tune Point light.'
# if (implementacija svetla završena) {
    git checkout dev
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
3. Napravite Pull Request sa stranice **Vašeg** projekta: `Pull Requests` -> `New pull request` -> `base` postaviti `{YOUR_REPOSITORY_NAME}:dev`, za `compare` odabrati `{YOUR_REPOSITORY_NAME}:{lesson-name-implementation}` -> `Create pull request`
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

Jedan [Issue] treba sadržati tačno jedno pitanje, ukoliko imate više pitanja, slobodno napravite više [Issue] tiketa.


## Prijava i ocenjivanje projekata

Koraci za prijavu projekta:
1. U podešavanjima dodati korisničko ime: `@spaske00` u `Contributors`:  sa stranice Vašeg projekta: `Settings` -> `Collaborators and teams` -> `Add people` type `@spaske00`. Za `role` staviti `write`. 
2. Postaviti granu na Github: `git push -u origin {dev}`
3. Napraviti Pull Request sa stranice projekta: `Pull Requests` -> `New pull request` -> `base` ostaviti `{YOUR_REPOSITORY_NAME}:main`, za `compare` odabrati `{YOUR_REPOSITORY_NAME}:{dev}` -> `Create pull request`. (Obratiti pažnju da umesto {YOUR_REPOSITORY_NAME} Github ponekad ostavi `matf-rg-project-2024`, zameniti sa granom main na **Vašem** repozitorijumu)
4. Sidebar desno `Reviewers` -> `wheel icon` -> `add @spaske00`.
5. Prijaviti projekat popunjavanjem [formulara]

Projekat će biti pregledan i bodovi upisani na stranici kursa.  
Student može biti pozvan i na usmenu odbranu projekta, po potrebi. Usmena odbrana projekta se sastoji od:  
- Opštih pitanja iz lekcija sa vežbi
- Opštih pitanja samo iz implementiranih lekcija iz grupe A i grupe B
- Opštih pitanja o konkretnoj implementaciji i razumevanju samog projekta
- Na odbrani projekta se očekuje duboko razumevanje implementiranih oblasti i interakcije sa ostatkom projekta – ukoliko ne možete objasniti kod i lekciju koji ste dodali, ta oblast se ocenjuje sa **nula bodova**.

### Komentari  
Svaki nerazrešen komentar koji nije označen sa **[OPTIONAL]**, nosi negativne bodove u konačnom zbiru bodova na projektu.  
Ako je kod ispravljen predlogom iz komentara, u odgovoru na komentar ostaviti kratak opis promene.  
Ako niste sigurni kako da implementirate predlog, odgovoriti na komentar pitanjem za dodatno pojašnjenje.   
Ako predlog nije implementiran, ne razrešavati komentar dok ne bude obrađen radi lakšeg praćenja izmena.  


**Važno: Konsultacije, `Question`, i `Issue` projekata se ne održavaju tokom trajanja ispitnog roka.**  

## Gde mogu pronaći modele za projekat?  
Modele možete preuzeti sa:  
- [sketchfab](https://sketchfab.com/3d-models)
- [artec3d](https://www.artec3d.com/3d-models)
- [free3D](www.free3d.com)
- [turbosquid](https://www.turbosquid.com/3d-models/)
- [poly-pizza](https://poly.pizza/)
- [gdrive](https://drive.google.com/drive/folders/1vMCZej9C5V0uc4RgKrinMHS6OM1IaY2g?usp=sharing)


## CLion podešavanja
1. Učitati stil formatiranja koda: `Settings` -> `Editor` -> `Code Style` -> `Schema (Wheel icon)` -> `Import scheema` -> `path/to/{REPOSITORY_NAME}/clion-code-style.xml`
2. Uključiti automatsko formatiranje koda: `Settings` -> `Tools` -> `Actions on Save` -> `Reformat code`
3. Uključiti izuzetke za formatiranje koda: `Settings` -> `Tools` -> `Editor` -> `Code Style` -> Check `Turn formatter on/off with markers in code comments` -> `Off: @formatter:off`, `On: @formatter:on`
4. [Opciono] Instalirati dodatak GLSL za bojenje sintakse: `Settings` -> `Plugins` -> `Marketplace` -> search `GLSL` -> `Install`.
5. [Opciono] Instalirati dodatak GitToolBox za bolju git integraciju: `Settings` -> `Plugins` -> `Marketplace` -> search `GitToolBox` -> `Install`.

