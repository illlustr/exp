extends Node
func execute():
	_system.player_body.camera_distance = Vector2(2.5,2.5)
	self.queue_free()