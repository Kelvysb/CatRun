extends Control

var score
var personagem

# Called when the node enters the scene tree for the first time.
func _ready():
	score = $MarginContainer/HBoxContainer/Score
	personagem = $"../../Personagem"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	score.text = str(personagem.moedas)
