ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

ESX.RegisterServerCallback("9quh_inventar:loadTarget", function(source, cb)
	local s = source
	local x = ESX.GetPlayerFromId(s)
	cb(x.getInventory())
end)

ESX.RegisterServerCallback("9quh_inventar:loadTargetWeapons", function(source, cb)
	local s = source
	local x = ESX.GetPlayerFromId(s)
	cb(x.getLoadout())
end)


ESX.RegisterServerCallback("9quh_inventar:loadmoney", function(source, cb)
	local s = source
	local x = ESX.GetPlayerFromId(s)
	cb(x.getMoney())
end)

RegisterNetEvent('9quh_inventar:useItem')
AddEventHandler('9quh_inventar:useItem', function(name, count)
	if name ~= nil then
		ESX.UseItem(source, name)
	end
end)

RegisterNetEvent('9quh_inventar:throwItem')
AddEventHandler('9quh_inventar:throwItem', function(name, count)
	local playerPed = GetPlayerPed(-1)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    --Items
	if name == 'bandage' or 'bread' or 'bulletproof' or 'clip' or 'contract' or 'cuffs' or 'cuff_keys' or 'drill' or 'fixkit' or 'jewels' or 'medikit' or 'meth' or 'phone' or 'water' or 'kroeten' or 'kroeten_pooch' or 'ephi' or 'aramidfasern' or 'aramid' or 'kevlar' or 'holz' or 'schraube' or 'huelse' or 'radio' or 'bauxit' or 'aluminiumoxid' or 'aluminium' or 'eisenerz' or 'magazin' or 'trauben' or 'traubenverarbeitet' or 'lspdstandard' or 'orangen' or 'orangenverarbeitet' or 'lsfstandard' or 'weedsamen' or 'weed' or 'joint' or 'kocher' or 'tfcoupon' or 'ffcoupon' or 'teddy' or 'rose' or 'srose' or 'kaffee' or 'cola' or 'steine' or 'fib1' or 'fib2' or 'fib3' or 'lspdweste1' or 'lspdweste2' or 'lspdweste3' then
		if xPlayer.getInventoryItem(name).count < count then
			-- achtung hurensohn
		else
			xPlayer.removeInventoryItem(name, count)
		end

	end
end)

RegisterNetEvent('9quh_inventar:throwWeapon')
AddEventHandler('9quh_inventar:throwWeapon', function(name, count)
	local playerPed = GetPlayerPed(-1)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    --Waffen
	if name == 'weapon_gusenberg' or 'weapon_pistol' or 'weapon_heavypistol' or 'weapon_assaultrifle' or 'weapon_advancedrifle' or 'weapon_nightstick' or 'weapon_stungun' or 'weapon_bzgas' or 'weapon_pumpshotgun' or 'weapon_specialcarbine' or 'weapon_bullpuprifle' then
		xPlayer.removeWeapon(name, count)
	end
end)

