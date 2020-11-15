# Domaći
Domaći zadaci neće biti bodovani. Njihova svrha je da pomognu učenju.
Za svaki domaći je rešenje unapred dato. Potrudite se da uradite domaći korišćenjem znanja
sa vežbi. Ukoliko nemate ideju kako bi ste rešili probajte prvo da detaljnije proučite materijale sa vežbi.
Na kraju, pogledajte rešenje kako bi ste proverili da li ste ispravno uradili ili ako niste mogli da rešite.


## 01
1. Instalirati CLion i registrovati studentsku licencu preko alas naloga

2. Napraviti nalog na github-u

3. Proći kroz [learngitbranching](https://learngitbranching.js.org/) tutorial

4. Odgledati [bonus snimke](https://www.youtube.com/playlist?list=PLD-fbfqEboxwg1LG1K8emMmPPEWGcfRcT) iz C++

5. Instalirati sve potrebne biblioteke

`sudo apt-get install g++ cmake git build-essential libgl1-mesa-dev libsoil-dev libglm-dev libassimp-dev libglew-dev libglfw3-dev libxinerama-dev libxcursor-dev libxi-dev mesa-common-dev mesa-utils libxxf86vm-dev libfreetype6-dev`
    
 Proveriti verziju: `glxinfo | grep OpenGL`
    
6. Klonirati [learnopengl](https://github.com/matf-racunarska-grafika/LearnOpenGL) repozitorijum; poreknuti svaki primer

7. Pročitati lekcije za sledeće vežbe

## 02
1. Nacrtati dva trougla jedan pored drugog dodavanjem još tri temena u vertices niz

2. Nacrtati ista dva troubla sa dva VBO i dva VAO

3. Napisati drugi shader koji drugi trougao boji u neku drugu boju

4. Pročitati lekcije za sledeće vežbe

**Rešenja:**

[1. 1.getting_started/2.3.hello_triangle_exercise1](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/2.3.hello_triangle_exercise1)

[2. 1.getting_started/2.4.hello_triangle_exercise2/](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/2.4.hello_triangle_exercise2/)

[3. 1.getting_started/2.5.hello_triangle_exercise3/](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/2.5.hello_triangle_exercise3/)

# 03

1. Izmeniti vrteks šejder u primeru 3.2. tako da trougao pokazuje na dole

2. Napraviti horizontalni offset preko uniform promenljive i pomeriti trougao u desni deo ekrana preko vrteks šejdera
za ovu vrednost.

3. Proslediti poziciju vrteksa fragment šejderu koristeći out i postaviti boju
u fragment šejderu da bude jednaka poziciji vrteksa. Jednom kada se to desi
odgovoriti na pitanje: Zašto je donji levi deo trougla crn?

4. Napraviti da samo happyface gleda u drugom smeru horizontalno

5. Eksperimentisati sa različitim metodama texture wrapping navođenjem koordinata u opsegu 0.0f do 2.0f umesto 1.0f. Probajte da prikažete
4 smajlija na jednoj slici kutije.[rezultat](https://learnopengl.com/img/getting-started/textures_exercise2.png)

6. Probajte da prikažate samo centralne piksele teksture slike na pravougaoniku tako da se individualni pikseli vide kada menjamo kooridnate
teksture. Probati sa različitim metodama flitritranja.

7. Iskoristiti uniform promenljivu kao treći argument mix funkcije u vrteks šejderu. Postaviti da vrednost može da se povećava i smanjuje strelicama
tastature.

8. Odgledati [Essence of Linear Algebra](https://www.youtube.com/watch?v=fNk_zzaMoSs&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&ab_channel=3Blue1Brown)

9. Odgledati [Projective geometry and homogeneous coordinates](https://www.youtube.com/watch?v=q3turHmOWq4)

10. Napraviti abstrakciju nad kodom za učitavanje i rad sa teksturama 

**Rešenja:**

[1. 1.getting_started/3.4.shaders_exercies1/](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/3.4.shaders_exercies1/)

[2. 1.getting_started/3.5.shaders_exercies2/](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/3.5.shaders_exercies2/)

[3. 1.getting_started/3.6.shaders_exercies3/](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/3.6.shaders_exercies3/)

[4. 1.getting_started/4.3.textures_exercise1](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/4.3.textures_exercise1)

[5. 1.getting_started/4.3.textures_exercise2](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/4.3.textures_exercise2)

[6. 1.getting_started/4.3.textures_exercise3](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/4.3.textures_exercise3)

[7. 1.getting_started/4.3.textures_exercise4](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/4.3.textures_exercise4)

# 04

1. Zameniti redosled transformacija u 5.1.transformations i posmatrati rezultat

2. Nacrtati još jedanu kopiju pravougaonika koristeći samo transformacije i još jedan poziv glDrawElements.

3. Eksperimentisati sa FoV i asepct-ratio parametrima funkcije glm::perspective. 

4. Posmatrati kako utiču na piramidu pogleda kamere. Igrati se sa view matricom translirajući u više smerova i posmatrati kako scena menja. Razmišljati i view matrici kao kamera objektu.

5. Napraviti da se svaka treća kutija rotira kontinualno, a druge da stoje statično na postavljenom mestu.

6. Napisati kamera klasu tako da postane prava FPS kamera gde je moguće samo kretanje po xz ravni i gledanje naokolo.

7. Napraviti vašu LookAt funkciju koja ima iste parametre kao glm::lookAt i kreira lookAt matricu. Zameniti glm implementaciju i proveriti da li radi ispravno.

**Rešenja:**

[2. 1.getting_started/5.2.transformations_exercise1](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/5.2.transformations_exercise1)

[5. 1.getting_started/6.4.coordinate_systems_exercise3](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/6.4.coordinate_systems_exercise3)

[6. 1.getting_started/7.5.camera_exercise1](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/7.5.camera_exercise1)

[7. 1.getting_started/7.6.camera_exercise2](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/7.6.camera_exercise2)

# 05

1. Napraviti da se izvor svetlosti pomera po sceni po nekoj funkciji sin ili cos.

2. Eksperimentisati sa ambijentalnom, difuznom, i spekularnom jačinom i posmatrati rezultate. Takođe, menjati i shininess faktor.

3. Implementirati phonogovo sečenje u View-space koordinatama umesto u World-space koordinatama.

4. Implementirati Gouraud osvetljenje umesto Phongovog osvetljenja. Zašto izgleda drugačije?

5. Promenom vrednosti svetla promeniti boju kocke.

6. Simulirati objekte iz stvarnog sveta definisajući njihove materijale. Uzeti u obzir da u [tabeli](http://devernay.free.fr/cours/opengl/materials.html) 
ambijentalne vrednosti nisu iste kao difuzne. Kako bi ispravno postavili vrednosti uzeti da su sve komponente svetlosti inteziteta vec3(1.0f).

**Rešenja:**

[1. 2.lighting/2.3.basic_lighting_exercise1/basic_lighting_exercise1.cpp](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/2.3.basic_lighting_exercise1/)

[3. 2.lighting/2.4.basic_lighting_exercise2/basic_lighting_exercise2.cpp](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/2.4.basic_lighting_exercise2/)

[4. 2.lighting/2.5.basic_lighting_exercise3/basic_lighting_exercise3.cpp](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/2.5.basic_lighting_exercise3/)

[6. 2.lighting/3.2.materials_exercise1/materials_exercise1.cpp](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/3.2.materials_exercise1/)

# 06



