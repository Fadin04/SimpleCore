-- DVA Command
if Config.dvaCommand then
    local delay2 = Config.delay * 1000
    RegisterNetEvent("SMC:dva")
    AddEventHandler("SMC:dva", function()
        TriggerEvent('chat:addMessage', {color = {255, 255, 255}, multiline = false, args = {'^1[Server]', Config.delaymessage}})
        Wait(delay2)
        TriggerEvent('chat:addMessage', {color = {255, 255, 255}, multiline = false, args = {'^1[Server]', Config.deletemessage}})
        local totalvehc = 0
        local notdelvehc = 0

        for vehicle in EnumerateVehicles() do
            if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then
                SetVehicleHasBeenOwnedByPlayer(vehicle, false)
                SetEntityAsMissionEntity(vehicle, false, false)
                DeleteVehicle(vehicle)
                if (DoesEntityExist(vehicle)) then
                    DeleteVehicle(vehicle)
                end
                if (DoesEntityExist(vehicle)) then
                    notdelvehc = notdelvehc + 1
                end
            end
            totalvehc = totalvehc + 1
        end
    end)
end

-- Simple Ragdolling 

if Config.ragdoll then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if IsControlJustPressed(1, Config.keybind) then
                SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, true, true,
                                false)
            end
        end
    end)
end

-- Watermark 

if Config.serverWatermark then
    Citizen.CreateThread(function()
        while true do
            Wait(1)
            SetTextColour(129, 45, 211, Config.transparency)
            SetTextFont(Config.font)
            SetTextScale(Config.size, Config.size)
            SetTextWrap(0.0, 1.0)
            SetTextCentre(false)
            SetTextDropshadow(2, 2, 0, 0, 0)
            SetTextEdge(1, 0, 0, 0, 205)
            SetTextEntry("STRING")
            AddTextComponentString(Config.servername)
            DrawText(Config.x, Config.y)
        end
    end)
end

-- Automessaging 

if Config.autoMessage then
    local timeout = Config.autoDelay * 1000 * 60
    Citizen.CreateThread(function()
        while true do
            function chat(i)
                TriggerEvent('chat:addMessage', {color = {255, 255, 255}, multiline = false, args = {Config.autoPrefix, Config.autoMessages[i]}})
            end
            for i in pairs(Config.autoMessages) do
                    chat(i)
                Citizen.Wait(timeout)
            end
            Citizen.Wait(50)
        end
    end)
end

-- Server PVP

if Config.pvp then
    AddEventHandler("playerSpawned", function()
        NetworkSetFriendlyFireOption(true)
        SetCanAttackFriendly(PlayerPedId(), true, true)
    end)
end

-- Roleplay Commands

if Config.rpcommands then
    Citizen.CreateThread(function()
        TriggerEvent('chat:addSuggestion', '/twitter',
                     'Post something new on twitter', {
            {name = "Content", help = "Post something new you did today!"}
        })
        TriggerEvent('chat:addSuggestion', '/do', 'Describe what you are doing', {
            {name = "Action", help = "Describe what it is you're doing."}
        })
        TriggerEvent('chat:addSuggestion', '/me', 'Describe what you are doing', {
            {name = "Action", help = "Describe what it is you are doing."}
        })
        TriggerEvent('chat:addSuggestion', '/gme', 'Show what you are doing globally', {
            {name = "Action", help = "Describe what you are doing globally"}
        })
        TriggerEvent('chat:addSuggestion', '/darkweb', 'Post all your criminal doings on the darkweb', {
            {name = "Dark Action", help = "Post things revolving around crime, i.e. drugs, weapons, sales."}
        })
        TriggerEvent('chat:addSuggestion', '/instagram', 'Post something new on instagram!', {
            {name = "Content", help = "Post something new on instagram for everyone to see!"}
        })
        TriggerEvent('chat:addSuggestion', '/dispatch', 'Call something into dispatch via the chat!', {
            {name = "Transmission", help = "Transmit your message to all available units."}
        })
        TriggerEvent('chat:addSuggestion', '/radio', 'Call something into your leo buddies via the chat!', {
            {name = "Transmission", help = "Transmit your message to all available units."}
        })
        TriggerEvent('chat:addSuggestion', '/ooc', 'Say something out of character!', {
            {name = "Message", help = "Send your message from out of character into global chat."}
        })
        TriggerEvent('chat:addSuggestion', '/fix', 'Fix your vehicle!', {
            {name = "Vehicle Action", help = "Fix the vehicle you are currently occupying!"}
        })
        TriggerEvent('chat:addSuggestion', '/clean', 'Clean your vehicle!', {
            {name = "Vehicle Actiion", help = "Clean the vehicle your are currently occupying!"}
        })
    end)
