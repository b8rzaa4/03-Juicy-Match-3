extends Control

var countdown = 5

func _ready():
	_update_label()

func _on_Countdown_timeout():
	countdown -= 1
	_update_label()
	
func _update_label():
	$Countdown_label.text = "Starting in " + str(countdown)
	if countdown <= 0:
		hide()
		$Countdown.stop()
		get_tree().paused = false
