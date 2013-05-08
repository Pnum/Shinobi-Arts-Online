mob
	verb
		test()
			set hidden=1
			src.Test()

		cfg()
			set hidden=1
			src.Cfg()

		saytoserver(Msg as text)
			world << Msg
			world.Export("[addr]:[port]?shout:[src] says [Msg]")

		say(msg as text)
			world << "[src] says [msg]"

mob
	verb
		portchange()
			set category="Debug"
			var/portnew =input("Enter a new port e.g 5553") as num
			port=portnew

	verb
		Adresschange()
			set category="Debug"
			var/addresnew =input("enter a new adress without e.g 86.164.127.248") as text
			addr="[addresnew]"





var/tmp/connected=0

mob
	proc
		Test()
			var/p = world.Export("[addr]:[port]#ping")
			src << "Ping returned '[p]'."
			if(p&&!connected)
				spawn() AutoUpdate()
				connected=1

		Cfg()
			world.Export("[addr]:[port]#log")
			var/savefile/X=new(world.Import())
			if(X)
				src << "Success."
				src << X

