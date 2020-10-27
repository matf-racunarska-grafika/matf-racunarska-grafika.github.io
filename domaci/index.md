# Domaći
Domaći zadaci neće biti bodovani. Njihova svrha je da pomognu učenju.
Za svaki domaći je rešenje unapred dato. Potrudite se da uradite domaći korišćenjem znanja
sa vežbi. Ukoliko nemate ideju kako bi ste rešili probajte prvo da detaljnije proučite materijale sa vežbi.
Na kraju, pogledajte rešenje kako bi ste proverili da li ste ispravno uradili ili ako niste mogli da rešite.


## 01
1. Instalirati CLion i registrovati studentsku licencu preko alas naloga

2. Napraviti nalog na github-u

3. Proći kroz [learngitbranching](https://learngitbranching.js.org/) tutorial

4. Odgledati [bonus snimke](https://drive.google.com/drive/folders/16MAKMbOuB-zwJ0HsdGiGIguVGISqePUF?usp=sharing) iz C++ sa gugl drajva

5. Instalirati sve potrebne biblioteke

`sudo apt-get install g++ cmake git build-essential libgl1-mesa-dev libsoil-dev libglm-dev libassimp-dev libglew-dev libglfw3-dev libxinerama-dev libxcursor-dev libxi-dev mesa-common-dev mesa-utils libxxf86vm-dev libfreetype-dev`
    
 Proveriti verziju: `glxinfo | grep OpenGL`
    
6. Klonirati [learnopengl](https://github.com/matf-racunarska-grafika/LearnOpenGL) repozitorijum; poreknuti svaki primer

7. Pročitati lekcije za sledeće vežbe

## 02
1. Nacrtati dva trougla jedan pored drugog dodavanjem još tri temena u vertices niz

2. Nacrtati ista dva troubla sa dva VBO i dva VAO

3. Napisati drugi shader koji drugi trougao boji u neku drugu boju

4. Pročitati lekcije za sledeće vežbe

Rešenja:

1. /src/1.getting_started/2.3.hello_triangle_ exercise1/

2. /src/1.getting_started/2.4.hello_triangle_exercise2/

3. /src/1.getting_started/2.5.hello_triangle_exercise3/

# 03

1. Izmeniti vrteks šejder u primeru 3.2. tako da trougao pokazuje na dole

2. Napraviti horizontalni offset preko uniform promenljive i pomeriti trougao u desni deo ekrana preko vrteks šejdera
za ovu vrednost.

3. Proslediti poziciju vrteksa fragment šejderu koristeći out i postaviti boju
u fragment šejderu da bude jednaka poziciji vrteksa. Jednom kada se to desi
odgovoriti na pitanje: Zašto je donji levi deo trougla crn?

4. Odgledati [Essence of Linear Algebra](https://www.youtube.com/watch?v=fNk_zzaMoSs&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&ab_channel=3Blue1Brown)

5. Odgledati [Projective geometry and homogeneous coordinates](https://www.youtube.com/watch?v=q3turHmOWq4)

**Rešenja:**

1. /src/1.getting_started/3.4.shaders_exercies1/shaders_exercies1.cpp

2. /src/1.getting_started/3.5.shaders_exercies2/shaders_exercies2.cpp

3. /src/1.getting_started/3.6.shaders_exercies3/shaders_exercies3.cpp
