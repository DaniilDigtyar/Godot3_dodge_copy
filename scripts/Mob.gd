extends RigidBody2D

export (int) var min_speed
export (int) var max_speed
var mob_types = ["fly", "swim", "walk"]

func _ready():
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	pass

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # replace with function body
