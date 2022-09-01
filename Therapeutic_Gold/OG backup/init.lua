dofile_once( "mods/Therapeutic_Gold/config.lua" )
dofile_once( "data/scripts/lib/coroutines.lua" )
dofile_once( "data/scripts/lib/utilities.lua" )

prev_gold = pGold

function OnWorldPreUpdate()
	for i,player in ipairs(EntityGetWithTag("player_unit")) do
		local stats=EntityGetComponent(player,"DamageModelComponent")[1]
		local hp=ComponentGetValueFloat(stats,"hp")
		local max_hp=ComponentGetValueFloat(stats,"max_hp")
----------
		local wallet = EntityGetFirstComponent(EntityGetWithTag( "player_unit" )[1], "WalletComponent")
		local cGold = ComponentGetValue2(wallet, "money") -- Amount in Wallet
---------
		------------------
		if (cGold ~= prev_gold) then
			print("Gold Changed by: ")
			print(cGold - prev_gold)
			local HealVal = cGold - prev_gold
			HealVal = HealVal * hVal -- Change in Config
			print("Calculated Health: ")
			print(HealVal)
			if (HealVal > 0) then
				ComponentSetValue(stats,"hp",hp + HealVal) -- Heal here
			end
			prev_gold = cGold --Reset prev_Gold
			print("Prev Gold: ")
			print(prev_gold)
		end
	end
end
