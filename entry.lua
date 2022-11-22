local self_ID  = "Dark Star By TbMods" 

----------------------------A project being made in order to learn 3D,2D,animation,Lua,C++ and to better understand DCS ------------------------------------
-----------------------------------------------Project Started on December 16 2016------------------------------------------------------------------------------
   
declare_plugin(self_ID,
{

installed 	 = true,
developer    = TbMods,
dirName	  	 = current_mod_path,
version		 = "Test Phase",           
state		 = "installed", 
fileMenuName  = _("SR-72"),
displayName   = _("SR-72 Dark Star"),
shortName  	  = _("SR-72"),
update_id     = "SR-72",
creditsFile = "credits.txt", 


info		 = _("The First DCS Dark Star Mod!"),
 
binaries	= { 'SU-57_FM_Template', },  -- The DLL of the external flight model 
--binaries	= { 'SU-57_Cockpit', },       -- The DLL of the Cockpit. 


  
       



InputProfiles =
	{
        ["SR-72"]     = current_mod_path .. '/Input/SR-72',
    },

{

},

Skins	=
	{
		{
			name	= _("SR-72"),
			dir		= "Theme",    
		},
	},
Missions =
	{
		{
			name		= _("SR-72"),
			nameId 		= "SR-72",
			dir			= "Missions",
		},
	},
LogBook =
	{
		{
			name		= _("SR-72"), 
			type		= "SR-72",    
		},
	},
 encyclopedia_path = current_mod_path..'/Encyclopedia'
})
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------CALLING TEXTURES/SOUNDS/LOADING WINDOW AND SHAPES--------------------------------------------------------------------------------------------
mount_vfs_model_path    (current_mod_path .."/Cockpit/Shape") 
mount_vfs_texture_path  (current_mod_path .."/Theme/ME") 
mount_vfs_sound_path    (current_mod_path .."/Sounds/")
mount_vfs_model_path	(current_mod_path .."/Shapes")
mount_vfs_liveries_path (current_mod_path .."/Liveries")
mount_vfs_texture_path  (current_mod_path .."/Textures/Missile_Textures")
mount_vfs_texture_path  (current_mod_path .."/Textures/OtherTextures")
mount_vfs_texture_path  (current_mod_path .."/Textures/Su-57Skins")
mount_vfs_texture_path  (current_mod_path .."/Cockpit/Textures")
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------CALLING AIRCRAFT/FM/AVIONICS TYPE-------------------------------------------------------------------------------------------------------------


--make_flyable('SR-72', current_mod_path..'/Cockpit/Scripts/', {self_ID,'Su57',old = 3},current_mod_path..'/Scripts/comm.lua')       --  EFM+ASM/Clickable, # 3 SU-27 Radar # 4 SU-33 Radar.
--make_flyable('SR-72', current_mod_path..'/Cockpit/Scripts/', {self_ID,'Su57',old = 54}, current_mod_path..'/Scripts/comm.lua')   --  EFM+ASM/Clickable, SU-25 avionics.
--make_flyable('SR-72', current_mod_path..'/Cockpit/Scripts/', {self_ID,'Su57',old = true}, current_mod_path..'/Scripts/comm.lua') --  EFM+ASM/Clickable, own avionics.
--make_flyable('SR-72',current_mod_path..'/Cockpit/Scripts/',Su57 , nil)
make_flyable('SR-72', current_mod_path..'/Cockpit/Scripts/', {nil,old = 6}, current_mod_path..'/Scripts/comm.lua')








----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------CALLING SCRIPTS FILES--------------------------------------------------------------------------------------------------------------------------

dofile(current_mod_path.."/Scripts/Views.lua") --View Settings.
dofile(current_mod_path.."/Scripts/Su-57.lua")--Main Lua
dofile(current_mod_path.."/Scripts/Weapons.lua")--Calling Weapon Types




--===============EFM LANDING SUSPENSION CODE====================--


