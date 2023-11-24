extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var arr = [false, false, false]

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			if not arr[0]:
				$RichTextLabel.text = "Do you want to go on a date?"
				$Button.visible = true
				$Button2.visible = true
				arr[0] = true



func _on_button_pressed() -> void:
	if arr[0] and not arr[1]:
		$RichTextLabel.text = "Oh Sick then let's go."
		arr[1] = true
		$Button.visible = false
		$Button2.visible = false
		await get_tree().create_timer(1).timeout
		$AnimationPlayer.play("knightro_dance")
		



func _on_button_2_pressed() -> void:
	if arr[0] and not arr[1]:
		$RichTextLabel.text = "I hate you please go with me :pleading_face_emoji:"
		$Button.visible = false
		$Button2.visible = false
		arr[0] = false
		await get_tree().create_timer(1).timeout
		$RichTextLabel.text = "Do you want to go on a date?"
		$Button.visible = true
		$Button2.visible = true
		arr[0] = true
		
	
