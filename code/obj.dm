// Make objects move 8 pixels per tick when walking

obj
	step_size = 8
	density = 1

	Shrub
		density = 0
		icon = 'shrub.dmi'

		Bush
			icon_state = "bush"

		Berry_Bush
			icon_state = "berry bush"
			verb
				Pick_Red_Bush()
					set src in oview(1) // check if bush is within 1 tile of user
					usr.Eat("Berry")

		Poison_Berry_Bush
			icon_state = "poison berry bush"
			verb
				Pick_Purple_Bush()
					set src in oview(1) // check if bush is within 1 tile of user
					usr.Eat("Poison Berry")
