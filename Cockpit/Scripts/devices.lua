local count = 0
local function counter()
	count = count + 1
	return count
end
-------DEVICE ID-------
devices = {}

devices["CLICKABLE"]     			    = counter()--01
devices["PNT_UPD"]     				    = counter()--02
devices["KNEEBOARD"]	                = counter()--03
devices["BAY_DOORS"]		            = counter()--04 Included n Clickables
devices["SONIC_BOOM"]		            = counter()--06 Testings

devices["RADAR"]		                = counter()--08 Under Development, Curently uses the Su-27 radar.
--devices["ENGINE"]		                = counter()--09
--devices["OXIGEN_SYSTEM"]		        = counter()--10 Testings


--////////////////////Already in EFM///////////////////////////////////
--devices["ELECTRIC_SYSTEM"]		    = counter()--09 --SU-27.
--devices["ENGINE_SYSTEM"]		        = counter()--010  AL-41F1 EFM
--devices["WEAPON_SYSTEM"]		        = counter()--011 --SU-27 .