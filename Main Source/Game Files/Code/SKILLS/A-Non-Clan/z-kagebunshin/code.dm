mob
	proc/Skillkagebunshin(k)
		switch(k)

/////////////////////KAGE BUNSHIN/////////////////

			if("KageShadow_Clone")
				src << output("[src]: Kage Shadow_Clone no-Jutsu! press L to revert back to yourself", "combatlog")
				src.KillShadow_Clone()
				var/mob/NPC/KShadow_Clone/A = new /mob/NPC/KShadow_Clone
				flick('smoke2.dmi',A)
				A.loc = locate(src.x,src.y-1,src.z)
				A.dir = src.dir
				A.owner = src
				A.icon = src.icon
				A.overlays=src.overlays
				A.health = 300

				src.controlled = A
				src.kagebunshd = 1
				src.client.eye = A

			if("TajuuKageShadow_Clone")
				src.KillShadow_Clone()
				src << output("[src]: Tajuu Kage Shadow_Clone no-Jutsu! press L to deactivate kage Shadow_Clones. Press F to make them attack your target..", "combatlog")
				if(src.chakra<=2000)//five
					src.tajnum=5
					src.chakra=0
					src.tajuu()//create 5 clonez
					src.bunsh=1

				if(src.chakra>=2001)//ten
					src.tajnum=10
					src.chakra=0
					src.tajuu()//create 10 clonez
					src.bunsh=1