suspension = 
{
	{
		mass  			  = 200,
		pos   			  = {3.133,	-2.70,	0},
		moment_of_inertia = {1000,1000,1000},
		
		
		damage_element	    = 83,
		-- (deg?) Speed threshold of jamming during impact of rotation limiter
		damage_omega	    = 30.0, 
		-- (deg?) Designed angle of retracted gear with horizontal axis
		state_angle_0	    =  6.131341662, 
		-- (deg?) Designed angle of extended gear with verrtical axis
		state_angle_1	    = -2.995164152, 
		-- (m) attachment point to fuselage along x-axis
		mount_pivot_x	    = -0.274, 
		-- (m) attachment point to fuselage along y axis
		mount_pivot_y	    = -0.118, 
		-- (m) distance from strut-axis to attachment point of piston to gear stand
		mount_post_radius   = 0.657, 
		-- (m) length of angle brace in retracted position
		mount_length	   	= 0.604555117,
		-- (deg?) length of position vector from attachment point
		mount_angle_1	   	= -3.138548523,
		-- (m) distance from rotation-axis of strut to wheel-axis
		post_length	   		= 1.748,
		-- (m) displacement of wheel relative to strut
		wheel_axle_offset 	= 0.05,
		-- Gear is self oriented
		self_attitude	    = true,
		yaw_limit		    = math.rad(89.0),
		damper_coeff	    = 30.0,
		

		amortizer_min_length					= 0.0,
		amortizer_max_length					= 0.397,
		amortizer_basic_length					= 0.397,
		amortizer_spring_force_factor			= 1.6e+13,
		amortizer_spring_force_factor_rate		= 20.0,
		amortizer_static_force					= 80000.0,
		amortizer_reduce_length					= 0.377,
		amortizer_direct_damper_force_factor	= 45000.0,
		amortizer_back_damper_force_factor		= 15000.0,


		wheel_radius				  = 0.479,
		wheel_static_friction_factor  = 0.65 , --Static friction when wheel is not moving (fully braked)
		wheel_side_friction_factor    = 0.65 ,
		wheel_roll_friction_factor    = 0.025, --Rolling friction factor when wheel moving
		wheel_glide_friction_factor   = 0.28 , --Sliding aircraft
		wheel_damage_force_factor     = 250.0, -- Tire is explosing due to hard landing
		wheel_damage_speed			  = 150.0, -- Tire burst due to excessive speed


		 wheel_moment_of_inertia   = 3.6, --wheel moi as rotation body

		 wheel_brake_moment_max = 15000.0, -- maximum value of braking moment  , N*m 
		
		--[[
		args_post	  = {0,3,5};
		args_amortizer = {1,4,6};
		args_wheel	  = {76,77,77};
		args_wheel_yaw = {2,-1,-1};
		--]]

		arg_post			  = 0,
		arg_amortizer		  = 1,
		arg_wheel_rotation    = 101,
		arg_wheel_yaw		  = 2,
		collision_shell_name  = "WHEEL_F",
	},
	{
		mass  			  = 200,
		pos   			  = {7.611, -2.70,    0.000},
		moment_of_inertia = {1000,1000,1000},
		
		
		damage_element	    = 83,
		damage_omega	    = 30.0,
		state_angle_0	    =  6.131341662,
		state_angle_1	    = -2.995164152,
		mount_pivot_x	    = -0.274,
		mount_pivot_y	    = -0.118,
		mount_post_radius   = 0.657,
		mount_length	   	= 0.604555117,
		mount_angle_1	   	= -3.138548523,
		post_length	   		= 1.748,
		wheel_axle_offset 	= 0.05,
		self_attitude	    = false,
		yaw_limit		    = math.rad(89.0),
		damper_coeff	    = 30.0,
		

		amortizer_min_length					= 0.0,
		amortizer_max_length					= 0.397,
		amortizer_basic_length					= 0.397,
		amortizer_spring_force_factor			= 1.6e+13,
		amortizer_spring_force_factor_rate		= 17.0,
		amortizer_static_force					= 25000.0,
		amortizer_reduce_length					= 0.377,
		amortizer_direct_damper_force_factor	= 55000.0,
		amortizer_back_damper_force_factor		= 10000.0,


		wheel_radius				   = 0.68,
		wheel_static_friction_factor  = 0.65 ,
		wheel_side_friction_factor    = 0.65 ,
		wheel_roll_friction_factor    = 0.025,
		wheel_glide_friction_factor   = 0.28 ,
		wheel_damage_force_factor     = 650.0,
		wheel_damage_speed			   = 150.0,
		 wheel_moment_of_inertia   = 3.6, --wheel moi as rotation body

		 wheel_brake_moment_max = 15000.0, -- maximum value of braking moment  , N*m 
		
		--[[
		args_post	  = {0,3,5};
		args_amortizer = {1,4,6};
		args_wheel	  = {76,77,77};
		args_wheel_yaw = {2,-1,-1};
		--]]

		arg_post			  = 3,
		arg_amortizer		  = 4,
		arg_wheel_rotation    = 102,
		arg_wheel_yaw		  = -1,
		collision_shell_name  = "WHEEL_L",
	},
	{
		mass  			  = 200,
		pos   			  = {-1.0,   -2.70,    2.000},
		moment_of_inertia = {1000,1000,1000},
		
		
		damage_element	    = 83,
		damage_omega	    = 30.0,
		state_angle_0	    =  6.131341662,
		state_angle_1	    = -2.995164152,
		mount_pivot_x	    = -0.274,
		mount_pivot_y	    = -0.118,
		mount_post_radius   = 0.657,
		mount_length	   	= 0.604555117,
		mount_angle_1	   	= -3.138548523,
		post_length	   		= 1.748,
		wheel_axle_offset 	= 0.05,
		self_attitude	    = false,
		yaw_limit		    = math.rad(89.0),
		damper_coeff	    = 30.0,
		

		amortizer_min_length					= 0.0,
		amortizer_max_length					= 0.397,
		amortizer_basic_length					= 0.397,
		amortizer_spring_force_factor			= 1.6e+13,
		amortizer_spring_force_factor_rate		= 17.0,
		amortizer_static_force					= 25000.0,
		amortizer_reduce_length					= 0.377,
		amortizer_direct_damper_force_factor	= 55000.0,
		amortizer_back_damper_force_factor		= 10000.0,


		wheel_radius				   = 0.68,
		wheel_static_friction_factor  = 0.65 ,
		wheel_side_friction_factor    = 0.65 ,
		wheel_roll_friction_factor    = 0.025,
		wheel_glide_friction_factor   = 0.28 ,
		wheel_damage_force_factor     = 650.0,
		wheel_damage_speed			   = 150.0,
		 wheel_moment_of_inertia   = 3.6, --wheel moi as rotation body

		 wheel_brake_moment_max = 15000.0, -- maximum value of braking moment  , N*m 
		
		--[[
		args_post	  = {0,3,5};
		args_amortizer = {1,4,6};
		args_wheel	  = {101,102,103};
		args_wheel_yaw = {2,-1,-1};
		--]]

		arg_post			  = 5,
		arg_amortizer		  = 6,
		arg_wheel_rotation    = 103,
		arg_wheel_yaw		  = -1,
		collision_shell_name  = "WHEEL_R",
	},
	disable_built_in_oxygen_system	= false,
}








-------------------------------------------------------------------------------------------------------------------------------------------------------------------- 

local FM = 
{
	[1] = self_ID,
	[2] = "SU-57_FM_Template",                       -- DLL binarires for FM
	center_of_mass		=	{0,0,0 },	             -- center of mass position relative to object 3d model center for empty aircraft
	moment_of_inertia  	= 	{0.105, -0.006,0.0},     --x.y.z moment of inertia of empty aircraft
	suspension   		= suspension,                -- gear posts initialization
}








----------------------------------------------CALLING VIEWS---------------------------------------------------------------------------------------------------------
make_view_settings('Su-57', ViewSettings, SnapViews) 


plugin_done()--The End 
