extends Node

var ask_in_post = false
var ask_out_post = false
var ask_in_hidro = false
var ask_in_o2 = false
var ask_in_health = false
var ask_in_elect = false

var electrict = 50
var food = 50
var oksigen = 50
var health = 50

var hidro_on = false
var o2_on = false
var elect_on = false
var health_on = false

enum day { day1, day2, day3, day4, day5}
var nowday

var badai_matahari
var debu_bulan

var dayend = false

func _ready() -> void:
	nowday =  day.day1
	badai_matahari = randi_range(day.day2, day.day5)
	debu_bulan = randi_range(day.day2, day.day5)
	print(badai_matahari)
func _process(delta: float) -> void:
	
	
	if nowday == day.day1:
		_day_1()
	elif nowday == day.day2:
		_day_2()
	elif nowday == day.day3:
		_day_3()
	elif nowday == day.day4:
		_day_4()
	elif nowday == day.day5:
		_day_5()
	
	if dayend == false:
		oksigen -= 0.2 * delta
		electrict = clamp(electrict, 0, 100)
		food = clamp(food, 0, 100)
		oksigen = clamp(oksigen, 0, 10)
		health = clamp(health, 0, 100)
		if hidro_on == true:
			food += 1 * delta
			electrict -= 0.5 * delta
		if o2_on == true:
			oksigen += 0.5 * delta
			electrict -= 1 * delta
		if elect_on == true:
			electrict += 1.35 * delta
			food -= 0.5 * delta
		if health_on == true:
			health += 2 * delta
			electrict -= 1 * delta
		
	
	elif electrict <= 0 or food <= 0 or oksigen <= 0 and health <= 0:
			get_tree().change_scene_to_file("res://scene/wingood.tscn")
	
	
	if dayend == true:
		if Input.is_action_just_pressed("ui_accept"):
			if nowday == day.day1:
				nowday = day.day2
			elif nowday == day.day2:
				nowday = day.day3
			elif nowday == day.day3:
				nowday = day.day4
			elif nowday == day.day4:
				nowday = day.day5
			dayend = false
		
func _day_1():
	if health >= 100:
		dayend = true
		
func _day_2():
	if food >= 80:
		dayend = true
func _day_3():
	if electrict >= 70:
		dayend = true
func _day_4():
	if food >= 100:
		dayend = true
func _day_5():
	if oksigen >= 10:
		if electrict >= 50 and food >= 50 and oksigen >= 10 and health >= 50:
			get_tree().change_scene_to_file("res://scene/winperfect.tscn")
		elif electrict <= 50 or food <= 50 or oksigen <= 50 and health <= 50:
			get_tree().change_scene_to_file("res://scene/wingood.tscn")
		
