/datum/job/borderworld/lawman
	title = "Lawman"
	job_category = IS_GOVERNMENT
	total_positions = 1
	spawn_positions = 1
	alt_titles = list("Deputy", "Sherrif")
	selection_color = "#ccccff"

/datum/job/borderworld/lawman/equip(var/mob/living/human/H, skip_suit = 0, skip_hat = 0, skip_shoes = 0)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/det(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/lawman(H), slot_wear_suit)
	H.equip_to_slot_or_del(new /obj/item/clothing/head/cowboy_hat/wide(H), slot_head )

	// You are the law.
	var/obj/item/clothing/accessory/holster/waist/W = new(H)
	H.w_uniform.attackby(W, H)
	W.holster(new /obj/item/weapon/gun/composite/premade/revolver/a45/preloaded(H), H)
	H.wear_suit.attackby(new /obj/item/clothing/accessory/badge/sherrif(H), H)
	return ..(H,1,1,1)

/datum/job/borderworld/lawman/equip_survival(var/mob/living/human/H)
	return ..()