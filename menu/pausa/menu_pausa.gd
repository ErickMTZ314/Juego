extends Control

func _ready():
	$AnimationPlayer.play("RESET")

func _process(delta):
	esc()

func Continue():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	
func pause():
	$AnimationPlayer.play("blur")
	get_tree().paused = true
	
func esc():
	if Input.is_action_just_pressed("salir") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("salir") and get_tree().paused:
		Continue()

func _on_continuar_pressed() -> void:
	Continue()

func _on_opciones_pressed() -> void:
	pass

func _on_salir_a_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://menu/inicio/menu_inicio.tscn")
