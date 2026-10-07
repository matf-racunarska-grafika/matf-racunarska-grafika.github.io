
# Projekat

Projekat neobavezan deo kursa koji nosi ukupno 25 bodova i radi se individualno. Projekat se smatra položenim ako se na odbrani osvoji barem 10 bodova.  
Jednom odbranjen projekat važi cele školske godine. Projekat nije uslov za izlazak na ispit, niti je položen ispit uslov za rad na projektu i odbranu.  
Preporučljivo je na projektu raditi sedmično prateći [sedmične zadatke za projekat](#sedmični-zadaci-za-projekat).  
Samostalnim i redovnim radom na sedmičnim zadacima za projekat, uz čitanje priloženih lekcija iz knjige ograđenih na vežbama te sedmice, najlakše se i uradi projekat i spremi gradivo za ispit i odbranu projekta.   

Rokovi za ocenjivanje projekata:
- Jan1-Jan2 
    - Predaja do 17.01. u 21:00
    - Ispravke do 24.01. u 21:00
- Jun1-Jun2 
    - Predaja do 06.06. u 21:00 
    - Ispravke do 13.06. u 21:00
- Sep1-Sep2 
    - Predaja do 15.08. u 21:00 (poslednji termin) 
    - Ispravke do 22.08 u 21:00 (poslednji termin) 
- Predaja projekta:
    - Projekat je završen
    - Sve željene lekcije prisutne i funkcionalne

Projekat se brani u roku u kojem je predat u terminu održavanja ispita.  
Odbrana projekta je test sastavljen od pitanja samo iz oblasti koje su u projektu implementirane.  
Na odbranu je moguće izaći do dva puta u jednoj godini, a u spojenim rokovima. 
Ponovni izlazak na odbranu poništava ostvarene bodove na prethodnoj odbrani.
Tokom trajanja ispitnog roka se ne održavaju konsultacije i pregledanja projekata.  

**Nesamostalan rad na projektu, plagiranje, kao i direktno preuzimanje delova koda iz drugih studentskih projekata smatra se kršenjem pravila polaganja ispita prema pravilniku fakulteta i povlači automatsko pokretanje disciplinskog postupka i zabranu polaganja ispita Računarske grafike u trenutnoj školskoj godini.**

Molimo Vas, **detaljno** pročitajte i ispratite uputstva u daljem tekstu.  
**Projekti koji odstupaju od šablona datog u uputstvu neće biti pregledani.**  
Ukoliko budete imali poteškoća u bilo kom koraku slobodno se javite mejlom.

Sav koda iz repozitorijuma sa primerima sa časa možete slobodno koristiti u projektu bez ikakvih restrikcija i navođenja.  

## Kako da započnem projekat?
Praviti male, logične promene u kodu i redovno komitovati sa porukama koje sažeto opisuju dodatu promenu. Izbegavati dodavanje *velike* količine koda od jednom.  
Stil pisanja koda koji projekat treba da prati nalazi se u DOCS.md dokumentu kloniranog repozitorijuma.   

## Šta projekat treba da sadrži?

Osnova (Obavezno) 
- 3D svet
- Pokretnu kameru
- Blending
- Face culling
- Cubemaps
- Instanciranje ??
- Blin-fongov model osvetljenja na svim objektima
- Model osvetljen sa sva tri tipa svetlosti (`Directional Point Spot`)
- Osvetljenje koje može da se podešava preko grafičkog korisničkog interfejsa (ImGui)
- Offscreen post procesiranja slike  
- Implementiran niz događaja:
    - {AKCIJA_A1} -> NAKON_M_SEKUNDI ---> {DOGADJAJ_X} ---> NAKON_N_SEKUNDI ---> {DOGADJAJ_Y}`
    - AKCIJA - pomeranje kamere na neku lokaciju na sceni, određen trenutak u vremenu...
    - NAKON_X_SEKUNDI - nakon što protekne X sekundi od registrovane akcije
    - DOGADJAJ - nešto se pomeri na sceni, boja svetla se promeni, neki objekat nestane, neki objekat se pojavi...


(10 bodova) [Bloom](https://learnopengl.com/Advanced-Lighting/Bloom) ili [Point Shadows](https://learnopengl.com/Advanced-Lighting/Shadows/Point-Shadows)  

(15 bodova) [Deferred shading](https://learnopengl.com/Advanced-Lighting/Deferred-Shading)  

U projektu se takođe boduje:
- Uočljivost, izraženost i doprinos implementiranih oblasti atmosferi scene. 
- Kvalitet koda
    - Konzistentno formatiranje prema DOCS.md uputstvu
    - Modularnost i logična podeljenost koda
    - Čitljiva i razumljiva imena klasa, funkcija, promenljivih

[Primeri scena i bodova](primeri/EXAMPLES.md)


## Sedmični zadaci za projekat

Projekat se razvija inkrementalno iz nedelje u nedelju, tako da zadaci svake nedelje direktno odgovaraju gradivu koje je obrađeno te nedelje.

### 01 -  Postavljanje projekta

Preuzeti materijale:
- [ ] Preuzeti primere sa časa
- [ ] Preuzeti skelet projekta
- [ ] Preuzeti skelet za vežbanje
- [ ] Bookmarkovati dokumentaciju [glfw](https://www.glfw.org/documentation) [gl](https://docs.gl/)

Podešavanje okruženja 
- [ ] Ispratiti sve korake iz [uputstva](../uputstva/) za podešavanje biblioteka:
- [ ] Uraditi sve zadatke sa [learngitbranching](https://learngitbranching.js.org/)

Projekat:
- [ ] Implementirati petlju renderovanja
- [ ] Boja pozadine menja se pritiskom dugmića tastature
- [ ] CTRL + Strelice povećavaju/smanjuju veličinu prozora (gore/dole visina, levo/desno širina)
- [ ] Klikom miša na ekran boja pozadine se menja na nasumičnu boju
- [ ] Dok je pritisnut Shift, boja prozora (r, g, b) = (x, y, 0) gde su (x,y) koordinate miša transformisane tako da je koordinatni početak u donjem levom uglu ekrana, a gornji desni ugao ekrana je (x,y)=(1.0, 1.0) . Primer: kada je kursor na sredini ekrana boja pozadine je: (0.5, 0.5, 0.0). Hint: [mouse input](https://www.glfw.org/docs/3.3/input_guide.html#input_mouse)
- [ ] Esc gasi prozor

---

### 02  OpenGL prozor i crtanje

- [ ] Nacrtati jedan trougao na sredini ekrana pomoću VAO i VBO objekata
- [ ] Nacrtati kvadrat pomoću dva trougla jedne boje
- [ ] Napraviti tako da je svaki kvadrant ekrana obojen drugom bojom
- [ ] Napisati funkciju koja crta mnogougao N na sredini ekrana
- [ ] CTRL + N - crta n-tougao na sredini ekrana gde je N broj na tastaturi

---

### 03  Šejderi i teksture
- [ ] Pojednostaviti crtanje kvadranta tako da postoji samo jedan jedinični kvadrat koji se pomoću šejdera translira na odgovarajuću poziciju
- [ ] Napraviti funkcije/klase za rad sa šejderima i učitavanje tekstura u zasebnim .hpp i .cpp fajlovima
- [ ] `Shift + K + (r|g|b)` - menja boju K-tog kvadranta na crvenu (ili zelenu, ili plavu)
- [ ] Dodati koordinate tekstura kvadratima
- [ ] Svaki kvadrant obojiti različitom teksturom
- [ ] `Shift + K + t`  - mixuje boju K-tog kvadranta njegovom teksturom
- [ ] Promeniti crtanje N-tougla tako da primitive formira geometry shader od iz jedne tačke (0,0) koja se nalazi u centru ekrana
- [ ] Implementirati automatsku rekompilaciju šejdera: program detektuje da li se izvorni kod šejdera promenio na disku, ukoliko jeste i ispravan je kompajlira i linkuje novi izvorni kod, a ako nije ne menja postojeći šejder. 

---

### 04 Transformacije i koordinatni sistemi

- [ ] Postavljanje kvadranata promeniti u model matricu
- [ ] Napraviti crtanje X,Y,Z osa pomoću linija (pogledati dokumentaciju za podešavanje debljine linije)
- [ ] Napraviti crtanje X,Y ravni (ograničiti na [-1.0, 1.0])
- [ ] Napraviti pod sa teksturom 
- [ ] Postaviti 4 teksturisane kocke, različitih veličina i orijentacija na pod


---
### 05 - Kamera

- [ ] Omogućiti slobodno kretanje (letenje) po 3D sceni
- [ ] Omogućiti zaključano kretanje samo po podu scene
- [ ] Onemogućiti ulazak kamerom u postavljene kocke kada je kretanje zaključano na pod, ali moguće kada je kamera u slobodnom kretanju
- [ ] Klikom miša na ekranu na kocku promeni boju u crvenu, ponovnim klikom se vrati boja na teksturu (samostalno istražiti na internetu)
- [ ] Napraviti funkcije/klase za rad sa kamerom u zasebnim .hpp i .cpp fajlovima projekta

---

### 06  Osnovno osvetljenje i materijali

- [ ] Dodati normale geometriji objekata
- [ ] Dodati Phongovo svetlo u vidu lampe na sredini scene
- [ ] Dodati difuzne i spekularne teksture kockama i podu
- [ ] Napraviti funkcije za crtanje osnovnih geometrijskih primitiva:
	- [ ] linija
    - [ ] trougao
	- [ ] kvadrat
	- [ ] krug
    - [ ] konus
    - [ ] cilindar
    - [ ] tetraedar
	- [ ] kocka
	- [ ] piramida
	- [ ] lopta

---

### 07  Više izvora svetlosti

- [ ] Implementirati direkciono svetlo
- [ ] Implementirati tačkasto svetlo
- [ ] Implementirati stacionarnu usmerenu lampu na sceni
- [ ] Implementirati lampu kao izvor svetla iz kamere
- [ ] Podržati više izvora svetlosti u šejderima

---

### 08 Napredni OpenGL
- [ ] Dodat ImGUI i vezati sve parametre scene
- [ ] Pritiskom na dugme umesto scene iscrtava se njen depth bafer na ekranu
- [ ]  Dodati prozirne objekte (staklo u boji) 
- [ ] Dodati providne objekete (drveće, lišće, cveće)
- [ ] Uključiti Face Culling i popraviti one objekte na sceni koji više ne izgledaju ispravno
- [ ] Nacrtati kocku tako da se unutrašnje strane odsecaju prilikom crtanja
- [ ] Promeniti model osvetljenja u svim šejderima u Blin-fongov
- [ ] Promeniti slanje view/projection matrica, svetla i deljenih podataka u šejderima u UBO 
- [ ] Promeniti individualne in/out promenljive u interfejs blokove
- [ ] Promeniti individualne glGen/glBind bafere u glCreate/glNamedBuffer

---

### 09 - Modeli i GUI

- [ ] Napraviti funkcije za ucitavanje modela sa prosledjene putanje
- [ ] Iscrtavati učitane modele sa osvetljenjem
- [ ] Pronaći 2 modela koja nisu u repozitorijumu i iscrtati sa punim osvetljenjem
- [ ] Dodati ImGui u projekat
- [ ] Povezati parametre osvetljenja i modela za ImGui
- [ ] U ImGui dodati prozor sa svim kompajliranim šejderima i editor za menjanje izvornog koda šejdera tokom izvršavanja aplikacije. Promenom koda, šejder se rekompilira i program nastavlja normalno da ga koristi.

---

### 10 Frejmbaferi i post-procesiranje

- [ ] Renderovati scenu u novi frajembafer umesto podrazumevanog
- [ ] Napraviti šejdere za efekte post procesiranja iz knjige i dodati opciju menjanja efekata post procesiranja pritiskom na CTRL + SHIFT + NUM. Prvi pritisak uključi efekat, drugi pritisak dugmeta isključi efekat
- [ ] Dodati mogućnst kompozicije efekata post procesiranja
- [ ] Dodati kontrolu uključivanja/isključivanja post procesiranja u GUI
- [ ] Napraviti ImGui prozor koji prikazuje bafer dubine scene gde je svaki fragment obojen vrednošću funkcije dubine
- [ ] Napraviti ImGui prozor koji prikazuje bafer normala fragmenata scene gde je svaki fragment obojen vrednostima vektora normala
- [ ] Napravigi ImGui prozor koji prikazuje bafer intenziteta difuzne komponente osvetljenja
- [ ] Napraviti ImGui prozor koji prikazuije bafer intenziteta spekularne komponente osvetljenja
- [ ] Dodati ImGui prozor u kojem se prikazuje preview izgleda scena kada se primeni odabrani efekat post-procesiranja

---



**Projekat neće biti pregledan ako:**
- Ne postoji istorija pojedinačnih komitova projekta (na primer ceo projekat postavljen jednim komitom)
- Scena sadrži modele i teksture iz repozitorijuma sa primerima sa časa  
- Projekat nije napravljen kao *template* skeleta projekta iz uputstva  
- Projekat se ne kompilira, ne pokreće, iznenadno se zaustavlja (segfault, exception...)
- Nema popunjen `README.md`


## Kako da koristim Git i Github?  
Radi lakešeg praćenja rada, preporučljivo je za svaku lekciju od grane `{dev}` napraviti odvojenu granu `{lesson-name-implementation}` i promene postavljati na toj grani kako bi pregledanje, poređenje i testiranje bilo lakše.  
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


### Komentari  
Ako je kod ispravljen predlogom iz komentara, u odgovoru na komentar ostaviti kratak opis promene.  
Ako niste sigurni kako da implementirate predlog, odgovoriti na komentar pitanjem za dodatno pojašnjenje.   
Ako predlog nije implementiran, ne razrešavati komentar dok ne bude obrađen radi lakšeg praćenja izmena.  


**Važno: Konsultacije i pregledanje projekata se ne održavaju tokom trajanja ispitnog roka.**  

## Gde mogu pronaći modele za projekat?  
Preporučljivo je koristiti standardne modele za razvoj i istraživanja u računarskoj grafici:  
- [Khronos sample assets](https://github.com/KhronosGroup/glTF-Sample-Assets)
- [McGuire Compter Graphics Archive](https://casual-effects.com/data/)

Dodatne modele možete naći sa:  
- Google drive sa modelima prethodnih školskih godina [gdrive](https://drive.google.com/drive/folders/1vMCZej9C5V0uc4RgKrinMHS6OM1IaY2g?usp=sharing)
- [sketchfab](https://sketchfab.com/3d-models)
- [artec3d](https://www.artec3d.com/3d-models)
- [free3D](www.free3d.com)
- [turbosquid](https://www.turbosquid.com/3d-models/)
- [poly-pizza](https://poly.pizza/)




