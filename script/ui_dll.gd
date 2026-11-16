extends Control

func _process(delta: float) -> void:
	
	if Varglob.nowday == Varglob.day.day1:
		$day.text = "Day 1"
		$"../day_task1".visible = true
		$"../day_task2".visible = false
		$"../day_task3".visible = false
		$"../day_task4".visible = false
		$"../day_task5".visible = false
	if Varglob.nowday == Varglob.day.day2:
		$day.text = "Day 2"
		$"../day_task1".visible = false
		$"../day_task2".visible = true
		$"../day_task3".visible = false
		$"../day_task4".visible = false
		$"../day_task5".visible = false
	if Varglob.nowday == Varglob.day.day3:
		$day.text = "Day 3"
		$"../day_task1".visible = false
		$"../day_task2".visible = false
		$"../day_task3".visible = true
		$"../day_task4".visible = false
		$"../day_task5".visible = false
	if Varglob.nowday == Varglob.day.day4:
		$day.text = "Day 4"
		$"../day_task1".visible = false
		$"../day_task2".visible = false
		$"../day_task3".visible = false
		$"../day_task4".visible = false
		$"../day_task5".visible = true
	if Varglob.nowday == Varglob.day.day5:
		$day.text = "Day 5"
		$"../day_task1".visible = false
		$"../day_task2".visible = false
		$"../day_task3".visible = false
		$"../day_task4".visible = true
		$"../day_task5".visible = false
		
	if Varglob.dayend == true:
		$"../mission_complete".visible = true
	if Varglob.dayend == false:
		$"../mission_complete".visible = false
		
	if Varglob.winG == true:
		$"../wingood".visible = true
	else:
		$"../wingood".visible = false
		
	if Varglob.winP == true:
		$"../winperfect".visible = true
	else:
		$"../winperfect".visible = false
		
	if Varglob.losegame == true:
		$"../lose".visible = true
	else:
		$"../lose".visible = false
	
