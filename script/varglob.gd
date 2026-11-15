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
var food_on = false
var health_on = false

enum day { day1, day2, day3}
var nowday




func _ready() -> void:
	nowday =  day.day3
func _process(delta: float) -> void:
	
	oksigen -= 0.5 * delta
	electrict = clamp(electrict, 0, 100)
	food = clamp(food, 0, 100)
	oksigen = clamp(oksigen, 0, 100)
	health = clamp(health, 0, 100)
	if hidro_on == true:
		food += 1 * delta
		electrict -= 0.5 * delta
		
	
