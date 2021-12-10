-- -----------------------------------------
-- FlightFactor B757/767 Beacon Lights LUA Script
-- Created by SGRA
-- v1.0 24-Nov-2021
-- -----------------------------------------

if PLANE_ICAO == "B752" or PLANE_ICAO == "B753" or PLANE_ICAO == "B762" or PLANE_ICAO == "B763" then

    -- Defines the Landing Light DataRefs
    dataref("FF757_767BeaconLights", "anim/44/button", "writeable")
    	

    -- Creates the custom command to turn on all landing lights
	create_command("FlyWithLua/FF757_767/BeaconLightsOn",
    "Beacon lights ON",
    "FF757_767BeaconLights=1",
    "",
    "")

    create_command("FlyWithLua/FF757_767/BeaconLightsOff",
    "Beacon lights OFF",
    "FF757_767BeaconLights=0",
    "",
    "")

end