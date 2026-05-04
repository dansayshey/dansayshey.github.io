extends Camera2D

var target_pos = Vector2.ZERO
var smoothingVal = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	make_current() # makes this camera the current camera


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	acquire_target()


func acquire_target():
	var player_nodes = get_tree().get_nodes_in_group("player")
	if player_nodes.size() > 0:
		var player = player_nodes[0] as Node2D
		global_position = player.global_position
