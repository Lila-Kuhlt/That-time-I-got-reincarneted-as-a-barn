extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const Projectile = preload("res://scenes/Projectile.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass


func _on_Area2D_body_entered(body):
	var projectile = Projectile.instance()
	add_child(projectile)
	pass # Replace with function body.
