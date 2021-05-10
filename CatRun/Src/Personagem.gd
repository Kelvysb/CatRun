extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var gravidade = 10000.0
export var velocidade_maxima = Vector2(500.0, 1500.0)


var state_machine
var sprite
var ultima_direcao = 1.0
var velocidade = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite = $Sprite
	state_machine = $AnimationTree.get("parameters/playback")

func _physics_process(delta):
	var direcao = calcular_direcao()
	animacao(direcao)
	velocidade = calcular_velocidade(direcao, velocidade, velocidade_maxima)
	velocidade = move_and_slide(velocidade, Vector2.UP)

func calcular_direcao():
	return Vector2(
		Input.get_action_strength("Mover_Direita") - Input.get_action_strength("Mover_Esquerda"),
		-1.0 if Input.is_action_just_pressed("Pular") and is_on_floor() else 1.0
	)
	
func calcular_velocidade(direcao, velocidade, velocidade_maxima):
	var nova_velocidade = velocidade
	nova_velocidade.x = velocidade_maxima.x * direcao.x
	nova_velocidade.y += gravidade * get_physics_process_delta_time()
	if direcao.y == -1.0:
		nova_velocidade.y += velocidade_maxima.y * direcao.y
	return nova_velocidade

func animacao(direcao):	
	if direcao.x != 0.0:
		ultima_direcao = direcao.x
	sprite.set_scale(Vector2(ultima_direcao, 1))
	
	if velocidade.x == 0.0:
		state_machine.travel("Sentado")
	
	if abs(velocidade.x) > 0.0 and velocidade.x <= 300.0:
		state_machine.travel("Andando")
		
	if abs(velocidade.x) > 300.0:
		state_machine.travel("Correndo")
		
