--[[*********************************************
* 	IMPLEMENTATION OF LIBRAIN VIA XLUA			*
*	BY ILIAS TSELIOS							*
* 	30 Jan 2020									*
*************************************************]]

----------------------------------- LOCATE DATAREFS OR COMMANDS -----------------------------------
rain_verbose                = find_dataref("librain/verbose")
rain_debug_draw             = find_dataref("librain/debug_draw")
rain_wipers                 = find_dataref("librain/wipers_visible")

frontGlass_slant            = find_dataref("librain/glass_0/slant_factor")
frontGlass_tp_x             = find_dataref("librain/glass_0/thrust_point/x")
frontGlass_tp_y             = find_dataref("librain/glass_0/thrust_point/y")
frontGlass_thrust_factor    = find_dataref("librain/glass_0/thrust_factor")
frontGlass_max_thrust       = find_dataref("librain/glass_0/max_thrust")
frontGlass_gp_x             = find_dataref("librain/glass_0/gravity_point/x")
frontGlass_gp_y             = find_dataref("librain/glass_0/gravity_point/y")
frontGlass_gravity_factor   = find_dataref("librain/glass_0/gravity_factor")
frontGlass_wp_x             = find_dataref("librain/glass_0/wind_point/x")
frontGlass_wp_y             = find_dataref("librain/glass_0/wind_point/y")
frontGlass_wind_factor      = find_dataref("librain/glass_0/wind_factor")
frontGlass_max_tas          = find_dataref("librain/glass_0/max_tas")
frontGlass_obj              = find_dataref("librain/glass_0/obj/filename")
frontGlass_obj_offX         = find_dataref("librain/glass_0/obj/pos_offset/x")
frontGlass_obj_offY         = find_dataref("librain/glass_0/obj/pos_offset/y")
frontGlass_obj_offZ         = find_dataref("librain/glass_0/obj/pos_offset/z")
frontGlass_load             = find_dataref("librain/glass_0/obj/load")
frontGlass_loaded           = find_dataref("librain/glass_0/obj/loaded")
frontGlass_wind_normal      = find_dataref("librain/glass_0/wind_normal")

sideGlass_slant            = find_dataref("librain/glass_1/slant_factor")
sideGlass_tp_x             = find_dataref("librain/glass_1/thrust_point/x")
sideGlass_tp_y             = find_dataref("librain/glass_1/thrust_point/y")
sideGlass_thrust_factor    = find_dataref("librain/glass_1/thrust_factor")
sideGlass_max_thrust       = find_dataref("librain/glass_1/max_thrust")
sideGlass_gp_x             = find_dataref("librain/glass_1/gravity_point/x")
sideGlass_gp_y             = find_dataref("librain/glass_1/gravity_point/y")
sideGlass_gravity_factor   = find_dataref("librain/glass_1/gravity_factor")
sideGlass_wp_x             = find_dataref("librain/glass_1/wind_point/x")
sideGlass_wp_y             = find_dataref("librain/glass_1/wind_point/y")
sideGlass_wind_factor      = find_dataref("librain/glass_1/wind_factor")
sideGlass_max_tas          = find_dataref("librain/glass_1/max_tas")
sideGlass_obj              = find_dataref("librain/glass_1/obj/filename")
sideGlass_obj_offX         = find_dataref("librain/glass_1/obj/pos_offset/x")
sideGlass_obj_offY         = find_dataref("librain/glass_1/obj/pos_offset/y")
sideGlass_obj_offZ         = find_dataref("librain/glass_1/obj/pos_offset/z")
sideGlass_load             = find_dataref("librain/glass_1/obj/load")
sideGlass_loaded           = find_dataref("librain/glass_1/obj/loaded")
sideGlass_wind_normal      = find_dataref("librain/glass_1/wind_normal")


z_obj_obj0_name             = find_dataref("librain/z_depth_obj_0/filename")
z_obj_obj0_load             = find_dataref("librain/z_depth_obj_0/load")
z_obj_obj0_loaded           = find_dataref("librain/z_depth_obj_0/loaded")
Z_obj_obj0_offX             = find_dataref("librain/z_depth_obj_0/pos_offset/x")
Z_obj_obj0_offY             = find_dataref("librain/z_depth_obj_0/pos_offset/y")
Z_obj_obj0_offZ             = find_dataref("librain/z_depth_obj_0/pos_offset/z")

z_obj_obj1_name             = find_dataref("librain/z_depth_obj_1/filename")
z_obj_obj1_load             = find_dataref("librain/z_depth_obj_1/load")
z_obj_obj1_loaded           = find_dataref("librain/z_depth_obj_1/loaded")
z_obj_obj1_offX             = find_dataref("librain/z_depth_obj_1/pos_offset/x")
z_obj_obj1_offY             = find_dataref("librain/z_depth_obj_1/pos_offset/y")
z_obj_obj1_offZ             = find_dataref("librain/z_depth_obj_1/pos_offset/z")

z_obj_obj2_name             = find_dataref("librain/z_depth_obj_2/filename")
z_obj_obj2_load             = find_dataref("librain/z_depth_obj_2/load")
z_obj_obj2_loaded           = find_dataref("librain/z_depth_obj_2/loaded")
z_obj_obj2_offX             = find_dataref("librain/z_depth_obj_2/pos_offset/x")
z_obj_obj2_offY             = find_dataref("librain/z_depth_obj_2/pos_offset/y")
z_obj_obj2_offZ             = find_dataref("librain/z_depth_obj_2/pos_offset/z")

