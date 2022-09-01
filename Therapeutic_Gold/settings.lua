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
		value_default = 0.016,
		value_min = 0,
		value_max = 1,
		value_display_multiplier = 1,
		value_display_formatting = " x = $0",
		scope = MOD_SETTING_SCOPE_RUNTIME,
	}
}

