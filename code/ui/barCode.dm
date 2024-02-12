obj/bar/overlay
	icon = 'healthBar.dmi'
	icon_state = "overlay"
	pixel_y = 17 // up
	pixel_x = -7
	layer = 100 // infront

obj/bar/fill
	icon = 'healthBar.dmi'
	icon_state = "fill"
	pixel_y = 17
	pixel_x = -7
	layer = 99 // behind overlay

mob/proc/HealthCheck()
	var/obj/bar/overlay/o = new()
	var /obj/bar/fill/h = new()
	var matrix/m = new()
	src.overlays -= src.healthBar
	src.overlays -= h
	src.overlays -= o
	src.overlays += o
	m.Scale(src.health/src.healthMax,1)
	h.transform = m
	src.healthBar = h
	src.overlays += h