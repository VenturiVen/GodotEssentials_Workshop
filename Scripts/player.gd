# This is the script where the player's code is handled

# To leave a comment, prefix a line with a '#'

# This means we are getting the attributes of a CharacterBody2D 
# (Our 'Player' node is a node of type CharacterBody2D)
extends CharacterBody2D


# func _ready() is called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# func _process() is called every frame.
func _process(_delta: float) -> void:
	# Getting direction vectors
	var direction= Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	# Calculating player velocity
	velocity = direction * 300
	
	# Function unique to the CharacterBody2D node
	move_and_slide()
