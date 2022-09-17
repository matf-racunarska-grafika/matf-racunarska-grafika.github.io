# Računarska grafika 

"Give someone state and they'll have a bug one day, but teach them how to represent state in two separate locations that have to be kept in sync and they'll have bugs for a lifetime." [-ryg](https://twitter.com/rygorous/status/1507178315886444544)

## Septembar 2

Drage koleginice i kolege,

Radi bolje organizacije ispita molimo vas da popunite naredu formu [https://forms.gle/vmWJE7khpCKdW1BB6](https://forms.gle/vmWJE7khpCKdW1BB6).  
Forma će biti otvorena do 19.09. u 14:00. 

Projekte za ispitni rok septembar 2 možete prijaviti na formi [https://forms.gle/MPE6M92JNg5ZohEw9](https://forms.gle/MPE6M92JNg5ZohEw9).  
Prijava će biti otvorena do 18.09 u 20:00.


## Bodovi

U tabeli ispod možete naći rezultate praktičnog dela ispita za rok sep1.

Rezultati praktičnog dela u roku sep1 su upisani u tabelu sa svim rezultatima.

[Tabela sa svim rezultatima](https://docs.google.com/spreadsheets/d/1YGqlOW-39YtXGwB52VsleaVdBH3Bn7Y_/edit?usp=sharing&ouid=118131903717126289602&rtpof=true&sd=true)

[Tabela sa trenutim bodovima projekata](https://docs.google.com/spreadsheets/d/1qoWOBNly_7EMwzm-K5ftO--M5zs7LQ0GnpDGUfm7n_w/edit?usp=sharing)


## Obaveštenja  
[03.12.2021.]  
Dodatni čas [subota 04.12. u 11:00.](https://matf.webex.com/matf/j.php?MTID=m5704df7c093be83f724db6a5fbf9ef11).  
Šifra: rg2021


[26.11.2021.]  
Na časovima u nedelji od 29.11. do 03.12. na vežbama će se raditi gradivo iz [8. nedelje nastave](materijali/#08).  
U subotu 04.12. u 11:00 imaćemo dopunski čas vežbi na kojem ćemo u skelet projekta implementirati sisteme koji treba da olakšaju izradu
projekta pri radi sa: ulazom sa tasture i miša, događajima, paralelnim dešavanjima na sceni i kreiranjem i renderovanjem objekata na sceni. 


[07.11.2021.]  
Četvrtak 11.11.2021. je državni praznik i neradni dan. Molim studente koji vežbe slušaju četvrtkom da sledeće nedelje prisustvuju vežbama u utorak ili petak, ili odgledaju snimke vežbi 05.


[11.10.2021.]  
Neće biti vežbi u petak 15.10. Molim studente da prisustvuju vežbama u nekom drugom terminu po želji ove nedelje ili odgledaju snimke vežbi.  
Pozdrav, 
Marko  

## Materijali iz vežbi za kurs iz Računarske grafike na Matematičkom fakultetu - Univerzitet u Beogradu

> [Projekat](projekat/) 

> [Materijali](materijali/) 

> [Galerija](gallery/)

> [Literatura Dokumentacija Alati](docs/)

> [Uputstva](uputstva/) CLion, Github, QtCreator, CMake


## Nastavnici i asistenti
-nastavnik: [dr. Vesna Marinković](http://poincare.matf.bg.ac.rs/~vesnam/grafika.html)

-asistent: Marko Spasić (marko_spasic _At_-- math.rs)

## Bodovanje  
Praktični: 55 (35 projekat + 20 pismeni)  
Teorijski: 45 (završni teorijski)  

Da bi se položio praktični deo ispita neophodno je ostvariti barem 25/55 bodova, od toga barem 10/35 na projektu i barem 10/20 na pismenom.  
Da bi se položio teorijski deo ispita neophodno je ostvariti barem 20/45 bodova na završnom teorijskom ispitu.  
Na kraju, potrebno je na praktičnom i teorijskom delu imati barem 51 bodova u zbiru.  

**Polaganje**  
Odbranjen projekat je uslov za izlazak na pismeni i završni teorijski. Jednom odbranjen projekat i dobijeni bodovi važe cele godine.  
Pismeni i završni teorijski su međusobno nezavisni i mogu se polagati u bilo kom ispitnom roku odvojeno ili zajedno.  
Jednom položen pismeni ili završni teorijski važi cele godine.  
Pismeni i zavržni teorijski se polažu na dan ispita iz Računarske grafike po [rasporedu](http://www.matf.bg.ac.rs/m/36/raspored-ispita/) sa sajta fakulteta.  
Ukoliko niste zadovljni osvojenim bodovima sa pismenog ili teorijskog možete izaći ponovo. Ponovni izlazak na neki od delova ispita poništava prethodno osvojene bodove.  
Ukoliko niste zadovoljni osvojenim bodovima na projektu, možete projekat doraditi i izaći ponovo na odbranu.  

[Praktični detaljnije](projekat/)  

## Konsultacije
Nakon svakog termina vežbi po rasporedu ili u dogovoru mejlom.


### Biblioteke
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

[Skelet projekta](https://github.com/matf-racunarska-grafika/project_base) Skelet projekta sa svim uključenim bibliotekama za vežbanje primera sa časa. 

### Licenca
Materijali kursa su bazirani na [www.learnopengl.com](www.learnopengl.com) sajtu napravljenom od strane [Joey De Vries](https://joeydevries.com/#home) i kao takvi spadaju pod [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) licencu. Celokupan tekst licence možete pronaći [ovde](https://creativecommons.org/licenses/by/4.0/legalcode).



Examples used in this course are based on [www.learnopengl.com](www.learnopengl.com) tutorials by [Joey De Vries](https://joeydevries.com/#home) and as such are licensed under [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/). Full text of the licence can be found [here](https://creativecommons.org/licenses/by/4.0/legalcode).



<!--- <3 N --->


