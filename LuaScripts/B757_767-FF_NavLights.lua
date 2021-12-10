-- -----------------------------------------
-- FlightFactor B757/767 Landing Lights LUA Script
-- Created by SGRA
-- v1.0 24-Nov-2021
-- -----------------------------------------

if PLANE_ICAO == "B752" or PLANE_ICAO == "B753" or PLANE_ICAO == "B762" or PLANE_ICAO == "B763" then

    -- Defines the Landing Light DataRefs
    dataref("FF757_767NavLights", "anim/43/button", "writeable")
    	

    -- Creates the custom command to turn on all landing lights
	create_command("FlyWithLua/FF757_767/NavLightsOn",
    "NAV lights ON",
    "FF757_767NavLights=1",
    "",
    "")

    create_command("FlyWithLua/FF757_767/NavLightsOff",
    "NAV lights OFF",
    "FF757_767NavLights=0",
    "",
    "")

end