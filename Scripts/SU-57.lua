

       
dofile(current_mod_path.."/Views.lua")





Su_57 =  {
	Name 				=   'SR-72',
	DisplayName			= _('Dark Star'),

	Cannon = "yes",
	HumanCockpit 		= true,
	HumanCockpitPath    = current_mod_path..'/Cockpit/Scripts/',

	Picture 			= "Su-57.png",
	Rate 				= 40, 
	Shape 				= "Su-57",
	WorldID             = Su_57; -- Su-57

	shape_table_data 	=
	{
		{
			file  	 = 'Su-57';
			life  	 = 18; 
			vis   	 = 3; 
			desrt    = 'Su-57-destr';
			fire  	 = { 300, 2}; 
			username = 'Su-57';
			index    =  WSTYPE_PLACEHOLDER;
			
		},
		{
			name  = "Su-57-destr";
			file  = "Su-57-destr";
			fire  = { 240, 2};
		},
		
	},
	    LandRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of LandRWCategories
        TakeOffRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of TakeOffRWCategories
	
	
	
	
	
	
	
	
	
	
	
	

	-------------------------
	
	mapclasskey	= "P0091000024",
	attribute	= {wsType_Air, wsType_Airplane, wsType_Fighter,WSTYPE_PLACEHOLDER, Su_57, "Multirole fighters", "Refuelable" },
	Categories 	= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},
	-------------------------
		M_empty	    = 18000, --Emty weight
		M_nominal	= 20000,-- Mission load weight
		M_max	    = 35000,-- Max take off weight
		M_fuel_max	= 50300,-- Internal fuel max
		H_max	    = 85000,-- Service ceiling
		average_fuel_consumption	=	0.4895,
		CAS_min	=	1.58,
		V_opt	=	170,  --  Top Speed on tire.
		V_take_off	= 75, --  Speed on tire while Taking off.
		V_land	=	65,   --  Speed on tire while landing aproach.
		has_afteburner	=	true,
		has_speedbrake	=	true,
		radar_can_see_ground =true,
	
   		AOA_take_off	=	0.17,-- Angle of Attack while Taking off.
	    stores_number	=	0,  -- How many Weapon pylons, 6 Internally+6 Externally.
		bank_angle_max	=	60,
	    Ny_min		=	-3,
		Ny_max		=	9.5,
		Ny_max_e 	= 	9.5,  
		tand_gear_max = 0.577,
		V_max_sea_level	= 6667.39,
		V_max_h		=	8001,   
		Vy_max		=	325,  
		Mach_max	=	10,  
		tanker_type	=	1,
		wing_area	=	90.236,
		
		
		

	--	effects_presets = {		
		-- {effect = "SPEED_SMOKE", 
		   --  file = current_mod_path.. "/Effects/SU-57_Starter_Smoke.lua"},
	   -- },

		--effects_presets = {		
		-- {effect = "STARTER_FLAME", 
		     --file = current_mod_path.. "/Effects/SU-57_Starter_Flame.lua"},
	  --  },

		--effects_presets = {		
		-- {effect = "SPEED_SMOKE", 
		   --  file = current_mod_path.. "/Effects/SU-57_Vapor_Cone.lua"},
	   -- },





		detection_range_max	= 400,
		
		is_tanker	=	false,
		wing_span	=	14.993,
		thrust_sum_max	=	708667,   
		thrust_sum_ab	=	1008667,
		length	=	31.668,
		height	=	5.208,
		flaps_maneuver	=	2,
		range	=	3415,
		RCS	=   0.1,
		IR_emission_coeff	=	0.0,
		IR_emission_coeff_ab	= 0.1,
		
		
		
		
		
		
		
		
		
		---------------------Landing Gear -------------------------------------------------
		nose_gear_pos 			    = {0.248632, -3.52441,    10.018},
		main_gear_pos 			    = {6.15675,   -3.52441,    -8.48344},
		
		nose_gear_wheel_diameter	=	0.8,
		main_gear_wheel_diameter	=	0.8,
		nose_gear_amortizer_direct_stroke    	 =  0,  -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  	 =  0,  -- up
	    main_gear_amortizer_direct_stroke	 	 =  0, --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	 = 	0, --  up
	    nose_gear_amortizer_normal_weight_stroke = -0.1,-- down from nose_gear_pos
	    main_gear_amortizer_normal_weight_stroke = -0.1,-- down from main_gear_pos
		------------------------------------------------------------------------------------
		
		
		
		
		
		
		
		
		
		
		
		brakeshute_name	            =	3,
		
	    wing_tip_pos 				= {-3.8,   0.85,    7.100},  
		air_refuel_receptacle_pos   = { 9.220,     0.075,   -1.290}, 
		engines_count	=	2,
		engines_nozzles =
		
		{
			[1] = 
			{
			pos 		=  {-7.50, 0.20, 1.35}, 
			elevation   =  0,  
			diameter	 = 0.85,  
			exhaust_length_ab   = 7.0, 
			exhaust_length_ab_K = 0.629, 
			smokiness_level = 0.1,
			afterburner_effect_texture = "Afterburner_SU57",
			}, 

            [2] = 
			{
			pos 		=  {-7.50, 0.20, -1.35}, 
			elevation   =  0,  
			diameter	 = 0.85,  
			exhaust_length_ab   = 7.0, 
			exhaust_length_ab_K = 0.629, 
			smokiness_level = 0.1,
			afterburner_effect_texture = "Afterburner_SU57",
			}, 
		},

	crew_size	 = 1,
	crew_members =
	{
		[1] =
		{
			
			
			
			
			
		    drop_canopy_name	= "Su-57-fragment-canopy-glass",
			pos					= {3.035, 0.169, 0.005},
			canopy_pos			= {2.677, 2.677, 0},
			g_suit 			    =  4,
			ejection_seat_name	 = 9, -- 9
			ejection_order 		 = 1,
			ejection_added_speed = {-5,15,0},
			-- drop_parachute_name	= "pilot_f15_parachute",
			can_be_playable 	 = true,
			canopy_arg           = 38, 
			role 				 = "pilot",
			role_display_name    = _("Pilot"),
			
			
			
		}, -- end of [1]
	-- end of crew_members
	    [2] =
		{
			
			
			
			
			
		   -- Fake second seat.
			
			
			
		}, -- end of [2]
	}, -- end of crew_members
	
	
	
	
	

	fires_pos =
		{
			[1] = 	{-3.484, -0.004, -0.149}, 
			[2] = 	{-2.518,  0.055,  1.216}, 
			[3] = 	{-2.518,  0.055, -1.216}, 
			[4] = 	{-6.250,  0.525,  0.000}, 
			[5] = 	{-6.750,  0.525,  0.000}, 
			[6] = 	{-2.346, -0.448,  0.000}, 
			[7] = 	{ 2.346, -0.448,  0.000}, 
		}, -- end of fires_pos


	-- Countermeasures
	Countermeasures = {
		ECM = "AN/ALQ-135"
	},

	passivCounterm = {
		CMDS_Edit = true,
		SingleChargeTotal = 200,
		chaff = {default = 100, increment = 3, chargeSz = 1},
		flare = {default = 96,  increment = 3, chargeSz = 1},
	},

	chaff_flare_dispenser 	= {

		{ dir =  {-1, 0, -1.0}, pos =   {-3.827,  0.435, -1.108}, }, -- Chaff L
		{ dir =  {-1, 0, 1.0}, pos =   {-3.827,  0.435, 1.108}, },  -- Chaff R
		{ dir =  {-1, 0, -1.0}, pos =  {-5.032,  0.873, -1.2}, }, -- Flares L
		{ dir =  {-1, 0,  1.0}, pos =  {-5.032,  0.873,  1.2}, }, -- Flares R
	},

	--sensors
	detection_range_max		 = 400,               
	radar_can_see_ground 	 = true,  
	sound_name	=	"aircraft\Su-57\Sounds",
	CanopyGeometry = {
	azimuth   = {-120.0, 120.0}, 
	elevation = {-60.0, 90.0}  
	},

     Sensors = {
	       
            RADAR = "N-011M",
			--RADAR = "Byelka Radar", 
            IRST = "OLS-27",
            RWR = "Abstract RWR"
			
		
			
        },
		
	    Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		    { id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	}, 
	Guns = {
        gun_mount("GSh_30_1", { count = 150 },{muzzle_pos_connector = "Gun_point", muzzle_pos = {6.0, 0.00, 1.1}}),
		--effect_arg_number = 5000, Effect Animation
	
	},
  
		Pylons = { ---Research has been made in order to make the 12 pylon sections,6 internally and 6 externally.
	

              --Bck/Frwrd    Up/Down  -Left/Right
		pylon(1, 0, -2.500,0.977, -4.899, 
            {
			arg = 308 ,
			arg_value = 1,
			connector = "Pylon1",
			droppable_shape	= "pylon_1",
			use_full_connector_position=true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
				{ CLSID = "{RVV-AE}" },
				{ CLSID = "{RVV-M}" },
				{ CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}" }, --radiation pod
				{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
        
            }
        ),
        pylon  (2, 0, -1.285,0.800, -3.500,--2, 0, -2.535000, -0.165000, -6.168000,
		    {
			use_full_connector_position=true,
		      FiZ = -2,                      
            
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },
                { CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}" },
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                { CLSID = "{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF03}" }, -- ?31?
                { CLSID = "{4D13E282-DF46-4B23-864A-A9423DFDE504}" }, -- ?31?
                { CLSID = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}" }, -- ?29?
                { CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}" }, -- ?29?
                { CLSID = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}" }, -- ?59?
				{ CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" }, --   ?100   ?
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
                { CLSID = "{BA565F89-2373-4A84-9502-A0E017D3A44A}" }, --   ?500?
                { CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" }, --   ?500  
                { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
                { CLSID = "{39821727-F6E2-45B3-B1F0-490CC8921D1E}" }, --   ?1500?
                { CLSID = "{53BE25A4-C86C-4571-9BC0-47D668349595}" },
				
				{ CLSID = "{RVV-BD}" },
				{ CLSID = "{RVV-AE}" },
				{ CLSID = "{RVV-M}" },
				{ CLSID = "{RVV-L}" },
				{ CLSID = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}"},-- Fuel tank 800L Wing
				{ CLSID = "{RN-28}"},
				{ CLSID = "{SU_57Tank}"},
		-----------------------------------------------------------------------------------------------------
		              --AntiShip Cruise missile
				{ CLSID = "{KH_59MK2}"},--antiship missile
		------------------------------------------------------------------------------------------------------		
				{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
				
					
            }
        ),
        pylon(3, 0,  0.8500000, 1.200000, -0.00000, --
            {
			use_full_connector_position=true,
			
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" }, --R-73
				{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange

            }
        ),
		pylon(4,  0, -0.000,.200, 1.300, 
            {
			use_full_connector_position=true,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },
                { CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}" },
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                { CLSID = "{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF03}" }, -- ?31?
                { CLSID = "{4D13E282-DF46-4B23-864A-A9423DFDE504}" }, -- ?31?
                { CLSID = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}" }, -- ?29?
                { CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}" }, -- ?29?
                { CLSID = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}" }, -- ?59?
				{ CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" }, --   ?100   ?
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
                { CLSID = "{BA565F89-2373-4A84-9502-A0E017D3A44A}" }, --   ?500?
                { CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" }, --   ?500  
                { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
                { CLSID = "{39821727-F6E2-45B3-B1F0-490CC8921D1E}" }, --   ?1500?
                { CLSID = "{53BE25A4-C86C-4571-9BC0-47D668349595}" },
				
				{ CLSID = "{RVV-BD}" },
				{ CLSID = "{RVV-AE}" },
				{ CLSID = "{RVV-M}" },
				{ CLSID = "{RVV-L}" },
				{ CLSID = "{RN-28}"},
				{ CLSID = "{SU_57Tank}"},
				{ CLSID = "{KH_59MK2}"},
            }
        ),
        pylon(5, 1,  0.8500000, 1.200000, 0.00000,
            {
			    use_full_connector_position = true,
				--connector = "Pylon5",
				--arg				= 26,
				--arg_value		= 0,
				--arg_value		= 1,
			
			
			
			
            },
            {
                { CLSID = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}" },
				{ CLSID = "{RVV-AE}" },
				{ CLSID = "{RVV-M}" },
				{ CLSID = "{KH_59MK2}"},
            }
        ),
        pylon(6, 1,  0.8500000, 1.200000, 0.00000,
            {
			use_full_connector_position=true,
            },
            {
                { CLSID = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}" },
				{ CLSID = "{RVV-AE}" },
				{ CLSID = "{RVV-M}" },
				{ CLSID = "{KH_59MK2}"},
            }
        ),
        pylon(7, 1, 0.8500000, 1.200000, 0.00000,
            {
			use_full_connector_position=true,
            },
            {
                { CLSID = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}" },
				{ CLSID = "{RVV-AE}" },
				{ CLSID = "{RVV-M}" },
				{ CLSID = "{KH_59MK2}" },
            }
        ),
        pylon(8, 1,  0.8500000, 1.200000, 0.00000,
            {
			use_full_connector_position=true,
                FiZ = -2,
            },
            {
               { CLSID = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}" },
			   { CLSID = "{RVV-AE}" },
			   { CLSID = "{RVV-M}" },
			   { CLSID = "{KH_59MK2}" },
            }
        ),
        pylon(9,  0, -0.000,.200, -1.300, 
            {
			use_full_connector_position=true,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },
                { CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}" },
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                { CLSID = "{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF03}" }, 
                { CLSID = "{4D13E282-DF46-4B23-864A-A9423DFDE504}" }, 
                { CLSID = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}" }, 
                { CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}" }, 
                { CLSID = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}" }, 
				{ CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" }, 
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
                { CLSID = "{BA565F89-2373-4A84-9502-A0E017D3A44A}" }, 
                { CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" }, 
                { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
                { CLSID = "{39821727-F6E2-45B3-B1F0-490CC8921D1E}" }, 
                { CLSID = "{53BE25A4-C86C-4571-9BC0-47D668349595}" },
				
				{ CLSID = "{RVV-BD}" },
				{ CLSID = "{RVV-AE}" },
				{ CLSID = "{RVV-M}" },
				{ CLSID = "{RVV-L}" },
				{ CLSID = "{RN-28}"},
				{ CLSID = "{SU_57Tank}"},
				{ CLSID = "{KH_59MK2}"},
            }
        ),
		 pylon(10, 0, 0.8500000 , 1.200000, 0.00000,
            {
			use_full_connector_position=true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
				
				{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
            }
        ),
        pylon(11, 0, -1.285,0.800, 3.500, 
		    {
			use_full_connector_position=true,
		      FiZ = -2,    
            
            },
            {
               { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },
                { CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}" },
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                { CLSID = "{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF03}" }, 
                { CLSID = "{4D13E282-DF46-4B23-864A-A9423DFDE504}" }, 
                { CLSID = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}" }, 
                { CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}" },
                { CLSID = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}" }, 
				{ CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" }, 
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
                { CLSID = "{BA565F89-2373-4A84-9502-A0E017D3A44A}" }, 
                { CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" }, 
                { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
                { CLSID = "{39821727-F6E2-45B3-B1F0-490CC8921D1E}" }, --   ?1500?
                { CLSID = "{53BE25A4-C86C-4571-9BC0-47D668349595}" },
				{ CLSID = "{R-33}" },
				{ CLSID = "{RVV-BD}" },
				{ CLSID = "{RVV-AE}" },
				{ CLSID = "{RVV-M}" },
				{ CLSID = "{RVV-L}" },
				
				{ CLSID = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}"},-- Fuel tank 800L Wing
				{ CLSID = "{SU_57Tank}"},--Fuel tank
				{ CLSID = "{RN-28}"},				--Nuke
				{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
		-------------------AntiShip weapons-----------------------------------------------------------
				
			    { CLSID = "{KH_59MK2}" },--antiship Cruise missile
				
				
				
				
				
				
		----------------------------------------------------------------------------------------------			
            }
        ),
        pylon(12, 0, -2.500,0.977, 4.899,
            {
			use_full_connector_position=true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
				{ CLSID = "{RVV-AE}" },
				{ CLSID = "{RVV-M}" },
				{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
				
    
                
            }
        ),
        
	    --pylon(13, 1, -5.95, 0.45, 0,
          --  {
              --  FiZ = -3,
			--	FiX = -90,
           -- },
           -- {
		     --   { CLSID = "{white}" },
	          --  { CLSID = "{red}" }, 
				--{ CLSID = "{orange}" }, 
				--{ CLSID = "{yellow}" },
				--{ CLSID = "{green}"}, 
				--{ CLSID = "{blue}" }, 
			--	{ CLSID = "{purple}" }, 
			--	{ CLSID = "{light green}"}, 
			--	{ CLSID = "{pink}" }, 
			--	{ CLSID = "{lime green}"}, 	

           -- }
        --),


       


	

},
	

	Tasks = {
        aircraft_task(CAP),
        aircraft_task(Intercept),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(AFAC),
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
		aircraft_task(AntishipStrike),
		aircraft_task(CAS),
		
    },

	DefaultTask = aircraft_task(CAP),

	SFM_Data = { --Aerodynamics-----------SU-57 Airfoil main wing profile NACA64a204,SU-57 Airfoil horizontal wing profile NACA64a202,SU-57 Airfoil fin profile NACA64a003.
	aerodynamics =                                                       ---Development Improvements---
		{
			Cy0	      = 0,  --0.2    0,original -- zero AoA lift coefficient*
			Mzalfa	  =	4.355,         -- coefficients for pitch agility
			Mzalfadt  = 0.50, --0.50  -- coefficients for pitch agility
			kjx     = 2.75,     --2.75    -- Inertia parametre X - Dimension (clean) airframe drag coefficient at X (Top) Simply the wing area in square meters (as that is a major factor in drag calculations)
			kjz     = 0.00125,            -- Inertia parametre Z - Dimension (clean) airframe drag coefficient at Z (Front) Simply the wing area in square meters (as that is a major factor in drag calculations)
			Czbe    = -0.190,            -- coefficient, along Z axis (perpendicular), affects yaw, negative value means force orientation in FC coordinate system
			cx_gear = 0.0268,         -- coefficient, drag, gear ??
			cx_flap = 0.05,           -- coefficient, drag, full flaps
			cy_flap = 0.52, --0.90    -- coefficient, normal force, lift, flaps
			cx_brk  = 0.06,            -- coefficient, drag, breaks
			
			table_data =
			{
			--    M	     Cx0		 Cya		 B		      B4	    Omxmax	Aldop	Cymax
				{0.0,	0.0150,		0.100,		0.1,		0.032,		3.65,	35.0,	1.6,	},
				{0.1,	0.0155,		0.087,		0.1,		0.032,		2.65,	35.0,	1.6,	},
				{0.2,	0.0160,		0.057,		0.1,		0.032,		3.95,	35.0,	1.6,	},
				{0.3,	0.0160,		0.055,		0.1,		0.032,		3.95,	35.0,	1.6,	},
				{0.4,	0.0160,		0.053,		0.1,	   	0.032,		3.25,	35.0,	1.6,	},
				{0.5,	0.0160,		0.052,		0.1,	   	0.032,		3.25,	35.0,	1.6,	},
				{0.6,	0.0165,		0.050,		0.094,		0.043,		4.55,	35.0,	1.6,	},
				{0.7,	0.0165,		0.049,		0.094,		0.045,		4.55,	35.0,	1.45,	},
				{0.8,	0.0178,		0.048,		0.094,		0.048,		4.55,	35.0,	1.4,    },
				{0.9,	0.0215,		0.047,		0.11,		0.050,		4.55,	35.0,	1.3,    },
				{1.0,	0.0310,		0.046,		0.15,		0.065,		4.55,	38.0,	1.2,    },
				{1.1,	0.0422,		0.045,	   	0.15,		0.070,		4.10,	36.0,	1.1,	},
				{1.2,	0.0440,		0.044,	   	0.14,		0.080,		3.19,	37.0,	1.05,	},		
				{1.3,	0.0432,		0.043,	   	0.17,		0.096,		2.28,	35.0,	1.0,	},
				{1.4,	0.0432,		0.043,	   	0.17,		0.096,		2.28,	35.0,	1.0,	},
				{1.5,	0.0423,		0.042,	   	0.23,		0.09,		1.95,	33.0,	0.9,	},
				{1.6,	0.0423,		0.041,	   	0.23,		0.09,		1.95,	33.0,	0.9,	},
				{1.7,	0.0423,		0.040,	   	0.23,		0.09,		1.95,	33.0,	0.9,	},
				{1.8,	0.0416,		0.049,	   	0.23,		0.38,		1.17,	23.0,	0.7,	},
				{1.9,	0.0416,		0.049,	   	0.23,		0.38,		1.17,	23.0,	0.7,	},
				{2.0,	0.0416,		0.069,	   	0.08,		2.5,		1.04,	30.5,	0.55,	},
				{2.1,	0.0416,		0.069,	   	0.08,		2.5,		1.04,	30.5,	0.55,	},
				{2.2,	0.0416,		0.070,	   	0.16,		3.2,		0.91,	39.0,	0.4,	},
                {2.3,	0.0416,		0.070,	   	0.16,		3.2,		0.91,	39.0,	0.4,	},
				{2.4,	0.0416,		0.070,	   	0.16,		3.2,		0.91,	39.0,	0.4,	},
				{2.5,	0.0410,		0.070,		0.25,		4.5,		0.91,	39.0,	0.4,	},		
				{10, 	0.0395,		0.070,		0.35,		6.0,		0.8,	39.0,	0.4		},			
			}, -- end of table_data

		
		}, -- end of aerodynamics
		
		engine = ----------- (WIP),Second Stage Engine.
		{
			Nmg	=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			typeng	=	1,
			hMaxEng	=	60000,
			dcx_eng	=	0.0000,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	8000,
			dpdh_f	=	17000.0,
			table_data = {
			--   M		Pmax		 Pfor
			
			    {0.0,	126000,	185024},
				{0.2,	12600,	198744},
				{0.4,	12600,	208250},
				{0.6,	12600,	220892},
				{0.7,	12400,	226870},
				{0.8,	12400,	232887},
				{0.9,	22200,	350210},
				{1.0,	63250,	1204500},
				{1.1,	63250,	1204500},
				{1.2,	63250,	1204500},
				{1.3,	63250,	1204500},
				{1.5,	63250,	1204500},
				{1.8,	63250,	1204500},
				{2.0,	63250,	1204500},
				{2.2,	63250,	1204500},
				{2.5,	63250,	1204500},
				{10, 	63250,	1204500},


				 	
				},
		}, -- end of engine
	},
    --extended = {




	




		
		--}, -- end of aerodynamics
		




	Damage = {
		-- NOSE, COCKPIT & AVIONICS
		[0]	 = {critical_damage =  3, args = {82}},		
		[1]	 = {critical_damage =  8, args = {150}},	
		[2]	 = {critical_damage =  8, args = {149}},	
		[3]	 = {critical_damage =  2, args = {65}},		
		[4]	 = {critical_damage =  8, args = {298}},	
		[5]	 = {critical_damage =  8, args = {299}},	
		[90] = {critical_damage =  5},					
		[86] = {critical_damage =  8, args = {300}},	
		[87] = {critical_damage =  8, args = {301}},	
		[88] = {critical_damage =  8, args = {302}},	

		-- CONTROL SURFACES
		[53] = {critical_damage =  5, args = {248}},	
		[25] = {critical_damage =  5, args = {226}},	
		[51] = {critical_damage =  5, args = {240}},	
		[52] = {critical_damage =  5, args = {238}},	
		[26] = {critical_damage =  5, args = {216}},	
		[21] = {critical_damage =  5, args = {232}},	
		[33] = {critical_damage =  5, args = {230}},	
		[22] = {critical_damage =  5, args = {222}},	
		[34] = {critical_damage =  5, args = {220}},	
		[19] = {critical_damage =  5, args = {183}},	
		[20] = {critical_damage =  5, args = {185}},	

		-- ENGINE & FUEL TANKS
		[11] = {critical_damage = 10, args = {271}},	
		[61] = {critical_damage = 10, args = {224}},	
		[62] = {critical_damage = 10, args = {214}},	
		[65] = {critical_damage = 10, args = {155}},	

		-- FUSELAGE & WINGS
		[39] = {critical_damage = 10, args = {244}},								
		[41] = {critical_damage = 10, args = {245}, deps_cells = {39,53}},			
		[43] = {critical_damage = 10, args = {246}, deps_cells = {41,88}},			
		[23] = {critical_damage = 8,  args = {223}, deps_cells = {21}},				
		[29] = {critical_damage = 9,  args = {224}, deps_cells = {19,23,84}},	    
		[35] = {critical_damage = 10, args = {225}, deps_cells = {23,21,29,33,61,84}},	
		[36] = {critical_damage = 10, args = {215}, deps_cells = {24,22,30,34,62,85}},	
		[30] = {critical_damage = 9,  args = {214}, deps_cells = {20,24,85}},	    
		[24] = {critical_damage = 8,  args = {213}, deps_cells = {22}},				
		[9]	 = {critical_damage = 10, args = {154}},								
		[82] = {critical_damage = 10, args = {152}},								
		[10] = {critical_damage = 10, args = {153}},								
		[55] = {critical_damage = 10, args = {159}},								
		[56] = {critical_damage = 10, args = {158}},								
		[57] = {critical_damage = 10, args = {157}},								
		[58] = {critical_damage = 10, args = {156}},								

		-- LANDING GEAR
		[8]  = {critical_damage = 8, args = {265}, deps_cells = {83}},	
		[15] = {critical_damage = 8, args = {267}, deps_cells = {84}},	
		[16] = {critical_damage = 8, args = {266}, deps_cells = {85}},	
		[83] = {critical_damage = 3, args = {134}},						
		[84] = {critical_damage = 3, args = {135}},						
		[85] = {critical_damage = 3, args = {136}},						

		-- WEAPONS
		[7]  = {critical_damage = 5, args = {296}},						
			
        
	 

	},


	DamageParts =
	{
	
	-------------UNDER CONSTRUCTION---------------------
	
   		[1] = "Su-57-part-wing-R", -- wing R 
   	    [2] = "Su-57-part-wing-L", -- wing L
   		[3] = "Su-57-part-nose", -- nose
   		[4] = "Su-57-part-tail", -- tail
	},

	---------------------------------------------------------
	lights_data = {
		typename = "collection",
		lights = {
        [WOLALIGHT_NAVLIGHTS] = {
            typename = "Collection",
            lights = {
                {
                    typename = "Spot", connector = "BANO_0", dir_correction = {azimuth = math.rad(180.0)}, argument = 192,
                    proto = lamp_prototypes.ANO_3_Bl, angle_max = math.rad(180.0), angle_min = math.rad(170.0),
                },
                {
                    typename = "Spot", connector = "BANO_1", dir_correction = {azimuth = math.rad(-45.0)}, argument = 190,
                    proto = lamp_prototypes.ANO_3_Kr, angle_max = math.rad(180.0), angle_min = math.rad(90.0),
                    controller = "Strobe", mode = 1, power_up_t = 0.3, cool_down_t = 0.6, period = 1.0, flash_time = 0.7,
                },
                {
                    typename = "Spot", connector = "BANO_2", dir_correction = {azimuth = math.rad(45.0)}, argument = 191,
                    proto = lamp_prototypes.ANO_3_Zl, angle_max = math.rad(180.0), angle_min = math.rad(90.0),
                    controller = "Strobe", mode = 1, power_up_t = 0.3, cool_down_t = 0.6, period = 1.0, flash_time = 0.7,
                },
            }
        },
        [WOLALIGHT_SPOTS] = {
            typename = "Collection",
            lights = {
                {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", dir_correction = {elevation = math.rad(6.0)}, argument = 209,
                            proto = lamp_prototypes.LFS_P_27_1000, movable = true,
                        },

                    },
                },
            },
        },
        [WOLALIGHT_TAXI_LIGHTS] = {
            typename = "Collection",
            lights = {
                {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", argument = 208,
                            proto = lamp_prototypes.LFS_R_27_180, angle_max = math.rad(35.0), power_up_t = 0.75, movable = true,
                        },

                    },
                },
            },
        },
        [WOLALIGHT_STROBES] = {
            typename = "collection",
            lights = {
                {
                    typename = "collection",
                    lights = {
                        { -- Left Anticollision Light
                            typename = "Spot", connector = "RESERV1_BANO_1", dir_correction = {azimuth = math.rad(-55.0)}, argument = 199,
                            proto = lamp_prototypes.SMI_2KM,
                        },
                        { -- Right Anticollision Light
                            typename = "Spot", connector = "RESERV_BANO_1", dir_correction = {azimuth = math.rad(55.0)},
                            proto = lamp_prototypes.SMI_2KM,
                        },
                        { -- Tail Anticollision Light
                            typename = "Omni", connector = "RESERV2_BANO_1",
                            proto = lamp_prototypes.SMI_2KM,
                        },
                    },
                },
            },
        },
        [WOLALIGHT_FORMATION_LIGHTS] = {
            typename = "argumentlight", argument = 88,
        },
    },
    }, -- end lights_data

}

add_aircraft(Su_57)

