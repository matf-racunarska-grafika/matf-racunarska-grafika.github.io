# Materijali

## Osnovna literatura
Osnovni izvor za učenje računarske grafike je **knjiga** _Learn OpenGL_ sa pratećim primerima sa časova vežbi.  

- [Knjiga Web](https://learnopengl.com/)
- [Knjiga PDF](https://learnopengl.com/book/book_pdf.pdf)
- [Primeri sa časa](https://github.com/matf-racunarska-grafika/LearnOpenGL/)
- [Snimci vežbi](https://www.youtube.com/playlist?list=PLD-fbfqEboxyzhQpaa_5SoNwKIOXoY5uj) 
- [Prezentacije](https://drive.google.com/drive/folders/1-rp2-lYXwHC-uodT_VY0E9Q3P9rX8owx?usp=sharing)
- [C++ primeri](https://github.com/spaske00/cpp_tutorial)
- [C++ mini kurs](https://www.youtube.com/playlist?list=PLD-fbfqEboxwg1LG1K8emMmPPEWGcfRcT)
- [Zadaci za vežbu](https://matf-racunarska-grafika.github.io/domaci/)
- [Prazan skelet za vežbanje primera](https://github.com/matf-racunarska-grafika/rg-playground)

## Dokumentacija
- [OpenGL docs](http://docs.gl/)  
- [glfw](https://www.glfw.org/)  
- [glad generator](https://glad.dav1d.de/)  
- [cppreference](https://en.cppreference.com/w/)  
- [Git cheatsheet](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)  
- [learngit](https://learngitbranching.js.org/)

## Alati
- [Shader Toy](https://www.shadertoy.com/)
- [Shader Academy](https://shaderacademy.com/explore)
- [CLion](https://www.jetbrains.com/clion/)
- [QtCreator](https://www.qt.io/download-qt-installer)
- [Visual Code](https://code.visualstudio.com/)
- [Github](https://github.com/)
- [RenderDoc](https://renderdoc.org/)

### Dodatna (neobavezna) literatura
Kako da faktorišem projekat u kohezivne i logične module koje je lako razumeti i modifikovati?
- [A Philosophy of Software Design](https://web.stanford.edu/~ouster/cgi-bin/book.php)
- [C++ Primer, 5th edition](https://cpp-primer.pages.dev/book/000-cpp_primer_fifth_edition.html)
- [Game Engine Architecture - Jason Gregory](https://www.gameenginebook.com/)
- [Game Programming Patterns - Robert Nystrom](https://gameprogrammingpatterns.com/)

Kako da renderujem fotorealistične scene?  
- [Physically Based Rendering: From Theory to Implementation 3rd Edition](https://www.pbrt.org/)
- [Raytracing in One Weekend](https://raytracing.github.io/)
- [Real Time Rendering](https://www.realtimerendering.com/)

Kako da naučim osnove matematike računarske grafike?  
- [Računarska grafika - Skripta](https://poincare.matf.bg.ac.rs/~vesna.marinkovic/grafika/rg.pdf)
- [Computer Graphics From Scratch](https://gabrielgambetta.com/computer-graphics-from-scratch/)



---
## Algoritam za učenje računarske grafike


```python
setup_env()
examples, book = download()
knowledge = set()
project = set()

def experiment(example):
	for e in choose(range(0, 10)):
		example_modifed = modify(knowledge, example)
		Y_guessed = guess_output(knowledge, example_modifed)
		Y_real = run(example_modifed)
		knowledge |= learn(knowledge, Y_guessed, Y_real, book, example)

def practice(example):
	while True:
		scratch = template(example)
		knowledge |= read(knowledge, materials)
		knowledge |= try_implement(scratch, example, 30min)
		if run(scratch) == run(example):
			return

for week in range(0, 13):
	knowledge |= read(knowledge, book, week)  
	knowledge |= lectures(knowledge, week)

   for example in examples(week):
		experiment(example)
		practice(example)

	for task in project_tasks(0, week):
		knowledge |= try_implement(task, knowledge, project)
		if used_gpt():
			knowledge = set()
	
	if not project.contains(project_tasks(week)):
		knowledge |= ask_for_help(project, project_tasks(week), knowledge)
	
	take_break_and_rest()

points = submit(project)
grade = exam(knowledge)
```

--- 

## Osnove računarske grafike

### 01 Uvod u interaktivnu računarsku grafiku

Lekcije:
- [Introduction](https://learnopengl.com/Introduction)
- [OpenGL](https://learnopengl.com/Getting-started/OpenGL)
- [Creating a window](https://learnopengl.com/Getting-started/Creating-a-window)
- [Hello Window](https://learnopengl.com/Getting-started/Hello-Window)

Primeri:  
- [hello_window](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/1.1.hello_window)
- [hello_window_clear](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/1.2.hello_window_clear)
- [hello_window_events](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/2.6.hello_window_events)

Snimci:
- [Uvod u interaktivnu računarsku grafiku](https://youtu.be/rMs4BpasVSo)
- [Hello Window](https://www.youtube.com/watch?v=Ju2qCsVBUgw&list=PLD-fbfqEboxyzhQpaa_5SoNwKIOXoY5uj&index=6)
- [Hello Window Clear](https://www.youtube.com/watch?v=JBLRgPWCX1I&list=PLD-fbfqEboxyzhQpaa_5SoNwKIOXoY5uj&index=8)
- [Hello Window Events](https://www.youtube.com/watch?v=f5GN7t-8n0M&list=PLD-fbfqEboxyzhQpaa_5SoNwKIOXoY5uj&index=7)

Glavni koncepti:  
- Interaktivna računarska grafika  
- OpenGL
- GLFW
- GLAD
- **Petlja renderovanja**
- Događaji

---

### 02 Grafička protočna obrada
Lekcije:
- [Hello Triangle](https://learnopengl.com/Getting-started/Hello-Triangle)

Primeri:
- [hello_triangle](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/2.1.hello_triangle)
- [hello_triangle_extra_attrib](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/2.8.hello_triangle_extra_attrib)
- [hello_triangle_indexed](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/2.2.hello_triangle_indexed)
- [hello_triangle_index_extra_attrib](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/2.7.hello_triangle_indexed_extra_attrib)
- [hello_tirangle_glcall_error](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/2.9.hello_triangle_glcall_error)

Snimci:
- [Hello Triangle](https://www.youtube.com/watch?v=FUTjyNe1eKY&list=PLD-fbfqEboxyzhQpaa_5SoNwKIOXoY5uj&index=9)
- [Hello Triangle - VBO, VAO](https://www.youtube.com/watch?v=BdQ-bxc3maw&list=PLD-fbfqEboxyzhQpaa_5SoNwKIOXoY5uj&index=10)
- [Hello Triangle - Shader](https://www.youtube.com/watch?v=ZQz_wxwHVj0&list=PLD-fbfqEboxyzhQpaa_5SoNwKIOXoY5uj&index=11)
- [Hello Triangle - EBO](https://www.youtube.com/watch?v=7aUZexYV_cY&list=PLD-fbfqEboxyzhQpaa_5SoNwKIOXoY5uj&index=12
- [Hello Triangle - Indexed](https://www.youtube.com/watch?v=E8gjdhYa-4w&list=PLD-fbfqEboxyzhQpaa_5SoNwKIOXoY5uj&index=13)
- [Debugging](https://www.youtube.com/watch?v=FXDM6HrIzIA&list=PLD-fbfqEboxyzhQpaa_5SoNwKIOXoY5uj&index=14)

Glavni koncepti:
- **Grafička protočna obrada**
- Šejderi
- Vertex Array Object
- Vertex Buffer Object
- Element Buffer Object

---

### 03 Šejderi i Teksture
Lekcije:
- [Shaders](https://learnopengl.com/Getting-started/Shaders) [video](https://youtu.be/JyYwUaZicxQ) [video](https://youtu.be/2kdH7_39AWo)  
- [Textures](https://learnopengl.com/Getting-started/Textures) [video](https://youtu.be/1Hxf4UvPcS4)
- [Interpolacija trougla](https://codeplea.com/triangular-interpolation)
  
Primeri:
- [Shaders - Uniform](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/3.1.shaders_uniform)
- [Shaders - Interpolation](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/3.2.shaders_interpolation)
- [Shaders - Class](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/3.3.shaders_class)
- [Textures](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/4.1.textures)
- [Textures - Combined](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/4.1.textures)
- [Textures - Attribs](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/4.7.shaders_position_color_texture_uniform_mix)

Glavni koncepti:
- Programiranje GPU - Šejderi
- Vertex i Fragment šejder
- **Fragment interpolacija**
- Mapiranje tekstura
- Mipmaps  

--- 

### 04 Koordinatni sistemi i Kamera

Lekcije:
- [Transformations](https://learnopengl.com/Getting-started/Transformations) [video](https://youtu.be/b8wFCYJErLw)
- [Coordinate systems](https://learnopengl.com/Getting-started/Coordinate-Systems)  [video](https://youtu.be/PVNk8XNLAQ0)
- [Camera](https://learnopengl.com/Getting-started/Camera): pozicija, pogled, opseg [video intro](https://youtu.be/Asm2eEAa8Ys)

Primeri:
- [Transformations](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/5.1.transformations)
- [Coordinate systems](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/6.1.coordinate_systems)
- [Coordinate systems - Depth](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/6.2.coordinate_systems_depth)
- [Coordinate systems - Multiple](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/6.3.coordinate_systems_multiple)

Glavni koncepti:
- Matrične operacije: translacija, skaliranje, rotacija
- **Transformacije: Model -> View -> Projection -> NDC -> Screen**
- **Koordinatni sistemi: Local -> World -> View -> Clip -> Screen**
- Kamera

---

### 05 Kamera - kretanje
Lekcije:
- [Camera](https://learnopengl.com/Getting-started/Camera) -[Video camera rotation](https://youtu.be/9GHfHALyIj0) [Video camera class](https://youtu.be/wgE_E4902NE)

Primeri:
- [Camera - keyboard](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/7.2.camera_keyboard_dt)
- [Camera - mouse](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/7.3.camera_mouse_zoom)
- [Camera - class](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/1.getting_started/7.4.camera_class)

Glavni koncepti:
- Koordinatni sistem kamere
- LookAt matrica
- Vektori kamere
- Kretanje kamere
- Uglovi rotacije kamere

---
### Kraj gradiva za I kolokvijum
---

### 06 Osvetljenje - Fongov model

Lekcije: 
- [Colors](https://learnopengl.com/Lighting/Colors) [video](https://youtu.be/8g8kZQ7Q_Xs)
- [Basic lighting](https://learnopengl.com/Lighting/Basic-Lighting) [video](https://youtu.be/NhzU6gIYkSM) 
- [Materials](https://learnopengl.com/Lighting/Materials) [video](https://youtu.be/O_n9oh7BuG4) 
- [Lighting maps](https://learnopengl.com/Lighting/Lighting-maps) [video](https://youtu.be/RXvi0umB4lo)

Primeri:
- [Colors](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/1.colors)
- [Diffuse lighting](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/2.1.basic_lighting_diffuse)
- [Specular lighting](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/2.2.basic_lighting_specular)
- [Materials](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/3.1.materials)
- [Lighting maps - Specular](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/4.1.lighting_maps_diffuse_map)
- [Lighting maps - Diffuse](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/4.2.lighting_maps_specular_map)

Glavni koncepti:
- **Fongov model osvetljenja: ambient + diffuse + specular**
- Materijali
- Lighting maps - tekstura osvetljenja

---

### 07 Tipovi izvora svetlosti
Lekcije: 
- [Light casters](https://learnopengl.com/Lighting/Light-casters): direkciono, tačkasto, koncentrisano [video](https://youtu.be/MEPziIv_TJI) 
- [Multiple lights](https://learnopengl.com/Lighting/Multiple-lights): direkciono, tačkasto [video](https://youtu.be/PwkLzp0dNjQ)
- [Rekaputilacija svetlosti](https://learnopengl.com/Lighting/Review)

Primeri:
- [Light casters - Directional](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/5.1.light_casters_directional)
- [Light casters - Point](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/5.2.light_casters_point)
- [Light casters - Spot](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/5.3.light_casters_spot)
- [Light casters - Soft Spot](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/5.4.light_casters_spot_soft)
- [Multiple lights](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/2.lighting/6.multiple_lights)

Glavni koncepti:
- **Tipovi izvora svetlosti: direkciono (directional), tačkasto (point), usmereno (spot)**
- Scene sa više svetala

---

### 08 OpenGL - Napredni koncepti

Lekcije:
- [Depth testing](https://learnopengl.com/Advanced-OpenGL/Depth-testing): Bafer dubine, funkcija testiranja dubine, preciznost vrednosti dubine, vizuelizacija bafera dubine, z-bafer, [z-value math](http://www.songho.ca/opengl/gl_projectionmatrix.html) [video](https://youtu.be/YYvCxTxnaIg)
- [Blending](https://learnopengl.com/Advanced-OpenGL/Blending): providnost, odbacivanje fragmenata, utapanje, prikaz polu-providnih tekstura [video](https://youtu.be/gpxO2HVAIm4)
- [Face culling](https://learnopengl.com/Advanced-OpenGL/Face-culling): winding number, odsecanja [video](https://youtu.be/TtejUXP18Cs)
- [Cubemaps](https://learnopengl.com/Advanced-OpenGL/Cubemaps): kreiranje, skybox, mapiranje okruženja, dinamične mape okruženja [video](https://youtu.be/dxO4CFc0N98) [video](https://youtu.be/3Mx88eYNuyY)
- [Advanced Lighting](https://learnopengl.com/Advanced-Lighting/Advanced-Lighting): Blinn-Phong [video](https://youtu.be/CJcRTXwHYhg)
- [Advanced Data](https://learnopengl.com/Advanced-OpenGL/Advanced-Data): vertex atributi, baferi [video](https://youtu.be/k7KNRAUL3f0)
- [Advanced GLSL](https://learnopengl.com/Advanced-OpenGL/Advanced-GLSL): GLSL promenljive, interfejsi blokovi, uniform bafer objekti [video](https://youtu.be/RQtRSRlYYvo)

Primeri:
- [Depth Testing](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/4.advanced_opengl/1.1.depth_testing)
- [Depth Testing View](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/4.advanced_opengl/1.2.depth_testing_view)
- [Blending - Discard](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/4.advanced_opengl/3.1.blending_discard)
- [Blending - Sort](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/4.advanced_opengl/3.2.blending_sort)
- [Face Culling](https://github.com/matf-racuhttps://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/4.advanced_opengl/6.1.cubemaps_skyboxnarska-grafika/LearnOpenGL/tree/master/src/4.advanced_opengl/4.1.face_culling_example)
- [Face Culling Cubes](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/4.advanced_opengl/4.2.face_culling_cubes)
- [Cubemaps - skybox](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/4.advanced_opengl/6.1.cubemaps_skybox)
- [GLSL - Interface blocks](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/4.advanced_opengl/7.4.advanced_glsl_interface_blocks)
- [GLSL - Uniform Buffer Objects](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/4.advanced_opengl/8.advanced_glsl_ubo)

Glavni koncepti:
- **Nelinearnost funkcije dubine fragmenata**
- Providnost objekata
- Odsecanje stranica
- 3D teksture - Cubemaps
- GLSL UBO - Uniform Buffer Objects 
- GLSL Direct State Access (DSA)

---

### 09

Lekcije:
- [Assimp](https://learnopengl.com/Model-Loading/Assimp): instalacija i korišćenje biblioteke [video](https://youtu.be/eqiVRAAoh-w)
- [Mesh](https://learnopengl.com/Model-Loading/Mesh): modeli i optimizacije [video](https://youtu.be/5_jyzp94L1c) 
- [Modeli](https://learnopengl.com/Model-Loading/Model): formati i učitavanje modela [video](https://youtu.be/tpmmM0lI1BI) 
- [Model and Lighting](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/3.model_loading/2.model_lighting): Model i osvetljenje [video](https://youtu.be/yl9716rp97g)
- [ImGui](https://github.com/ocornut/imgui): GUI biblioteka [video](https://youtu.be/NW3Xk1RaZ10) [video](https://youtu.be/5NLdqTFh6Wk)
- [Blender](https://youtube.com/watch?v=4DQquG_o-Ac): kako konvertovati bilo koji model u Blenderu tako da radi sa trenutnom implementacijom učitavanja modela

Primeri:
- [Model loading](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/3.model_loading/1.model_loading)
- [Model lighting](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/3.model_loading/2.model_lighting)

Glavni koncepti:
- Formati modela
- Assimp
- Mesh
- Model

---

### 10 

Lekcije:
- [Framebuffers](https://learnopengl.com/Advanced-OpenGL/Framebuffers) [video](https://youtu.be/rNiJcfrtQJM)

Primeri:
- [Framebuffers](https://github.com/matf-racunarska-grafika/LearnOpenGL/tree/master/src/4.advanced_opengl/5.1.framebuffers)

Glavni koncepti:
- Framebaferi
- Renderovanje u teksturu
- Renderbaferi
- Post-processing

---
### Kraj gradiva za II kolokvijum
---

## Napredni efekti računarske grafike

-[Bloom <- HDR <- Framebuffers](https://learnopengl.com/Advanced-Lighting/Bloom): ekstrakovanje blještavih boja, Gausov blur, blending [video](https://youtu.be/m2lJ800T42o)

-[Point shadows <- Shadow Mapping <- Framebuffers](https://learnopengl.com/Advanced-Lighting/Shadows/Point-Shadows): omnidirekcione mape senki, PCF [video](https://youtu.be/1VT9HOyiut4)

-[Deffered Shading <- Framebuffers](https://learnopengl.com/Advanced-Lighting/Deferred-Shading): G-bafer

---

### Dodatno
-[Instancing](https://learnopengl.com/Advanced-OpenGL/Instancing): primer (polje asterioda) [video](https://youtu.be/MA-eEBPRMJ8)


-[Geometry Shader](https://learnopengl.com/Advanced-OpenGL/Geometry-Shader): korišćenje, eksplodirajući objekti [video](https://youtu.be/dFGH735D7ik)

-[Advanced Lighting](https://learnopengl.com/Advanced-Lighting/Advanced-Lighting): Blinn-Phong [video](https://youtu.be/CJcRTXwHYhg)

-[Gamma Correction](https://learnopengl.com/Advanced-Lighting/Gamma-Correction): sRGB teksture [video](https://youtu.be/eXhWwqU1eiA)

-[Stencil testing](https://learnopengl.com/Advanced-OpenGL/Stencil-testing): odbacivanje fragmenata, stencil funkcije, ivičenje objekata [video](https://youtu.be/M08BirB3OH8) 

-[Anti Aliasing -> Framebuffers](https://learnopengl.com/Advanced-OpenGL/Anti-Aliasing): multisampling, MSAA, Off-screen MSAA [video](https://youtu.be/2M3vx5W6LTQ)

-[Text Rendering](https://learnopengl.com/In-Practice/Text-Rendering): prikazivanje teksta

-[Parallax Mapping -> Normal mapping](https://learnopengl.com/Advanced-Lighting/Parallax-Mapping): paralaks mapiranje, koso paralaks mapiranje, paralaks absorbovanje [video](https://youtu.be/Rqj_yDFALWk)

-[SSAO -> Framebuffers](https://learnopengl.com/Advanced-Lighting/SSAO)

-[Shadow mapping](https://learnopengl.com/Advanced-Lighting/Shadows/Shadow-Mapping): mapa senki, mapa dubine, renderovanje senki, PCF [video](https://youtu.be/E5UCOrG9gJI)

-[Normal mapping](https://learnopengl.com/Advanced-Lighting/Normal-Mapping): mapiranje normala, tangenti prostori, kompleksni objekti [video](https://youtu.be/51Q_vZ0BuKU)

-[HDR](https://learnopengl.com/Advanced-Lighting/HDR): Floating point buffers, Tone mapping, Exposure [video](https://youtu.be/4bMwMTA8BEw)


### Licenca
Materijali kursa su bazirani na [www.learnopengl.com](www.learnopengl.com) sajtu napravljenom od strane [Joey De Vries](https://joeydevries.com/#home) i kao takvi spadaju pod [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) licencu. Celokupan tekst licence možete pronaći [ovde](https://creativecommons.org/licenses/by/4.0/legalcode).

Examples used in this course are based on [www.learnopengl.com](www.learnopengl.com) tutorials by [Joey De Vries](https://joeydevries.com/#home) and as such are licensed under [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/). Full text of the licence can be found [here](https://creativecommons.org/licenses/by/4.0/legalcode).

