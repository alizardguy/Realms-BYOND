// Make mobs move 8 pixels per tick when walking

mob
	step_size = 8
	var
		canMove = TRUE
		Health = 100

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
					world << "You ate a berry, it tastes sweet"
					if(Health < 96)
						src.Health += 5

				if("Poison Berry") // Icky hurt berry
					src.Health -= 5
					world << "You ate a berry, it tastes tart"

				else
					usr << "Invalid food item"
