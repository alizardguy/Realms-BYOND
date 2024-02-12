// Make mobs move 8 pixels per tick when walking

mob
	step_size = 8
	var
		canMove = TRUE
		health = 100
		stamina = 100
		healthMax = 100
		staminaMax = 100
		healthBar

	Move()
		if(canMove)
			..() // allow move to run if canMove is true

	player
		icon = 'player.dmi'
		icon_state = "normal"


	proc
		Eat(passedFood)
			switch(passedFood) // Yummy heal berry
				if("Berry")
					src << "You ate a berry, it tastes sweet"
					if(src.health < src.healthMax - 4)
						src.Heal(5)
						src << "You health is now [src.health]"

				if("Poison Berry") // Icky hurt berry
					src.Hurt(5)
					src << "You ate a berry, it tastes tart"
					src << "You health is now [src.health]"

				else
					usr << "Invalid food item"
