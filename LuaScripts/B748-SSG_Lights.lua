-- -- landing lights
ref_landing_light_pos_inl = XPLMFindDataRef("SSG/Lights/Land_INL")
ref_landing_light_pos_inr = XPLMFindDataRef("SSG/Lights/Land_INR")
ref_landing_light_pos_outl = XPLMFindDataRef("SSG/Lights/Land_OUTL")
ref_landing_light_pos_outr = XPLMFindDataRef("SSG/Lights/Land_OUTR")

function turn_on_landing_lights()
    local current_pos = XPLMGetDatai(ref_landing_light_pos_l)
    if (current_pos == 0) then
        command_once("les/sf34a/acft/ltng/mnp/landing_lights_switch_L")
        XPLMSetDatai(ref_landing_light_pos_l, 1)
    end
    current_pos = XPLMGetDatai(ref_landing_light_pos_r)
    if (current_pos == 0) then
        command_once("les/sf34a/acft/ltng/mnp/landing_lights_switch_R")
        XPLMSetDatai(ref_landing_light_pos_r, 1)
    end
end

function turn_off_landing_lights()
    local current_pos = XPLMGetDatai(ref_landing_light_pos_l)
    if (current_pos == 1) then
        command_once("les/sf34a/acft/ltng/mnp/landing_lights_switch_L")
        XPLMSetDatai(ref_landing_light_pos_l, 0)
    end
    current_pos = XPLMGetDatai(ref_landing_light_pos_r)
    if (current_pos == 1) then
        command_once("les/sf34a/acft/ltng/mnp/landing_lights_switch_R")
        XPLMSetDatai(ref_landing_light_pos_r, 0)
    end
end

if string.sub(AIRCRAFT_FILENAME, 1, 13) == "SSG_B748-I_11" or "SSG_B748-F_11" then
    create_command("FlyWithLua/sgra/SSG748/landing_lights_on", "turn L&R landing lights on",
    "turn_on_landing_lights()", "", "")

    create_command("FlyWithLua/sgra/SSG748/landing_lights_off", "turn L&R landing lights off",
    "turn_off_landing_lights()", "", "")
end