
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."devices.lua")
--dofile(LockOn_Options.script_path.."mainpanel_init.lua")

-- Declare self variables
local bay_doors = GetSelf()
local dev = GetSelf()

-- 0.01 rep. 1000th of second, by 10 ms.
local update_time_step = 0.01


local sensor_data = get_base_data()







function post_initialize()
  print_message_to_user("BAYDOORS TESTING") --Text display.
  
  
  
  
end



-- Does not work.
--function SetCommand(Command,value)	


function bay_doors()

  local bay_doors = 0
  -- Defines the command that triggers the animation.
  if Command >  84 then
    bay_doors = 1
  
  else
    bay_doors = 0
  end

  --BAY  DOORS ANIMATION ARG#
  set_aircraft_draw_argument_value(25, bay_doors)
  
end

update = function()
  --
calculate_bay_doors()
  
  
 end

need_to_be_closed = false
