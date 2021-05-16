# workshop de desenvolvimento de jogos


## Pré-requisitos:

* **Godot Engine**
    Programa que usaremos para desenvolver nosso jogo, o Godot, que é um "Game engine" ou motor de jogo de código aberto, um programa que simplifica e abstrai o desenvolvimento de jogos.
    O Godot não precisa ser instalado, é só baixar, extrair e executar o programa (Ex. Godot_v3.3-stable_win64.exe), utilizaremos a versão mais 3.3, que é a mais recente.

    Baixe a versão mais recente clicando aqui: [Godot](https://downloads.tuxfamily.org/godotengine/3.3/Godot_v3.3-stable_win64.exe.zip).

    Para quem gosta de se aprofundar nas ferramente aqui esta a [documentação oficial em português ](https://docs.godotengine.org/pt_BR/stable/)

* **Sprites**
    Sprites são a arte que utilizaremos em nosso jogo, são desenhos do personagem em varias posições, desenhos do ambiente, etc.

    Os sprites que utilizaremos estão aqui: [Sprites](https://raw.githubusercontent.com/Kelvysb/CatRun/main/docs/Assets.zip).

* **Noções básicas de desenvolvimento**
    Para a parte logica do nosso jogo utilizaremos a linguagem de programação GDScript, linguagem baseada em Python, sendo assim noções básicas de desenvolvimento em Python são essenciais para o workshop, para  os iniciantes na área de desenvolvimento recomendo assistir alguns tutoriais básicos sobre Python.
    Recomendo este excelente curso gratuito de programação em Python: [Curso de Python](https://www.youtube.com/playlist?list=PLHz_AreHm4dlKP6QQCekuIPky1CiwmdI6)

* **Uma toalha**
    Essencial - uma toalha de sua preferência.

## Bonus

### Arte digital

Neste workshop não focaremos no processo artístico do jogo, mas caso deseje se aprofundar neste universo criativo, vou deixar aqui algumas recomendações.

* **PixelArt**

    no nosso jogo utilizaremos um estilo conhecido como PixelArt (ou Arte em pixels), este estilo remete ao jogos antigos, com um toque de modernidade, para iniciantes é um ótimo lugar para começão a desenvolver sua criatividade, e para os mais avançados pode se tornar um estilo desafiador, com inúmeras possibilidades.

    Um ótimo curso de PixelArt gratuito (em inglês): [Pixel art 101](https://www.youtube.com/playlist?list=PLmac3HPrav-9UWt-ahViIZxpyQxJ2wPSH)


    Programas que recomendo para criar PixelArt:

    - **Aseprite** - O mais completo editor especializado em PixelArt, possibilita criar imagens estáticas e animações, com um conjunto completo de ferramentas para ajudar no processo, e é muito fácil de se utilizar, pode ser encontrado no [site oficial](https://www.aseprite.org/) ou na [Steam](https://store.steampowered.com/app/431730/Aseprite/).

    - **Pyxel Edit** - Outro programa especializado em PixelArt, neste caso especificamente na criação de TileSets que são as partes que compõem os cenários, em uma versão futura do Aseprite esta funcionalidade estará presente de acordo com os desenvolvedores, mas por enquanto esta ainda e a melhor ferramenta para este proposito, pode ser encontrado no [site oficial](https://pyxeledit.com/).

    - **Paint** - Quem não tem colírio usa óculos escuros, caso esteja fácil de mais e você que  um desafio de outro nível, *PixelArt Raiz*


* **Arte 3D**
Para os que quiserem se aventurar no mundo da arte 3D, deixo antes das recomendações um aviso, as ferramentas são bem mais robustas e o processo é bem mais complexo, mas mesmo assim não menos apaixonante.
Programas:
    - Blender - Ferramenta de código aberto para modelagem 3D, pintura digital 3D e renderização, pode ser encontrado no site oficial [Blender](https://www.blender.org/).
    [Curso de Blender](https://www.youtube.com/playlist?list=PLrYLf1JihKtb5pbeR6fX1bMoREsjJn0Q_&ab_channel=DanielFranco)
    - Substance Painter - Ferramenta avançada para texturização de modelos 3D, um pouco cara, mas para quem quer avançar no mundo da arte 3D uma ferramenta essencial para obter resultados incríveis, não parece tão caro depois de ver o video de apresentação do programa, [Site oficial](https://www.substance3d.com/products/substance-painter/), no [Steam](https://store.steampowered.com/app/1454900/Substance_Painter_2021/)

## WorkShop

### **Criando um projeto**

* No gestor de projetos do Godot podemos escolher um projeto existente ou criar um novo clicando em 'Novo Projeto'(1), podemos então escolher o nome(3) de nosso projeto e a pasta onde o guardaremos(2), com o botão 'Criar Pasta' (4) será criada uma pasta vazia com o nome de nosso projeto. finalmente podemos clicar em 'Criar e Editar' (5).



![Godot_01](./docs/Godot_01.png)
* Na tela principal do Godot podemos identificar as partes mais importantes que utilizaremos: 
    * 1 - O Modo, nele podemos escolher como visualizaremos a nossa cena, em 3D, em 2D ou visualizar nossos scripts.
    * 2 - O Viewport, ele e nosso espaço de trabalho aonde montaremos nossas cenas e scripts.
    * 3 - Visualizador de cena, aqui podemos ver os elementos que compõe nossa cena, adicionar novos nós, remover nós, reordenar, etc.
    * 4 - Sistema de arquivos, aqui visualizamos onde estão guardados os arquivos de nosso projeto, por aqui podemos adicionar novas cenas e atores, bem como usar os assets (Imagens, sons, etc.).
    * 5 - Inspetor, aqui podemos alterar as propriedades dos nós que selecionamos visualizador de cenas.
    * 6 - Controle de jogo, aqui podemos testar nosso jogo.
![Godot_02](./docs/Godot_02.png)
* Primeiramente vamos copiar para a pasta e nosso projeto os assets, podemos fazer isso no próprio explorador de arquivos do windows o Godot vai identificar a pasta nova e vai importar para o projeto os assets.
![Godot_03](./docs/Godot_03.png)
* E por fim vamos criar uma pasta chamada 'src' (source) on guardaremos nossas cenas, atores e scripts.
![Godot_04](./docs/Godot_04.png)

### **Criando um personagem**
* Para criar nosso personagem vamos ate o visualizador de cenas, e clicaremos em Outro nó, na janela que aparecerá podemos procurar por 'KinematicBody2D', essa será a base para nosso personagem (ator).
![Godot_05](./docs/Godot_05.png)
* Agora podemos salvar nosso personagem com 'CTRL+S' para isso escolhemos como pasta de destino a pasta 'src' que criamos a pouco.
![Godot_06](./docs/Godot_06.png)
![Godot_07](./docs/Godot_07.png)
* No visualizador de cenas podemos renomear nosso ator de 'KinematicBody2D' para 'Personagem' para facilitar nossa visualização.
Com o nó do personagem selecionado podemos clicar no botão '+' para adicionar um novo sub-nó ao nosso ator, procuraremos por 'CollisionShape2D', que será responsável a dar uma forma física ao nosso personagem.
![Godot_08](./docs/Godot_08.png)
* Com o 'CollisionShape2D' selecionado podemos ir ao 'inspetor' do outro lado da tela, e selecionar uma forma para nosso 'CollisionShape2D', no caso escolheremos um retângulo.
![Godot_09](./docs/Godot_09.png)
* Agora com o nó do personagem selecionado clicaremos mais uma vez no botão '+' para adicionar um nó chamado 'Sprite' este é responsável por dar uma representação gráfica ao nosso ator.
![Godot_10](./docs/Godot_10.png)
* com o 'Sprite' selecionado podemos ir a nossa pasta d3e assets e arrastar o arquivo chamado 'sprites.png' até o inspetor no campo 'Texture', com isso daremos esta textura ao nosso ator.
![Godot_11](./docs/Godot_11.png)
* Porem esta textura contem toda a animação de nosso personagem, então temos que dizer no inspetor que esta imagem e uma composição, parta isso iremos ate a aba 'Animation' e mudaremos o valor ede 'HFrames' para 53, indicando que nosso arquivo de sprites e composto por 53 imagens dispostas na horizontal.
![Godot_12](./docs/Godot_12.png)
![Godot_13](./docs/Godot_13.png)
* Agora selecionando o nó 'CollisionShape2D' podemos visualizar o formato de do retângulo de colisão que dará ao nosso ator a sua forma física, podemos redimensiona-lo ate ele ficar um pouco menor que a imagem do sprite.
![Godot_14](./docs/Godot_14.png)
![Godot_15](./docs/Godot_15.png)
* Agora por fim podemos posicionar tanto o 'Sprite' quanto o 'Collisionshape2D' para que ambos fiquem imediatamente acima da linha vermelha (x) do 'viewport'.
![Godot_16](./docs/Godot_16.png)

* **Programando o personagem**

* Com nosso personagem selecionado podemos clicar no botão de adicionar script (2), e com isso criar um script relacionado a ele.
![Godot_18](./docs/Godot_18.png)
* Com isso podemos selecionar o modo script(1) para visualizar nosso código, inicialmente ele estará vazio apenas com uma função '_ready()', e mais uma função comentada '_process(delta)' que des-comentaremos e utilizaremos logo em seguida.
![Godot_19](./docs/Godot_19.png)

* Agora podemos adicionar nosso proveiro código, que será responsável por adicionar gravidade ao nosso ator.

```python
extends KinematicBody2D

export var gravidade = 1500

# Called when the node enters the scene tree for the first time.
func _ready():
    pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
			
	movimento.y += gravidade * delta

	movimento = move_and_slide(movimento, Vector2.UP)		
```

A variável 'gravidade'(1) guardará o valor da força que a gravidade terá sobre nosso ator,
já a variável 'movimento' (2) guardara a direção e força do movimento.
Na função '_process(delta)' incluiremos o acumulo de velocidade no eixo 'y' relacionado a gravidade, sempre multiplicando pelo parâmetro 'delta' que é a diferença de tempo entre os frames isso fará com que o movimento seja constante independente da velocidade do computador que o jogo estiver sendo executado.
Por fim chamaremos a função 'move_and_slide(movimento, Vector2.UP)', que é responsável por executar o movimento, o primeiro parâmetro e o movimento em si, e o segundo e para indicar ao Godot que a direção que consideramos para cima é 'UP' ou seja eixo 'y' para cima.
![Godot_20](./docs/Godot_20.png)


* Podemos então testar nosso jogo e veremos um gato caindo no canto da tela.
(ao clicar em 'Play' pela primeira vez o Godot perguntara qual a cena principal, basta selecionar o arquivo de nosso Personagem (Personagem.tscn))
![Godot_21](./docs/Godot_21.png)
![Godot_22](./docs/Godot_22.png)


### **Criando uma cena**
* Agora precisamos criar uma cena para que nosso ator possa interagir.
Primeiro vamos no explorador de arquivos e vamos clicar com o botão direito na pasta 'src', e logo em seguida em 'Nova Cena', colocaremos o nome de 'Estagio1', em seguida no visualizador de cena escolheremos 'Cena 2D'
![Godot_25](./docs/Godot_25.png)
![Godot_26](./docs/Godot_26.png)

* Depois de salvar nossa cena podemos clicar com o botão direto sobre ela no explorador de arquivos, para defini-la como cena principal, assis nosso jogo se iniciará por ela. 
![Godot_27](./docs/Godot_27.png)
* Agora vamos adicionar algo nesta cena, com o 'Node2D' selecionado no visualizador de cenas, vamos adicionar um nó chamado 'TileMap'.
![Godot_28](./docs/Godot_28.png)
* Com o 'TileMap' selecionado vamos no inspetor adicionar um novo 'TileSet', clique mais uma vez no 'TileSet' para abrir a janela de edição de TileSet.
![Godot_29](./docs/Godot_29.png)
* Arraste o 'WallTileSet.png' para area indicada (1).
![Godot_30](./docs/Godot_30.png)
* Selecionamos nosso TileSet(1) e clicaremos em 'Novo Autotile' (2).
![Godot_31](./docs/Godot_31.png)
* Clique em Região(1) e então no botão indicado (2), para subdividir nosso TileSet automaticamente em 9 partes iguais(3).
![Godot_32](./docs/Godot_32.png)
* Então vamos adicionar colisão ao nosso TileSet, basta clicar em 'Colisão' (1), então selecionar o tipo de colisão que adicionaremos, no cado será uma colisão retangular (2), então selecionamos a parte que desejamos adicionar a colisão e clicamos nela fazendo um movimento de arrastar para que a colisão preencha todo o quadrado selecionado (3). Repetimos o processo para todos os 9 quadrados.
![Godot_33](./docs/Godot_33.png)

* Agora em 'BitMask' (1), faremos um desenho para indicar ao Godot que partes são referentes aos cantos, a parte de cima, a parte do meio, etc. (2), basicamente quando queremos indicar que uma parte é um canto, selecionamos o canto oposto, como mostra a figura, quando queremos indicar que uma parte á superfície, marcamos um linha na parte inferior do quadrado, e por fim quando queremos indicar que faz parte do meio marcamos tudo, caso haja mais uma parte maraca da mesma maneira, o Godot desenhará estes tiles aleatoriamente, com uma proporção obedecendo a quantidade de tiles desenhados iguais, esta proporção pode ser mudada na aba 'prioridade'.
![Godot_34](./docs/Godot_34.png)

* Na aba 'Icone' selecionaremos o Tile principal, que no nosso caso será o tile do meio.
![Godot_35](./docs/Godot_35.png)

* Por fim com o 'TileMap' selecionado (1), vamos no inspetor alterar o tamanho do nossos tiles para 32 por 32 (2)
![Godot_36](./docs/Godot_36.png)
* Tendo feito estes passos basta agora desenhar nossa cena, adicionando chão, paredes e obstáculos, para apagar um tile basta clicar nele com o botão direito do mouse.
![Godot_37](./docs/Godot_37.png)
* Agora com o Node2D selecionado podemos a partir da nossa pasta 'src' arrastar nosso personagem (Personagem.tscn) para nossa cena(2). 
![Godot_38](./docs/Godot_38.png)
* Agora ao testar nosso jogo o personagem não mais cairá para fora da tela, e sim parará no chão que desenhamos com nossos tiles.
![Godot_39](./docs/Godot_39.png)

* **Controlando o personagem**
![Godot_40](./docs/Godot_40.png)
![Godot_41](./docs/Godot_41.png)
![Godot_42](./docs/Godot_42.png)
![Godot_43](./docs/Godot_43.png)
![Godot_44](./docs/Godot_44.png)
![Godot_45](./docs/Godot_45.png)
![Godot_46](./docs/Godot_46.png)
![Godot_47](./docs/Godot_47.png)

* **Animando o personagem**

![Godot_48](./docs/Godot_48.png)
![Godot_49](./docs/Godot_49.png)

![Godot_50](./docs/Godot_50.png)
![Godot_51](./docs/Godot_51.png)
![Godot_52](./docs/Godot_52.png)
![Godot_53](./docs/Godot_53.png)
![Godot_54](./docs/Godot_54.png)
![Godot_55](./docs/Godot_55.png)
![Godot_56](./docs/Godot_56.png)
![Godot_57](./docs/Godot_57.png)
![Godot_58](./docs/Godot_58.png)
![Godot_59](./docs/Godot_59.png)

![Godot_60](./docs/Godot_60.png)
![Godot_61](./docs/Godot_61.png)
![Godot_62](./docs/Godot_62.png)
![Godot_63](./docs/Godot_63.png)
![Godot_64](./docs/Godot_64.png)
![Godot_65](./docs/Godot_65.png)
![Godot_66](./docs/Godot_66.png)
![Godot_67](./docs/Godot_67.png)
![Godot_68](./docs/Godot_68.png)
![Godot_69](./docs/Godot_69.png)


![Godot_70](./docs/Godot_70.png)
![Godot_71](./docs/Godot_71.png)
![Godot_72](./docs/Godot_72.png)


* **Câmera**
![Godot_73](./docs/Godot_73.png)
![Godot_74](./docs/Godot_74.png)
![Godot_75](./docs/Godot_75.png)a

* **Itens**
![Godot_76](./docs/Godot_76.png)
![Godot_77](./docs/Godot_77.png)
![Godot_78](./docs/Godot_78.png)
![Godot_79](./docs/Godot_79.png)
![Godot_80](./docs/Godot_80.png)
![Godot_81](./docs/Godot_81.png)
![Godot_82](./docs/Godot_82.png)
![Godot_83](./docs/Godot_83.png)
![Godot_84](./docs/Godot_84.png)

* **Score**
![Godot_85](./docs/Godot_85.png)
![Godot_86](./docs/Godot_86.png)
![Godot_87](./docs/Godot_87.png)
![Godot_88](./docs/Godot_88.png)
![Godot_89](./docs/Godot_89.png)
![Godot_90](./docs/Godot_90.png)
![Godot_91](./docs/Godot_91.png)
![Godot_92](./docs/Godot_92.png)
![Godot_93](./docs/Godot_93.png)
![Godot_94](./docs/Godot_94.png)
![Godot_95](./docs/Godot_95.png)
![Godot_96](./docs/Godot_96.png)

* **Reset**
![Godot_97](./docs/Godot_97.png)
