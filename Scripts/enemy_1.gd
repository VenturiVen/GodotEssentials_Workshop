# This is the script where the enemy1's code is handled

# To leave a comment, prefix a line with a '#'

# This means we are getting the attributes of an Area2D 
# (Our 'enemy1' node is a node of type Area2D)
# Area2D nodes are typically used for objects that detect other bodies (like player) entering its collision
extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# This prints to the terminal during the game play (the 'Output' tab)
	print("Enemy Instantiated")
	
	
	# this variable is used to generate a new random number using the RandomNumberGenerator class
	# to use it, type 'rng' followed by a '.' to see all the possible ways to use this variable
	var rng := RandomNumberGenerator.new()
	
	
	# this gets the viewport width (can be changed in Project -> Project Settings)
	var width = get_viewport().get_visible_rect().size[0] 
	
	
	# generate two random numbers, x and y
	# rng.randi_range() allows you to generate a random number between two numbers
	var random_x = rng.randi_range(0, width) # generates a random number between 0 and the screen's pixel width 
	var random_y = rng.randi_range (-150, -50) # generates a random number between -150 and -50
	
	
	# sets the enemy's position to a Vector2(x,y), basically a co-ordinate
	# set the x and y co-ordinates to our randomly generated variables
	position = Vector2(random_x, random_y)

# ----- ASCTIVITY 3 ----- 
# Enter or change code in this function to solve activity 3
# func _process() is called every frame. 'delta' is the elapsed time since the previous frame.
	# delta is used for making movement and time-based operations
	# delta is a more advanced topic to understand, you do not have to know it for this activity
	# makes code consistent across different frame rates. (https://www.dragonflydb.io/faq/godot-when-to-use-delta) 
	# remember to look at the previous code above for help!
func _process(delta: float) -> void:
	
	
	
	# Enemy movement calculation:
	# Every frame, variable 'position' is set to this new value
	position += Vector2(0, 1.0) * 200 * delta


# this function runs when the enemy's collision hits another body's collision
func _on_body_entered(_body: Node2D) -> void:
	print("Enemy Destroyed")
	queue_free()
	
