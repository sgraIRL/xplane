-- -----------------------------------------
-- FlightFactor B757/767 Taxi Lights LUA Script
-- Created by SGRA
-- v1.0 223-Nov-2021
-- -----------------------------------------

if PLANE_ICAO == "B752" or PLANE_ICAO == "B753" or PLANE_ICAO == "B762" or PLANE_ICAO == "B763" then

    -- Defines the Taxi Lights DataRefs - Includes Runway Turnoff lights
    dataref("FF757_767LandNose", "1-sim/lights/landingN/switch", "writeable")
    dataref("FF757_767RunwayL", "1-sim/lights/runwayL/switch", "writeable")
	dataref("FF757_767RunwayR", "1-sim/lights/runwayR/switch", "writeable")
	dataref("FF757_767Taxi", "1-sim/lights/taxi/switch", "writeable")

    -- Creates the custom command to turn on all landing lights
	create_command("FlyWithLua/FF757_767/AllTaxiLightsOn",
    "Taxi Lights ON",
    "FF757_767LandNose = 1; FF757_767RunwayL = 1; FF757_767RunwayR = 1; FF757_767Taxi = 1",
    "",
    "")

    create_command("FlyWithLua/FF757_767/AllTaxiLightsOff",
    "Taxi Lights OFF",
    "FF757_767LandNose = 0; FF757_767RunwayL = 0; FF757_767RunwayR = 0; FF757_767Taxi = 0",
    "",
    "")
end