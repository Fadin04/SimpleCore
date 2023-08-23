if(Config.Scripts.roleplayCommands == true) then

    if(Config.RoleplayCommands.roleplayCommandsLogging == "CHANGE ME") then 
        print("[^1SimpleCore^0] ^3Make sure that you changed the webhook for the roleplay commands to log correctly! - @SimpleCore/Config.lua:135^0")
    else
        print("[^1SimpleCore^0] ^2RPCommands hooked to discord successfully!^0")
    end

    if(Config.RoleplayCommands.twitterCommand == true) then 
        if(Config.RoleplayCommands.rpCommandCustom == true) then
            RegisterCommand(Config.RoleplayCommands.twitterName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "^5TWITTER ~w~| ^5".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**TWITTER:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        else
            RegisterCommand("twitter", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "^5TWITTER ~w~| ^5".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**TWITTER:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        end
    end

    if(Config.RoleplayCommands.dispatchCommand == true) then 
        if(Config.RoleplayCommands.rpCommandCustom == true) then
            RegisterCommand(Config.RoleplayCommands.dispatchName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "~y~DISPATCH ~w~| ~y~".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DISPATCH:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        else
            RegisterCommand("dispatch", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "~y~DISPATCH ~w~| ~y~".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DISPATCH:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        end
    end

    if(Config.RoleplayCommands.darkWebCommand == true) then 
        if(Config.RoleplayCommands.rpCommandCustom == true) then
            RegisterCommand(Config.RoleplayCommands.darkwebName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "~r~DARKWEB ~w~| ~r~Anonymous User~w~", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DARKWEB:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        else
            RegisterCommand("darkweb", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "~r~DARKWEB ~w~| ~r~Anonymous User~w~", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DARKWEB:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        end
    end

    if(Config.RoleplayCommands.newsCommand == true) then 
        if(Config.RoleplayCommands.rpCommandCustom == true) then
            RegisterCommand(Config.RoleplayCommands.newsName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "^6NEWS ~w~| ^6"..GetPlayerName(source) .. "~w~", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**NEWS:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        else
            RegisterCommand("news", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "^6NEWS ~w~| ^6".. GetPlayerName(source) .. "~w~", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**NEWS:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        end
    end

    if(Config.RoleplayCommands.doCommand == true) then 
        if(Config.RoleplayCommands.rpCommandCustom == true) then
            RegisterCommand(Config.RoleplayCommands.doName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "^9DO ~w~| ^9"..GetPlayerName(source) .. "~w~", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DO:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        else
            RegisterCommand("do", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "^9DO ~w~| ^9".. GetPlayerName(source) .. "~w~", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DO:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        end
    end

    if(Config.RoleplayCommands.oocCommand == true) then
        if(Config.RoleplayCommands.rpCommandCustom == true) then
            RegisterCommand("ooc", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "~b~OOC ~w~| ~b~".. GetPlayerName(source) .."~w~", { 128, 128, 128 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**OOC:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        else
            RegisterCommand(Config.RoleplayCommands.oocName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "~b~OOC ~w~| ~b~".. GetPlayerName(source) .."~w~", { 128, 128, 128 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**OOC:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        end
    end

    if(Config.RoleplayCommands.meCommand == true) then 
        if(Config.RoleplayCommands.rpCommandCustom == true) then
            RegisterCommand(Config.RoleplayCommands.meName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "^2ME ~w~| ^2"..GetPlayerName(source) .. "~w~", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**ME:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        else
            RegisterCommand("me", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "^2ME ~w~| ^2".. GetPlayerName(source) .. "~w~", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**ME:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        end
    end

    if(Config.RoleplayCommands.aMeCommand == true) then 
        if(Config.RoleplayCommands.rpCommandCustom == true) then
            RegisterCommand(Config.RoleplayCommands.aMeName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "^8ME ~w~| ^8Anonymous User~w~", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**AME:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        else
            RegisterCommand("ame", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "^8ME ~w~| ^8Anonymous User~w~", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**AME:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        end
    end

    if(Config.RoleplayCommands.globalMeCommand == true) then
        if(Config.RoleplayCommands.rpCommandCustom == true) then
            RegisterCommand("gme", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "^3GLOBAL ME ~w~| ^3".. GetPlayerName(source) .."~w~", { 128, 128, 128 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**OOC:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        else
            RegisterCommand(Config.RoleplayCommands.globalMeName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "^3GLOBAL ME ~w~| ^3".. GetPlayerName(source) .."~w~", { 128, 128, 128 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**OOC:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            end)
        end
    end
    
    if(Config.RoleplayCommands.staffCommand == true) then
        RegisterCommand("staff", function(source, args)
            if IsPlayerAceAllowed(source, "chat.staff") then
                if #args <= 0 then
                    TriggerClientEvent('chatMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, ' ')
                    TriggerClientEvent('chatMessage', -1, "~r~STAFF ~w~| ~r~".. GetPlayerName(source) .."~w~", { 128, 128, 128 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**STAFF:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                end
            else
                TriggerClientEvent('chat:addMessage', -1, "[~r~SimpleCore~w~] ~y~You lack the permissions to use the /staff command!")
                print("A user with the ID tried to run the /staff script without having the proper permissions! ID: " .. source .. " Name: " .. GetPlayerName(source))
            end
        end, false)
    end
end