end

-- Fix vehicle

RegisterCommand(Config.fixName, function(source, args, rawCommand)
    local vehicle = GetVehiclePedIsIn(PlayerPedId())
    if vehicle ~= nil then
        SetVehicleEngineHealth(vehicle, 100)
        SetVehicleFixed(vehicle)
        TriggerEvent('chat:addMessage', {color = {255, 255, 255}, multiline = false, args = {'SimpleCore', 'Vehicle fixed!'}})
    else
        TriggerEvent('chat:addMessage', {color = {255, 255, 255}, multiline = false, args = {'SimpleCore', 'You must be in a vehicle to use this command!'}})
    end
end)

-- Clean vehicle

RegisterCommand(Config.cleanName, function(source, args, rawCommand)
    local vehicle = GetVehiclePedIsIn(PlayerPedId())
    if vehicle ~= nil then
        SetVehicleDirtLevel(vehicle, 0)
        TriggerEvent('chat:addMessage', {color = {255, 255, 255}, multiline = false, args = {'SimpleCore', 'Vehicle cleaned!'}})
    else
        TriggerEvent('chat:addMessage', {color = {255, 255, 255}, multiline = false, args = {'SimpleCore', 'You must be in a vehicle to use this command!'}})
    end
end)

-- 911 Script

if Config.nine11 then
    if chatSuggestion then
        TriggerEvent("chat:addSuggestion", "/911",
                     "Call 911 for your emergency!", {
            {name = "Emergency", help = "Describe your emergency here!"}
        })
    end
    RegisterCommand('911', function(source, args)

        local name = GetPlayerName(PlayerId())
        local ped = GetPlayerPed(PlayerId())
        local x, y, z = table.unpack(GetEntityCoords(ped, true))
        local street = GetStreetNameAtCoord(x, y, z)
        local location = GetStreetNameFromHashKey(street)
        local msg = table.concat(args, ' ')

        if args[1] == nil then
            TriggerEvent('chat:addMessage', {color = {255, 255, 255}, multiline = false, args = {'^5San Andreas 911', 'What is the nature and location of your emergency?'}})
        end
        if args[1] ~= nil then
            TriggerServerEvent('SIM:911call', location, msg, x, y, z, name)
        end
    end)

    RegisterNetEvent('SIM:911call')
    AddEventHandler('SIM:911call', function(name, x, y, z)

        blip = nil
        blips = {}

        local blip = AddBlipForRadius(x, y, z, Config.blipRadius)

        SetBlipHighDetail(blip, true)
        SetBlipColour(blip, 3)
        SetBlipAlpha(blip, 128)

        local blip1 = AddBlipForCoord(x, y, z)

        SetBlipSprite(blip1, sprite)
        SetBlipDisplay(blip1, true)
        SetBlipScale(blip1, 0.9)
        SetBlipColour(blip1, 3)
        SetBlipAsShortRange(blip1, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("911 - " .. name)
        EndTextCommandSetBlipName(blip1)
        table.insert(blips, blip1)
        Wait(Config.blipTime * 1000)
        for i, blip1 in pairs(blips) do
            RemoveBlip(blip)
            RemoveBlip(blip1)

        end
    end)
end

-- Taser Effects

if Config.taseEffects then
    local isTaz = false
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(5)
            ped = PlayerPedId()

            if IsPedBeingStunned(ped) then

                SetPedToRagdoll(ped, 5000, 5000, 0, 0, 0, 0)

            end

            if IsPedBeingStunned(ped) and not isTaz then

                isTaz = true
                SetTimecycleModifier("REDMIST_blend")
                ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE", 1.0)

            elseif not IsPedBeingStunned(ped) and isTaz then
                isTaz = false
                Wait(5000)

                SetTimecycleModifier("hud_def_desat_Trevor")

                Wait(10000)

                SetTimecycleModifier("")
                SetTransitionTimecycleModifier("")
                StopGameplayCamShaking()
            end
        end
    end)
