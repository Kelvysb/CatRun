extends KinematicBody2D

export var gravidade = 800.0 
export var velocidade = Vector2(300.0, 800.0)
export var desaceleracao = 10.0
export var forca_pulo = 350.0
var movimento = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var direcao = calcular_direcao()
	
	movimento = calcular_movimento(direcao, movimento, delta)
		
	move_and_slide(movimento, Vector2.UP)
	
func calcular_direcao():
	return Vector2(
		Input.get_action_strength("Mover_Direita") - Input.get_action_strength("Mover_Esquerda"),
		-1.0 if Input.is_action_just_pressed("Pular") and is_on_floor() else 1.0
	)
	
func calcular_movimento(direcao, movimento, delta):
		
	
	var novo_movimento = movimento
	
	print(abs(novo_movimento.x))
		
	if direcao.y == 1.0:
		novo_movimento.y = novo_movimento.y + (gravidade * delta) if novo_movimento.y < velocidade.y else velocidade.y
	else:
		novo_movimento.y = forca_pulo * direcao.y
		
	if direcao.x != 0.0:
		novo_movimento.x = novo_movimento.x + (direcao.x * velocidade.x * delta) if abs(novo_movimento.x) < velocidade.x else direcao.x * velocidade.x
	else: 
		novo_movimento.x -= desaceleracao * novo_movimento.x * delta
		
	return novo_movimento
	
	