RegisterNetEvent('9quh_inventar:throwCash')
AddEventHandler('9quh_inventar:throwCash', function(count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeMoney(count)
	TriggerClientEvent('9quh_inventar:setMoney', source, xPlayer.getMoney())
end)

RegisterNetEvent('9quh_inventar:giveItem')
AddEventHandler('9quh_inventar:giveItem', function(name, count, target)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xTarget = ESX.GetPlayerFromId(target)
	local thetrolls = tonumber(xPlayer.getInventoryItem(name).count)
	local anzahlubergabe = tonumber(count)
	local name1 = GetPlayerName(source)
	local name2 = GetPlayerName(target)

	if name == 'bandage' or 'schutzweste' or 'methlab' or 'bread' or 'bulletproof' or 'clip' or 'contract' or 'cuffs' or 'cuff_keys' or 'drill' or 'fixkit' or 'jewels' or 'medikit' or 'meth' or 'phone' or 'water' or 'kroeten' or 'kroeten_pooch' or 'ephi' or 'aramidfasern' or 'aramid' or 'kevlar' or 'holz' or 'schraube' or 'huelse' or 'radio' or 'bauxit' or 'aluminiumoxid' or 'aluminium' or 'eisenerz' or 'magazin' or 'trauben' or 'traubenverarbeitet' or 'lspdstandard' or 'orangen' or 'orangenverarbeitet' or 'lsfstandard' or 'weedsamen' or 'weed' or 'joint' or 'kocher' or 'tfcoupon' or 'ffcoupon' or 'teddy' or 'rose' or 'srose' or 'kaffee' or 'cola' or 'steine' or 'fib1' or 'fib2' or 'fib3' or 'lspdweste1' or 'lspdweste2' or 'lspdweste3' then
		if thetrolls >= anzahlubergabe then 
			xPlayer.removeInventoryItem(name, count)
			xTarget.addInventoryItem(name, count)
			TriggerClientEvent('esx:showNotification', target, "Du hast " ..count.. "x " ..name.. "  bekommen ")
			TriggerClientEvent('9quh_inventar:setMax', source, count)
			senditemlog('Item-Log','Spieler: ```' .. name1 .. '(' .. source .. ')``` übergibt Spieler ```'.. name2 .. '(' .. target .. ')``` folgendes Item:```' .. name .. '``` Anzahl:```'.. count .. '```',38656)
		else
			print('ACHTUNG MODDER', ESX.GetPlayerName(_source))
		end
	end

end)

--Waffen
RegisterNetEvent('9quh_inventar:giveWeapon')
AddEventHandler('9quh_inventar:giveWeapon', function(name, count, target)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xTarget = ESX.GetPlayerFromId(target)
	local name1 = GetPlayerName(source)
	local name2 = GetPlayerName(target)

	if name == 'weapon_gusenberg' or 'weapon_pistol' or 'weapon_heavypistol' or 'weapon_assaultrifle' or 'weapon_advancedrifle' or 'weapon_nightstick' or 'weapon_stungun' or 'weapon_bzgas' or 'weapon_pumpshotgun' or 'weapon_specialcarbine' or 'weapon_bullpuprifle' then
		xPlayer.removeWeapon(name, count)
		xTarget.addWeapon(name, 30) --30 Schuss
		TriggerClientEvent('esx:showNotification', target, "Du hast " ..count.. "x " ..name.. "  bekommen ")
		TriggerClientEvent('9quh_inventar:setMax', source, count)
		sendwaffenlog('Waffen-Log','Spieler: ```' .. name1 .. '(' .. source .. ')``` übergibt Spieler ```'.. name2 .. '(' .. target .. ')``` folgende Waffe:```' .. name .. ' mit '.. count .. ' Schuss```',38656)
	end
end)

RegisterNetEvent('9quh_inventar:giveCash')
AddEventHandler('9quh_inventar:giveCash', function(count, target)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xTarget = ESX.GetPlayerFromId(target)
	local trolls = tonumber(xPlayer.getMoney())
	local anzahlubergabe = tonumber(count)

	local name = GetPlayerName(source)
	local name2 = GetPlayerName(target)

	if trolls >= anzahlubergabe then 
		xPlayer.removeMoney(count)
		xTarget.addMoney(count)
		TriggerClientEvent('esx:showNotification', target, "Du hast " ..count.. "$ bekommen")
		TriggerClientEvent('9quh_inventar:setMax', source, count - 1)
		TriggerClientEvent('9quh_inventar:setMax', target, 1 - count)
		sendgeldlog('Geld-Log','Spieler: ```' .. name .. '(' .. source .. ')``` übergibt Spieler ```'.. name2 .. '(' .. target .. ')``` folgenden Betrag:```$' .. count .. '```',38656)
	else
		-- Glitcher
	end

end)


function senditemlog(name,message,color)
	local DiscordWebHook = "https://discordapp.com/api/webhooks/806839645404659743/VG-Rq0C3Gy9wNkWd53HYidWQMps0ageVHXnOi296musHMjJgphsqVJXPxj78yZBftwus"
	-- Modify here your discordWebHook username = name, content = message,embeds = embeds
  local embeds = {
	  {
		  ["description"]=message,
          ["type"]="rich",
          ["title"] = "SilenceLife - Discord Logger",
          ["color"] =color,
          ["footer"]=  {
                  ["text"]= "Gesendet am: " .. os.date("%d/%m/%Y %I:%M"),
                ["icon_url"] = "https://cdn.discordapp.com/attachments/806241130345791509/806839975470432256/discordlogo.png",
                },
	  }
  }
  
	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end


function sendgeldlog(name,message,color)
	local DiscordWebHook = "https://discordapp.com/api/webhooks/806839998527438918/4IJO6727EugRnRsBn8_FG3-rCXol0Wxw2EW6dfvj6525oA3EXOv4LwO632WRvPTXwlMU"
	-- Modify here your discordWebHook username = name, content = message,embeds = embeds
  local embeds = {
	  {
		  ["description"]=message,
          ["type"]="rich",
          ["title"] = "SilenceLife - Discord Logger",
          ["color"] =color,
          ["footer"]=  {
                  ["text"]= "Gesendet am: " .. os.date("%d/%m/%Y %I:%M"),
                ["icon_url"] = "https://cdn.discordapp.com/attachments/806241130345791509/806839975470432256/discordlogo.png",
                },
	  }
  }
  
	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

function sendwaffenlog(name,message,color)
	local DiscordWebHook = "https://discordapp.com/api/webhooks/806839871473844228/12MVoA2d3WE6UsWbPaIf-uLHvmEvojhZIajEpVMJ6iuPpgs6UjX8XGjHSmnYw8BnBjfQ"
	-- Modify here your discordWebHook username = name, content = message,embeds = embeds
  local embeds = {
	  {
		  ["description"]=message,
          ["type"]="rich",
          ["title"] = "SilenceLife - Discord Logger",
          ["color"] =color,
          ["footer"]=  {
                  ["text"]= "Gesendet am: " .. os.date("%d/%m/%Y %I:%M"),
                ["icon_url"] = "https://cdn.discordapp.com/attachments/806241130345791509/806839975470432256/discordlogo.png",
                },
	  }
  }
  
	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end