local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX = nil
local PlayerData = {}
local location1 = {
    { ['x'] = 234.26, ['y'] = -751.8, ['z'] = 34.63}, -- ffa
}
local location2 = {
    { ['x'] = 265.66, ['y'] = -999.39, ['z'] = -99.01}, -- penner apartment
}
local location3 = {
    { ['x'] = 118.74, ['y'] = 566.57, ['z'] = 175.69},
}
local location4 = {
    { ['x'] = 377.34, ['y'] = 429.42, ['z'] = 137.30},
}
local location5 = {
    { ['x'] = -927.55, ['y'] = -377.74, ['z'] = 112.67},
}
local location6 = {
    { ['x'] = 337.72, ['y'] = 436.98, ['z'] = 140.77},
}
local location7 = {
    { ['x'] = -174.72, ['y'] = 493.09, ['z'] = 129.04},
}
local location8 = {
    { ['x'] = -680.46, ['y'] = 588.60, ['z'] = 136.76},
}
local location9 = {
    { ['x'] = 265.91, ['y'] = -999.38, ['z'] = -100.00},
}
local location10 = {
    { ['x'] = -1287.30, ['y'] = 455.90, ['z'] = 89.29},
}
local location11 = {
    { ['x'] = -858.54, ['y'] = 697.51, ['z'] = 144.25},
}
local location12 = {
    { ['x'] = -762.50, ['y'] = 618.99, ['z'] = 135.53},
}
local location13 = {
    { ['x'] = -622.17, ['y'] = 54.58, ['z'] = 96.59},
}
local location14 = {
    { ['x'] = -766.66, ['y'] = 327.67, ['z'] = 210.39},
}
local location15 = {
    { ['x'] = -795.73, ['y'] = 326.75, ['z'] = 186.31},
}
local location16 = {
    { ['x'] = -765.38, ['y'] = 330.78, ['z'] = 195.08},
}
local location17 = {
    { ['x'] = -766.61, ['y'] = 327.87, ['z'] = 210.39},
}
local location18 = {
    { ['x'] = -795.29, ['y'] = 327.09, ['z'] = 186.31},
}
local location19 = {
    { ['x'] = -765.30, ['y'] = 330.93, ['z'] = 195.08},
}
local location20 = {
    { ['x'] = -765.88, ['y'] = 327.64, ['z'] = 210.39},
}
local location21 = {
    { ['x'] = -795.60, ['y'] = 327.34, ['z'] = 186.31},
}
local location22 = {
    { ['x'] = -765.52, ['y'] = 330.85, ['z'] = 195.08},
}
local location23 = {
    { ['x'] = -766.52, ['y'] = 327.89, ['z'] = 210.39},
}
local location24 = {
    { ['x'] = -795.64, ['y'] = 326.49, ['z'] = 186.31},
}
local location25 = {
    { ['x'] = -765.50, ['y'] = 331.31, ['z'] = 195.08},
}
local location26 = {
    { ['x'] = -766.28, ['y'] = 328.08, ['z'] = 210.39},
}
local location27 = {
    { ['x'] = -795.69, ['y'] = 326.76, ['z'] = 186.31},
}
local location28 = {
    { ['x'] = -765.09, ['y'] = 330.97, ['z'] = 195.08},
}
local location29 = {
    { ['x'] = -766.26, ['y'] = 328.10, ['z'] = 210.39},
}
local location30 = {
    { ['x'] = -795.65, ['y'] = 326.61, ['z'] = 186.31},
}
local location31 = {
    { ['x'] = -765.30, ['y'] = 331.41, ['z'] = 195.08},
}
local location32 = {
    { ['x'] = -765.95, ['y'] = 328.25, ['z'] = 210.39},
}
local location33 = {
    { ['x'] = -795.54, ['y'] = 326.65, ['z'] = 186.31},
}
local location34 = {
    { ['x'] = -765.08, ['y'] = 331.42, ['z'] = 195.12},
}
local location35 = {
    { ['x'] = -766.18, ['y'] = 328.47, ['z'] = 210.39},
}
local location36 = {
    { ['x'] = -795.65, ['y'] = 326.56, ['z'] = 186.31},
}
local location37 = {
    { ['x'] = -765.28, ['y'] = 331.08, ['z'] = 195.08},
}
local location38 = {
    { ['x'] = -11.92, ['y'] = -597.08, ['z'] = 78.43},
}
local location39 = {
    { ['x'] = -26.32, ['y'] = -588.38, ['z'] = 89.12},
}
local location40 = {
    { ['x'] = -1467.05, ['y'] = -527.57, ['z'] = 72.44},
}
local location41 = {
    { ['x'] = -1457.02, ['y'] = -530.21, ['z'] = 55.93},
}
local location42 = {
    { ['x'] = -71.81, ['y'] = -814.34, ['z'] = 242.39},
}
local location43 = {
    { ['x'] = -1571.26, ['y'] = -575.76, ['z'] = 107.52},
}
local location44 = {
    { ['x'] = -1390.76, ['y'] = -479.22, ['z'] = 72.04}
}
local location45 = {
    { ['x'] = 1443.48, ['y'] = 6333.33, ['z'] = 23.88}
}
local location46 = {
    { ['x'] = 1702.19, ['y'] = -1915.28, ['z'] = 115.38}
}
local location47 = {
    { ['x'] = 706.88, ['y'] = -966.94, ['z'] = 30.41}
}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()
end)