end


-- Combat Rolling
-- if Config.combatRolling then
--     Citizen.CreateThread(function()
--         while true do
--             Citizen.Wait(0)
--             if IsPedArmed(GetPlayerPed(-1), 4 | 2) and IsControlPressed(0, 25) then
--                 DisableControlAction(0, 22, true)
--             end
--         end
--     end)
-- end

-- Seat Shuffle

-- if Config.shuffle then
--     local playerped = nil
--     local currentvehicle = nil

--     Citizen.CreateThread(function()
--         while true do
--             Citizen.Wait(100)
--             playerped = PlayerPedId()
--             currentvehicle = GetVehiclePedIsIn(playerped, false)
--         end
--     end)

--     Citizen.CreateThread(function()
--         while true do
--             Citizen.Wait(100)
--             if IsPedInAnyVehicle(playerped, false) and Config.allowShuffling ==
--                 false then
--                 SetPedConfigFlag(playerped, 184, true)
--                 if GetIsTaskActive(playerped, 165) then
--                     seat = 0
--                     if GetPedInVehicleSeat(currentvehicle, -1) == playerped then
--                         seat = -1
--                     end
--                     SetPedIntoVehicle(playerped, currentvehicle, seat)
--                 end
--             elseif IsPedInAnyVehicle(playerped, false) and Config.allowShuffling ==
--                 true then
--                 SetPedConfigFlag(playerped, 184, false)
--             end
--         end
--     end)

--     RegisterNetEvent("SIM:Shuffle")
--     AddEventHandler("SIM:Shuffle", function()
--         if IsPedInAnyVehicle(playerped, false) then
--             seat = 0
--             if GetPedInVehicleSeat(currentvehicle, -1) == playerped then
--                 seat = -1
--             end
--             if GetPedInVehicleSeat(currentvehicle, -1) == playerped then
--                 TaskShuffleToNextVehicleSeat(playerped, currentvehicle)
--             end
--             Config.allowShuffling = true
--             while GetPedInVehicleSeat(currentvehicle, seat) == playerped do
--                 Citizen.Wait(0)
--             end
--             Config.allowShuffling = false
--         else
--             Config.allowShuffling = false
--             CancelEvent('SIM:Shuffle')
--         end
--     end)

--     local elapsed = 0
--     Citizen.CreateThread(function()
--         while true do
--             Citizen.Wait(0)
--             elapsed = 0
--             while IsControlPressed(0, Config.shuffKeybind) and
--                 GetIsTaskActive(playerped, 165) do
--                 Citizen.Wait(100)
--                 elapsed = elapsed + 0.1
--             end
--         end
--     end)

--     Citizen.CreateThread(function()
--         while true do
--             if IsControlJustPressed(1, Config.shuffKeybind) then
--                 TriggerEvent("SIM:Shuffle")
--             end
--             if IsControlJustReleased(1, Config.shuffKeybind) and
--                 Config.allowShuffling == true then
--                 threshhold = 0.8
--                 if GetIsTaskActive(playerped, 165) and elapsed < threshhold then
--                     Config.allowShuffling = false
--                 end
--             end
--             Citizen.Wait(0)
--         end
--     end)

--     RegisterCommand(Config.shuffleCommand, function(source, args, raw)
--         TriggerEvent("SIM:Shuffle")
--     end, false)
-- end
