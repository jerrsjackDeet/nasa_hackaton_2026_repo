extends VBoxContainer

@onready var elec_bar = $Electricity
@onready var food_bar = $food
@onready var o2_bar = $oksigen
@onready var health_bar = $health

@onready var elec_sum = $"../100_electrict"
@onready var food_sum = $"../101_food"
@onready var o2_sum = $"../102_o2"
@onready var health_sum = $"../103_health"

func _process(delta: float) -> void:
	
	elec_sum.text = str(int(Varglob.electrict)) + "/100 Kwh"
	food_sum.text = str(int(Varglob.food)) + "/100 Kg"
	o2_sum.text = str(int(Varglob.oksigen)) + "/10 Kg"
	health_sum.text = str(int(Varglob.health)) + "/100 Hp"
	
	
	elec_bar.value = Varglob.electrict
	food_bar.value = Varglob.food
	o2_bar.value = Varglob.oksigen
	health_bar.value = Varglob.health
	
	
