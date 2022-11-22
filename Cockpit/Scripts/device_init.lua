--mount_vfs_model_path(LockOn_Options.script_path.."../Cockpit/Shape")
--mount_vfs_texture_archives("Bazar/Textures/AvionicsCommon")


dofile(LockOn_Options.common_script_path.."tools.lua")
dofile(LockOn_Options.script_path.."devices.lua")
--dofile(LockOn_Options.script_path.."avRadar_example/radarexample_device_init.lua")


layoutGeometry = {}
			
MainPanel = {"ccMainPanel",LockOn_Options.script_path.."mainpanel_init.lua"}


attributes = {
	"support_for_cws",
}

creators = {}

--creators[devices.KNEEBOARD]                   = {"avKneeboard",LockOn_Options.common_script_path.."KNEEBOARD/device/init.lua"}
creators[devices.CLICKABLE]	 		            = {"avLuaDevice",LockOn_Options.script_path.."SYSTEMS/clickable.lua"}
creators[devices.PNT_UPD] 					    = {"avLuaDevice",LockOn_Options.script_path.."SYSTEMS/PNT_update.lua"}
creators[devices.BAY_DOORS]	                    = {"avLuaDevice",LockOn_Options.script_path.."Systems/bay_doors.lua"}
creators[devices.SONIC_BOOM]	                = {"avLuaDevice",LockOn_Options.script_path.."Systems/sonic_boom.lua"}
--creators[devices.ENGINE]                        = {"avLuaDevice",LockOn_Options.script_path.."Systems/Engine.lua"}
--creators[devices.OXYGEN_SYSTEM]                 = {"avLuaDevice",LockOn_Options.script_path.."Systems/oxygen_system.lua"}

--creators[devices.FBW]	                        = {"avLuaDevice",LockOn_Options.script_path.."Systems/fbw.lua"}
creators[devices.RADAR]		                    = {"avSimpleRadar",LockOn_Options.script_path.."Radar/Device/Radar_init.lua"}
--creators[devices.ELECTRIC_SYSTEM]	            = {"avSimpleElectricSystem",LockOn_Options.script_path.."Systems/electric_system.lua"}
--creators[devices.WEAPON_SYSTEM]	            = {"avSimpleWeaponSystem" ",LockOn_Options.script_path.."Systems/weapon_system.lua"}










indicators = {}


  
--indicators[#indicators + 1] = {"ccKneeboard",LockOn_Options.common_script_path.."KNEEBOARD/indicator/init.lua",devices.KNEEBOARD,{{},{sx_l = -0.65,sz_l =  0.15,sy_l = -0.5,ry_l =  10, rz_l = 85 ,sw = 0.142 * 0.5 - 0.1,sh = 0.214 * 0.5 - 0.1},nil}}
---------------------------------------------
--indicators[#indicators + 1] = 	{"ccIndicator",LockOn_Options.script_path.."avRadar_example/indicator/init.lua",
										--nil,
									--	devices.avionics,
										---{	
											--{},
											--{
											--sz_l = 0.0,sx_l = -0.50, sy_l =  -0.07  -- -0.14	-- -0.3
											--},
											--1
										--}
									--}			