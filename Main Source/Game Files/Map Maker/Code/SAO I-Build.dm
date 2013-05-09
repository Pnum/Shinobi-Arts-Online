proc/loaddata()
	usr.contents+=newlist(/buildable/DEFAULT/wall,/buildable/DEFAULT/denseobj,/buildable/DEFAULT/black,/buildable/DEFAULT/grass,/buildable/DEFAULT/tree)//default
	usr.contents+=newlist(/buildable/HIDEOUT/floor,/buildable/HIDEOUT/floorwithlinegap,/buildable/HIDEOUT/walls,/buildable/HIDEOUT/door)//sound
	usr.contents+=newlist(/buildable/HIDEOUT/wallsl,/buildable/HIDEOUT/wallstop,/buildable/HIDEOUT/candala)//sound
	usr.contents+=newlist(/buildable/HIDEOUT/candalb,/buildable/HIDEOUT/candalc)//sound
	loaddatamodule1()//HIDEOUT32
	loaddatamodule2()//FLOORING
	loaddatamodule3()//MOUNTAINS32
	loaddatamodule4()//TREES
	loaddatamodule5()//SNOW




buildable

//DEFAULTS
	DEFAULT
		wall
			name = "wall"
			icon ='wall.dmi'
			build=/buildable/DEFAULT/wall

		tree
			name = "tree"
			icon ='tree.dmi'
			build=/buildable/DEFAULT/tree

		black
			name = "black"
			icon ='black.dmi'
			build=/buildable/DEFAULT/black

		grass
			name = "grass"
			icon ='grass.dmi'
			build=/buildable/DEFAULT/grass


//SOUND SET
	HIDEOUT

		floor
			name="floor"
			icon='soundbase.dmi'
			icon_state="tile floor"
			build=/buildable/HIDEOUT/floor

		door
			name="door"
			icon='soundbase.dmi'
			icon_state="door"
			build=/buildable/HIDEOUT/door

		floorwithlinegap
			name="floor with line gap"
			icon='soundbase.dmi'
			icon_state="floorlg"
			build=/buildable/HIDEOUT/floorwithlinegap

		walls
			name="tile wall"
			icon='soundbase.dmi'
			icon_state="tile wall"
			build=/buildable/HIDEOUT/walls

		wallsl
			name="tile wall with light"
			icon='soundbase.dmi'
			icon_state="walll"
			build=/buildable/HIDEOUT/wallsl

		wallstop
			name="top of wall"
			icon='soundbase.dmi'
			icon_state="tow"
			build=/buildable/HIDEOUT/wallstop

		candala
			name="candal1"
			icon='soundbase.dmi'
			icon_state="candal1"
			build=/buildable/HIDEOUT/candala

		candalb
			name="candal2"
			icon='soundbase.dmi'
			icon_state="candal2"
			build=/buildable/HIDEOUT/candalb

		candalc
			name="candal3"
			icon='soundbase.dmi'
			icon_state="candal3"
			build=/buildable/HIDEOUT/candalc



