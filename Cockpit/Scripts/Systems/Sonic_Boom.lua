
-- Declare self variables
local controls_system = GetSelf()
local dev = GetSelf()

-- 0.01 rep. 1000th of second, by 10 ms.
local update_time_step = 0.01

make_default_activity(update_time_step)

local sensor_data = get_base_data()
 


function post_initialize()
  print_message_to_user("SONIC BOOM EFFECT Testing")
  --print_message_to_user("OXIGEN SYSTEM Testing")
  --show_param_handles_list()
 
  
  
end



-- We will be using " sensor_data:getMachNumber()" To gather needed activation depending on speed to trigger Sonic boom Animation.
function sonic_boom()
  
  
  local mach = sensor_data:getMachNumber()

  local sonic_boom = 0 --off
  
 -- Activation depending on Speed
  if (mach > 1.0) and (mach < 1.1) then
    sonic_boom = 1 -- On
  
  else
    sonic_boom = 0 --Off
  end

  --ANIMATION ARG#
  set_aircraft_draw_argument_value(27, sonic_boom)
  
end

update = function()
  
  calculate_sonic_boom()
  
  
  
  
  
  
  
end

need_to_be_closed = false
