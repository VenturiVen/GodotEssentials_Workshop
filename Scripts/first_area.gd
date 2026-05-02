# This is the script where the first area's code is handled

# To leave a comment, prefix a line with a '#'

# This means we are getting the attributes of a Node2D 
# (Our 'FirstArea' node is a node of type Node2D)
extends Node2D

# Loading the enemy's scene and storing as a variable
# PackedScene is a variable
var enemy1_scene: PackedScene = load("res://_Scenes/enemy1.tscn")

# When the timer times out, the following code is performed
func _on_timer_timeout() -> void:
	# Create an instance of the enemy scene 
	var enemy = enemy1_scene.instantiate()
	
	# Attach enemy node to the node 'Enemies'
	# Note the use of the '$' to reference the node!
	$Enemies.add_child(enemy)
