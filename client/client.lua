-- DVA Command
if Config.dvaCommand then
    local delay2 = Config.delay * 1000
    RegisterNetEvent("SMC:dva")
    AddEventHandler("SMC:dva", function()
        TriggerEvent('chatMessage', Config.delaymessage)
        Wait(delay2)
        TriggerEvent('chatMessage', Config.deletemessage)
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
            if IsControlPressed(1, Config.keybind) then
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
                    TriggerEvent('chatMessage', '', {255,255,255}, Config.autoPrefix .. Config.autoMessages[i])
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
        TriggerEvent('chat:addSuggestion', '/twitter','Post something new on twitter!', { name = "Tweet", help = "Post content on twitter!"})
        TriggerEvent('chat:addSuggestion', '/do', 'Describe and action that you are doing!', { name = "Action", help = "State actions you are currently doing!"})
        TriggerEvent('chat:addSuggestion', '/me', 'Show an action that you are doing!', { name = "Action", help = "State actions you are currently doing!"})
        TriggerEvent('chat:addSuggestion', '/gme', 'Show an action you are doing globally!', { name = "Action", help = "State actions you are currently doing!"})
        TriggerEvent('chat:addSuggestion', '/darkweb', 'Post all your criminal doings on the darkweb!', { name = "Darkness", help = "Discuss anything criminal / dark on the darkweb!"})
        TriggerEvent('chat:addSuggestion', '/instagram', 'Post something new on instagram!', { name = "Share", help = "Share content you are doing with everyone!"})
        TriggerEvent('chat:addSuggestion', '/dispatch', 'Call something into dispatch via the chat!', { name = "Dispatch", help = "Dispatch units to a ongoing situation!"})
        TriggerEvent('chat:addSuggestion', '/radio', 'Call something into your leo buddies via the chat!', { name = "Radio", help = "Communicate with other law enforcement officers!"})
        TriggerEvent('chat:addSuggestion', '/ooc', 'Say something out of character!', { name = "Speak Freely", help = "Talk in the server's chat without the  need of being in character!"})
    end)
end

-- 911 Script

if chatSuggestion then
    TriggerEvent("chat:addSuggestion", "/911", "Call 911 for your emergency!", {
        { name = "Emergency", help = "Describe your emergency here!"}
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
            TriggerEvent('chatMessage', '^5San Andreas 911', {255, 255, 255}, 'What is the nature and location of your emergency?')
        end
        if args[1] ~= nil then
            TriggerServerEvent('SMC:911call', location, msg, x, y, z, name)
        end
    end)
    
    RegisterNetEvent('setBlip')
    AddEventHandler('setBlip', function(name, x, y, z)
    
    blip = nil
    blips = {}
    
    local blip = AddBlipForRadius(x, y, z, Config.blipRadius)
    
        SetBlipHighDetail(blip, true)
        SetBlipColour(blip, 3)
        SetBlipAlpha (blip, 128)
    
    local blip1 = AddBlipForCoord(x, y, z)
    
        SetBlipSprite (blip1, sprite)
        SetBlipDisplay(blip1, true)
        SetBlipScale  (blip1, 0.9)
        SetBlipColour (blip1, 3)
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