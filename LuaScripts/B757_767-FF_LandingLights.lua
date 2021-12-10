-- -----------------------------------------
-- FlightFactor B757 Landing Lights LUA Script
-- Created by SGRA
-- v1.0 223-Nov-2021
-- -----------------------------------------

if PLANE_ICAO == "B752" or PLANE_ICAO == "B753" or PLANE_ICAO == "B762" or PLANE_ICAO == "B763" then

    -- Defines the Landing Light DataRefs
    dataref("FF757_767LandLeft", "1-sim/lights/landingL/switch", "writeable")
	dataref("FF757_767LandRight", "1-sim/lights/landingR/switch", "writeable")
	
    -- Creates the custom command to turn on all landing lights
	create_command("FlyWithLua/FF757_767/AllLandingLightsOn",
    "Landing Lights ON",
    "FF757_767LandLeft = 1; FF757_767LandRight = 1",
    "",
    "")

    create_command("FlyWithLua/FF757_767/AllLandingLightsOff",
    "Landing Lights OFF",
    "FF757_767LandLeft = 0; FF757_767LandRight = 0",
    "",
    "")
end