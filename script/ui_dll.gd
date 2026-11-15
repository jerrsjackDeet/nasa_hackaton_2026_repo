extends Control

func _process(delta: float) -> void:
	
	if Varglob.nowday == Varglob.day.day1:
		$day.text = "Day 1"
	if Varglob.nowday == Varglob.day.day2:
		$day.text = "Day 2"
	if Varglob.nowday == Varglob.day.day3:
		$day.text = "Day 3"
	