local enableField = false

function toggleField(enable)
    SetNuiFocus(enable, enable)
    enableField = enable

    ESX.TriggerServerCallback('9quh_inventar:loadmoney', function(money)
        if enable then
            SendNUIMessage({
                action = 'open',
                money = money
            })
        else
            SendNUIMessage({
                action = 'close'
            })
        end
    end)
    
end

function getPicbyItem(itemname)
    for k,v in pairs(Config.Items) do
        if itemname == k then
            return v.img
        end
    end
    return Config.DefaultPic
end


function ReloadInventory()
    ESX.TriggerServerCallback('9quh_inventar:loadmoney', function(money)
        SendNUIMessage({action = 'reset', money = money})
       
        ESX.TriggerServerCallback('9quh_inventar:loadTarget', function(data)
            for key, value in pairs(data) do
                SendNUIMessage({
                    action = "add",
                    identifier = value.identifier,
                    item = value.item,
                    count = value.count,
                    name = value.name,
                    label = value.label,
                    limit = value.weight,
                    rare = value.rare,
                    can_remove = value.can_remove,
                    url = getPicbyItem(value.name),
                    useable = value.usable
                })
            end
        end, GetPlayerServerId(PlayerId()))

        SendNUIMessage({
            money = money
        })
    end)
end

function Waffen()
    ESX.TriggerServerCallback('9quh_inventar:loadmoney', function(money)
        SendNUIMessage({action = 'reset', money = money})
       
        ESX.TriggerServerCallback('9quh_inventar:loadTargetWeapons', function(data)
            for key, value in pairs(data) do
                SendNUIMessage({
                    action = "addw",
                    identifier = value.identifier,
                    item = value.item,
                    count = value.count,
                    name = value.name,
                    label = value.label,
                    rare = value.rare,
                    can_remove = value.can_remove,
                    url = getPicbyItem(value.name),
                })
            end
        end, GetPlayerServerId(PlayerId()))

        SendNUIMessage({
            money = money
        })
    end)
end

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end

RegisterNUICallback('refresh', function(data, cb)
    ReloadInventory()
    cb('ok')
end)

RegisterNUICallback('use', function(data, cb)
    toggleField(false)
    SetNuiFocus(false, false)
    for i = 1, tonumber(data.amount), 1 do
        TriggerServerEvent('9quh_inventar:useItem', data.item)
        Wait(500)
    end

    cb('ok')
end)

RegisterNUICallback('throw', function(data, cb)
    toggleField(false)
    SetNuiFocus(false, false)
    local playerPed = GetPlayerPed(-1)
    loadAnimDict('anim@mp_snowball')
    TriggerServerEvent('9quh_inventar:throwItem', data.item, tonumber(data.amount))
    TaskPlayAnim(PlayerPedId(), 'anim@mp_snowball', 'pickup_snowball', 8.0, -1, -1, 0, 1, 0, 0, 0)
	Citizen.Wait(1300)
	ClearPedTasksImmediately(playerPed) 

    ESX.ShowNotification(("Du wirfst %sx %s weg"):format(data.amount, data.label))
    cb('ok')
end)

