extends KinematicBody2D

export var gravidade = 1500
export var velocidade = 800
export var forca_pulo = 500
export var friccao = 0.25
export var aceleracao = 0.1

var state_machine
var sprite
var movimento = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite = $Sprite
	state_machine = $AnimationTree.get("parameters/playback")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
			
	movimento.y += gravidade * delta
	
	var direcao = 0
	
	if Input.is_action_pressed("Mover_Direita"):
		direcao += 1
		sprite.set_scale(Vector2(1, 1))
	if Input.is_action_pressed("Mover_Esquerda"):
		direcao -= 1
		sprite.set_scale(Vector2(-1, 1))
	
	if direcao != 0:
		movimento.x = lerp(movimento.x, direcao * velocidade, aceleracao)
	else:		
		movimento.x = lerp(movimento.x, 0, friccao)
		
	movimento = move_and_slide(movimento, Vector2.UP)	
	
	var estado = "Parado"
	
	if abs(movimento.x) > 50 and abs(movimento.x) <= 400:
		estado = "Andando"
	
	if abs(movimento.x) > 400:
		estado = "Correndo"
		
	if Input.is_action_just_pressed("Pular"):
		if is_on_floor():
			movimento.y = forca_pulo * -1
			estado = "Pulando"
			
	state_machine.travel(estado)
