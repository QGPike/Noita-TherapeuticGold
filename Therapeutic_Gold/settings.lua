dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/lib/mod_settings.lua")

local mod_id = "Therapeutic_Gold"
mod_settings_version = 1
mod_settings =
{
	{
		id = "regen_scalar",
		ui_name = "Regen Multiplier",
		ui_description = "The amount of health gained per 1 gold earned",
		value_default = 0.25,
		value_min = 0,
		value_max = 5,
		value_display_multiplier = 1,
		value_display_formatting = "",
		scope = MOD_SETTING_SCOPE_RUNTIME,
	}
}

-- This function is called to display the settings UI for this mod. Your mod's settings wont be visible in the mod settings menu if this function isn't defined correctly.
function ModSettingsUpdate( init_scope )
    local old_version = mod_settings_get_version( mod_id )
    mod_settings_update( mod_id, mod_settings, init_scope )
end

function ModSettingsGuiCount()
    return mod_settings_gui_count( mod_id, mod_settings )
end

function ModSettingsGui( gui, in_main_menu )
    mod_settings_gui( mod_id, mod_settings, gui, in_main_menu )
end