--Waffen
RegisterNUICallback('throwweapon', function(data, cb)
    toggleField(false)
    SetNuiFocus(false, false)
    local playerPed = GetPlayerPed(-1)
    loadAnimDict('anim@mp_snowball')
    TriggerServerEvent('9quh_inventar:throwWeapon', data.item, tonumber(data.amount))
    TaskPlayAnim(PlayerPedId(), 'anim@mp_snowball', 'pickup_snowball', 8.0, -1, -1, 0, 1, 0, 0, 0)
	Citizen.Wait(1300)
	ClearPedTasksImmediately(playerPed) 
    ESX.ShowNotification(("Du wirfst %sx %s weg"):format(data.amount, data.label))
    cb('ok')
end)

RegisterNUICallback('give', function(data, cb)
    inventoryblocked = true
    toggleField(false)
    SetNuiFocus(false, false)
    local playerPed = GetPlayerPed(-1)
    loadAnimDict('anim@mp_snowball')
    local player, dist = ESX.Game.GetClosestPlayer()

    if player == -1 or dist > 3.0 then
        ESX.ShowNotification('Es ist keine Person in der Nähe')
    else
        TriggerServerEvent('9quh_inventar:giveItem', data.item, data.amount, GetPlayerServerId(player))
        TaskPlayAnim(PlayerPedId(), 'anim@mp_snowball', 'pickup_snowball', 8.0, -1, -1, 0, 1, 0, 0, 0)
        Citizen.Wait(1300)
        ClearPedTasksImmediately(playerPed)
        ESX.ShowNotification(("Du hast jemanden %sx %s zugesteckt"):format(data.amount, data.label))
        inventoryblocked = false
    end
    
    cb('ok')
end)
--Waffen
RegisterNUICallback('giveweapon', function(data, cb)
    inventoryblocked = true
    toggleField(false)
    SetNuiFocus(false, false)
    local playerPed = GetPlayerPed(-1)
    loadAnimDict('anim@mp_snowball')
    local player, dist = ESX.Game.GetClosestPlayer()

    if player == -1 or dist > 3.0 then
        ESX.ShowNotification('Es ist keine Person in der Nähe')
    else
        TriggerServerEvent('9quh_inventar:giveWeapon', data.item, data.amount, GetPlayerServerId(player))
        TaskPlayAnim(PlayerPedId(), 'anim@mp_snowball', 'pickup_snowball', 8.0, -1, -1, 0, 1, 0, 0, 0)
        Citizen.Wait(1300)
        ClearPedTasksImmediately(playerPed)
        ESX.ShowNotification(("Du hast jemanden %sx %s zugesteckt"):format(data.amount, data.label))
        inventoryblocked = false
    end
    
    cb('ok')
end)

RegisterNUICallback('throwCash', function(data, cb)
    toggleField(false)
    SetNuiFocus(false, false)
    TriggerServerEvent('9quh_inventar:throwCash', tonumber(data.amount))
    ESX.ShowNotification(('Du wirfst $%s weg'):format(data.amount))
end)

RegisterNUICallback('givecash', function(data, cb)
    inventoryblocked = true
    toggleField(false)
    SetNuiFocus(false, false)
    local playerPed = GetPlayerPed(-1)
    loadAnimDict('anim@mp_snowball')
    local player, dist = ESX.Game.GetClosestPlayer()

    if player == -1 or dist > 3.0 then
        ESX.ShowNotification('Es ist keine Person in der Nähe')
    else
        TriggerServerEvent('9quh_inventar:giveCash', tonumber(data.amount), GetPlayerServerId(player))
        TaskPlayAnim(PlayerPedId(), 'anim@mp_snowball', 'pickup_snowball', 8.0, -1, -1, 0, 1, 0, 0, 0)
        Citizen.Wait(1300)
        ClearPedTasksImmediately(playerPed)
        ESX.ShowNotification(('Du hast jemanden %s$ zugesteckt'):format(data.amount))
        inventoryblocked = false
    end
end)

