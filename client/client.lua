-- DVA Command

if Config.dvaCommand then 
    RegisterNetEvent("SCore:massdva")
    AddEventHandler("SCore:massdva", function()
        TriggerEvent('chatMessage', Config.delaymessage)
        Wait(delay2)
        TriggerEvent('chatMessage', Config.deletemessage)
        local totalvehc = 0
        local notdelvehc = 0

        for vehicle in EnumerateVehicles() do
            if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then SetVehicleHasBeenOwnedByPlayer(vehicle, false) SetEntityAsMissionEntity(vehicle, false, false) DeleteVehicle(vehicle)
                if (DoesEntityExist(vehicle)) then DeleteVehicle(vehicle) end
                if (DoesEntityExist(vehicle)) then notdelvehc = notdelvehc + 1 end
            end
            totalvehc = totalvehc + 1 
        end
    end)
end

-- Simple Ragdolling 

if Config.ragdoll then
    Citizen.CreateThreat(fucntion()
        while true do
            Citizen.Wait(0)
            if isControlPressed(1, Config.keybind) then 
                SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, true, true, false)
            end
        end
    end)
end

-- Watermark 

if Config.serverWatermark then
    Citizen.CreateThread(function()
        while true do
            Wait(1)
            SetTextColor(129, 45, 211, Config.transparency)
            SetTextFont(Config.font)
            SetTextScale(Config.size, Config.size)
            SetTextWrap(0.0, 1.0)
            SetTextCentre(false)
            SetTextDropshadow(2, 2, 0, 0, 0)
            SetTextEdge("STRING")
            AddTextComponentString(Config.serverWatermark)
            DrawText(Config.x, Config.y)
        end
    end)
end

-- Automessaging 

if Config.autoMessage then
    local timeout = Config.autoDelay * 1000 * 60
    Citizen.CreateThread(function()
        while true do
            function chat (i)
                TriggerEvent('chatMessage', '', {255,255,255}, Config.prefix, Config.autoMessages[i])
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
        SetCanAttackFriendly(PlayerPedID(), true, true)
    end)
end

-- Roleplay Commands

if Config.rpcommands then
    Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/twt', 'Post something new on twitter!')
    TriggerEvent('chat:addSuggestion', '/twitter', 'Post something new on twitter!')
    TriggerEvent('chat:addSuggestion', '/do', 'Describe and action that you are doing!')
    TriggerEvent('chat:addSuggestion', '/me', 'Show an action that you are doing!')
    TriggerEvent('chat:addSuggestion', '/gme', 'Show an action you are doing globally!')
    TriggerEvent('chat:addSuggestion', '/darkweb', 'Post all your criminal doings on the darkweb!')
    TriggerEvent('chat:addSuggestion', '/instagram', 'Post something new on instagram!')
    TriggerEvent('chat:addSuggestion', '/dispatch', 'Call something into dispatch via the chat!')
    TriggerEvent('chat:addSuggestion', '/radio', 'Call something into your leo buddies via the chat!')
    TriggerEvent('chat:addSuggestion', '/ooc', 'Say something out of character!')
    end)
end