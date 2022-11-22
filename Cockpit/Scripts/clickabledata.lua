dofile(LockOn_Options.script_path.."clickable_defs.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."devices.lua")
local gettext = require("i_18n")
_ = gettext.translate
local  aircraft = get_aircraft_type()
show_element_boxes = true --connector debug










elements = {}
--Switch Covers
elements["CVR_001"] = default_2_position_tumb("Scram Jet Cover",2,
device_commands.Button_1,69420)




end