z_obj_obj3_name             = find_dataref("librain/z_depth_obj_3/filename")
z_obj_obj3_load             = find_dataref("librain/z_depth_obj_3/load")
z_obj_obj3_loaded           = find_dataref("librain/z_depth_obj_3/loaded")
z_obj_obj3_offX             = find_dataref("librain/z_depth_obj_3/pos_offset/x")
z_obj_obj3_offY             = find_dataref("librain/z_depth_obj_3/pos_offset/y")
z_obj_obj3_offZ             = find_dataref("librain/z_depth_obj_3/pos_offset/z")

z_obj_obj4_name             = find_dataref("librain/z_depth_obj_4/filename")
z_obj_obj4_load             = find_dataref("librain/z_depth_obj_4/load")
z_obj_obj4_loaded           = find_dataref("librain/z_depth_obj_4/loaded")
z_obj_obj4_offX             = find_dataref("librain/z_depth_obj_4/pos_offset/x")
z_obj_obj4_offY             = find_dataref("librain/z_depth_obj_4/pos_offset/y")
z_obj_obj4_offZ             = find_dataref("librain/z_depth_obj_4/pos_offset/z")

z_obj_obj5_name             = find_dataref("librain/z_depth_obj_5/filename")
z_obj_obj5_load             = find_dataref("librain/z_depth_obj_5/load")
z_obj_obj5_loaded           = find_dataref("librain/z_depth_obj_5/loaded")
z_obj_obj5_offX             = find_dataref("librain/z_depth_obj_5/pos_offset/x")
z_obj_obj5_offY             = find_dataref("librain/z_depth_obj_5/pos_offset/y")
z_obj_obj5_offZ             = find_dataref("librain/z_depth_obj_5/pos_offset/z")

z_obj_obj6_name             = find_dataref("librain/z_depth_obj_6/filename")
z_obj_obj6_load             = find_dataref("librain/z_depth_obj_6/load")
z_obj_obj6_loaded           = find_dataref("librain/z_depth_obj_6/loaded")
z_obj_obj6_offX             = find_dataref("librain/z_depth_obj_6/pos_offset/x")
z_obj_obj6_offY             = find_dataref("librain/z_depth_obj_6/pos_offset/y")
z_obj_obj6_offZ             = find_dataref("librain/z_depth_obj_6/pos_offset/z")

rain_numglass               = find_dataref("librain/num_glass_use")
rain_init                   = find_dataref("librain/initialize")


--------------------------------- DO THIS EACH FLIGHT START ---------------------------------
function flight_start()

	log("[C400]: " .. path())   -- write in the log.txt the path for debugging

	librain_path    				= acfFolder .. "/objects/"
	mask_path						= acfFolder .. "/objects/"		
	
	local frontGlass	             = librain_path .. "frontGlass.obj"
	local sideGlass	            	 = librain_path .. "sideGlass.obj"
	local mask0_obj                  = acfFolder .. "/c400_cockpit.obj"
	local mask1_obj                  = mask_path .. "inn.obj"
	local mask2_obj                  = mask_path .. "doors.obj"
 	local mask3_obj                  = mask_path .. "fuse.obj"

	rain_numglass = 2
	
	rain_verbose = 1
	rain_debug_draw = 0
	rain_wipers = 0
	
	frontGlass_slant = 0.95
	frontGlass_tp_x = 0.5
	frontGlass_tp_y = -0.3
	frontGlass_thrust_factor = 0.25
	frontGlass_max_thrust = 2500
	frontGlass_gp_x = 0.5
	frontGlass_gp_y = 1.3
	frontGlass_gravity_factor = 0.7
	frontGlass_wp_x = 0.5
	frontGlass_wp_y = -1.1
	frontGlass_wind_factor = 1.0
	frontGlass_wind_normal = 1.0
	frontGlass_max_tas = 60
	frontGlass_obj = frontGlass
	frontGlass_obj_offX = 0.0
	frontGlass_obj_offY = 0.0
	frontGlass_obj_offZ = 0.0
	frontGlass_load = 1
	
	sideGlass_slant = 0.95
	sideGlass_tp_x = 0.0
	sideGlass_tp_y = 0.0
	sideGlass_thrust_factor = 0.0
	sideGlass_max_thrust = 1800
	sideGlass_gp_x = 0.5
	sideGlass_gp_y = 2.0
	sideGlass_gravity_factor = 0.7
	sideGlass_wp_x = 0.5
	sideGlass_wp_y = -1.1
	sideGlass_wind_factor = 1.0
	sideGlass_wind_normal = 0.0
	sideGlass_max_tas = 60
	sideGlass_obj = sideGlass
	sideGlass_obj_offX = 0.0
	sideGlass_obj_offY = 0.0
	sideGlass_obj_offZ = 0.0
	sideGlass_load = 1
	

	z_obj_obj0_name = mask0_obj
	z_obj_obj0_offX = 0
	z_obj_obj0_offY = 0
	z_obj_obj0_offZ = 0
	z_obj_obj0_load = 1
	
	z_obj_obj1_name = mask1_obj
	z_obj_obj1_offX = 0
	z_obj_obj1_offY = 0
	z_obj_obj1_offZ = 0
	z_obj_obj1_load = 1
	
	z_obj_obj2_name = mask2_obj
	z_obj_obj2_offX = 0
	z_obj_obj2_offY = 0
	z_obj_obj2_offZ = 0
	z_obj_obj2_load = 1
	
	z_obj_obj3_name = mask3_obj
	z_obj_obj3_offY = 0
	z_obj_obj3_offX = 0
	z_obj_obj3_offZ = 0
	z_obj_obj3_load = 1


	rain_init = 1
	

end



--------------------------------- REGULAR RUNTIME ---------------------------------
function after_physics()


end


function flight_crash()
	
	rain_init = 0
end



function aircraft_unload()
	
	rain_init = 0
	
end