RegisterNetEvent('9quh_inventar:setMax')
AddEventHandler('9quh_inventar:setMax', function(max)
    SendNUIMessage({
        action = 'updatemax',
        max = max
    })
end)



AddEventHandler('onResourceStop', function(name)
    if GetCurrentResourceName() ~= name then
        return
    end

    toggleField(false)
end)

RegisterNUICallback('escape', function(data, cb)
    toggleField(false)
    SetNuiFocus(false, false)

    cb('ok')
end)

CreateThread(function()
    while true do
        Wait(0)
        local pos = GetEntityCoords(player)
        local entityWorld = GetOffsetFromEntityInWorldCoords(player, 0.0, 10.0, 0.0)
    
        local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, player, 0)
        local a, b, c, d, vehicleHandle = GetRaycastResult(rayHandle)
    
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local vehicle

        vehicle = GetClosestVehicle(coords, 4.0, 0, 71)

            if IsControlJustPressed(0, 289) then
                if not DoesEntityExist(vehicle) and not inventoryblocked then
                    ESX.UI.Menu.CloseAll()
                    ReloadInventory()
                    Waffen()
                    toggleField(true)
                else
                    ESX.ShowNotification('Du kannst dein Inventory zurzeit nicht öffnen.')
                end
            end
    end
end)



Citizen.CreateThread(function()
    while true do
	local ped = PlayerPedId()
        Citizen.Wait(1)
            for i=1, #location1, 1 do 
            if GetDistanceBetweenCoords(GetEntityCoords(ped), location1[i].x, location1[i].y, location1[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location2[i].x, location2[i].y, location2[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location3[i].x, location3[i].y, location3[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location4[i].x, location4[i].y, location4[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location5[i].x, location5[i].y, location5[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location6[i].x, location6[i].y, location6[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location7[i].x, location7[i].y, location7[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location8[i].x, location8[i].y, location8[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location9[i].x, location9[i].y, location9[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location10[i].x, location10[i].y, location10[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location11[i].x, location11[i].y, location11[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location12[i].x, location12[i].y, location12[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location13[i].x, location13[i].y, location13[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location14[i].x, location14[i].y, location14[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location15[i].x, location15[i].y, location15[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location16[i].x, location16[i].y, location16[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location17[i].x, location17[i].y, location17[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location18[i].x, location18[i].y, location18[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location19[i].x, location19[i].y, location19[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location35[i].x, location35[i].y, location35[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location21[i].x, location21[i].y, location21[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location22[i].x, location22[i].y, location22[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location23[i].x, location23[i].y, location23[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location24[i].x, location24[i].y, location24[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location25[i].x, location25[i].y, location25[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location26[i].x, location26[i].y, location26[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location27[i].x, location27[i].y, location27[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location28[i].x, location28[i].y, location28[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location29[i].x, location29[i].y, location29[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location30[i].x, location30[i].y, location30[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location31[i].x, location31[i].y, location31[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location32[i].x, location32[i].y, location32[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location33[i].x, location33[i].y, location33[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location34[i].x, location34[i].y, location34[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location35[i].x, location35[i].y, location35[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location36[i].x, location36[i].y, location36[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location37[i].x, location37[i].y, location37[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location38[i].x, location38[i].y, location38[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location39[i].x, location39[i].y, location39[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location40[i].x, location40[i].y, location40[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location41[i].x, location41[i].y, location41[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location42[i].x, location42[i].y, location42[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location43[i].x, location43[i].y, location43[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location44[i].x, location44[i].y, location44[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location45[i].x, location45[i].y, location45[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location46[i].x, location46[i].y, location46[i].z, true) < 35 then
                inventoryblocked = true
            elseif GetDistanceBetweenCoords(GetEntityCoords(ped), location47[i].x, location47[i].y, location47[i].z, true) < 35 then
                inventoryblocked = true
            else
                inventoryblocked = false
            end
        end
    end
end)