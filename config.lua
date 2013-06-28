/*
Only change stuff in here!
*/
NPCSHOP = NPCSHOP or {}
NPCSHOP.CarSpawn = {
	pos = Vector(-2820.945068, -893.075684, -131.968750),
	ang = Angle(34.187996, -3.924011, 0.000000)
	}
NPCSHOP.NPCSpawn = {
	pos = Vector(-2673.206543, -552.165283, -139.968750),
	ang = Angle(19.007977, -92.496101, 0.000000)
	}

/*
Edit stuff below this line
**************************
*/
// Model of the NPC, can be changed to whatever you want, as long as it follows this path of models/<modelname>.mdl
NPCSHOP.NPCModel = "models/vortigaunt.mdl"

//Position of the NPC, in YOUR console, type getpos to get positioning co-ordinates

NPCSHOP.NPCSpawn["rp_<mapname>"] = { //Put the actual map name in
	pos = Vector(0, 0, 0),
	ang = Angle(0, 0, 0)
}

//Position for the carspawn

NPCSHOP.CarSpawn["rp_<mapname>"] = {
	{
		pos = Vector(0, 0, 0),
		ang = Angle(0, 0, 0)
	},
}


//Which ULX usergroups are considered "VIP"
NPCSHOP.UserGroups = {"vip", "admin"}

/*
Add vehicles here.

The jobrestriction is abit wonky, in darkrp you can just do like {TEAM_POLICE, TEAM_CHIEF, TEAM_MAYOR} but it doesn't really work the same here.
Jobrestriction is put with {1,2,3} where 1, 2 and 3 are the team numbers of those teams, in order to get the team numbers, just go ingame, open console
using F11 and type "lua_run_cl print(TEAM_CITIZEN)" which will give you the team number for citizen. You can also get the teamnumber of your current
team by typing "lua_run_cl print(LocalPlayer():Team())"
If you add or remove darkrp teams, this process (in some cases) have to be done again!

NPCSHOP.AddVehicle(name, class, model, price, jobrestriction, viponly)
name: Name of the vehicle in the npcshop menu
class: Vehicle-class of the vehicle. Use "rp_getvehicles" to find these.
model: Model which will appear in the npcshop menu
price: How much it costs
jobrestriction: What jobs will be able to buy this (type nil if its available to all jobs)
viponly: Is this vehicle only available for VIP's? true/false
Display name > Class (rp_getvehicles in console) > Model directory > Price > Jobs > VIP/Not VIP - False = Not VIP, True = VIP
*/
NPCSHOP.AddVehicle("Jeep", "Jeep", "models/buggy.mdl", 50000, nil, false )
NPCSHOP.AddVehicle("Airboat", "Airboat", "models/airboat.mdl", 100000, nil, true )
