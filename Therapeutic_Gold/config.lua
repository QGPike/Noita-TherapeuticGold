--Please use the in-game settings to change these values

hVal  = tonumber(ModSettingGet("Therapeutic_Gold.regen_scalar"))/25   -- Health that 1 gold gives, 0.04 is 1 pt of health. 1/25 = 0.04, this converts the value properly
pGold = 100000000000 -- Should prevent full health load bug, if you have this much gold... Change this I guess