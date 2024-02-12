mob
	proc
		Hurt(amount)
			src.health -= 5
			src.HealthCheck()

		Heal(amount)
			src.health += 5
			src.HealthCheck()