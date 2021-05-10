extends KinematicBody2D

export var gravidade = 4000
export var velocidade = 800
export var forca_pulo = 900
export var friccao = 0.25
export var aceleracao = 0.1

var movimento = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	calcular_movimento(delta)
	
	movimento = move_and_slide(movimento, Vector2.UP)
	
	if Input.is_action_just_pressed("Pular"):
		if is_on_floor():
			movimento.y = forca_pulo * -1
	
	
func calcular_movimento(delta):
	
	var direcao = 0
	
	if Input.is_action_pressed("Mover_Direita"):
		direcao += 1
	if Input.is_action_pressed("Mover_Esquerda"):
		direcao -= 1
	
	if direcao != 0:
		movimento.x = lerp(movimento.x, direcao * velocidade, aceleracao)
	else:
		movimento.x = lerp(movimento.x, 0, friccao)
		
	movimento.y += gravidade * delta
