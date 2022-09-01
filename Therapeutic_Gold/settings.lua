dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/lib/mod_settings.lua")

local mod_id = "Therapeutic_Gold"
mod_settings_version = 1
mod_settings =
{
	{
		id = "pos_x",
		ui_name = "Horizontal position",
		ui_description = "",
		value_default = 2,
		value_min = 0,
		value_max = 1000,
		value_display_multiplier = 1,
		value_display_formatting = " x = $0",
		scope = MOD_SETTING_SCOPE_RUNTIME,
	}
}

