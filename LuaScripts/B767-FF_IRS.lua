-- -----------------------------------------
-- FlightFactor B767 IRS Navigation LUA Script
-- Created by SGRA
-- v1.0 25-Nov-2021
-- -----------------------------------------

if PLANE_ICAO == "B762" or PLANE_ICAO == "B763" then

    -- Defines the Landing Light DataRefs
    dataref("FF767IRSNav01", "1-sim/irs/1/modeSel", "writeable")
    dataref("FF767IRSNav02", "1-sim/irs/2/modeSel", "writeable")
    dataref("FF767IRSNav03", "1-sim/irs/3/modeSel", "writeable")

    -- Creates the custom command to turn on all landing lights
	create_command("FlyWithLua/FF767/IRSOn",
    "IRS Nav Mode ON",
    "FF767IRSNav01=2; FF767IRSNav02=2; FF767IRSNav03=2",
    "",
    "")

    create_command("FlyWithLua/FF767/IRSOff",
    "IRS Nav Mode OFF",
    "FF767IRSNav01=0; FF767IRSNav02=0; FF767IRSNav03=0",
    "",
    "")

end