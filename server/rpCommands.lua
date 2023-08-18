if (Config.roleplayCommands === true) then
    if (Config.rpCommandCustom === true) then
        if (Config.RoleplayCommands.twitterCommand === true) then
            RegisterCommand(Config.RoleplayCommands.twitterName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "TWITTER | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**TWITTER:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end
        
        if (Config.RoleplayCommands.dispatchCommand === true) then
            RegisterCommand(Config.RoleplayCommands.dispatchName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "DISPATCH | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DISPATCH:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end

        if (Config.RoleplayCommands.darkWebCommand === true) then
            RegisterCommand(Config.RoleplayCommands.darkwebName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "DARKWEB | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DARKWEB:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end

        if (Config.RoleplayCommands.newsCommand === true) then
            RegisterCommand(Config.RoleplayCommands.newsName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "NEWS | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**NEWS:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end

        if (Config.RoleplayCommands.doCommand === true) then
            RegisterCommand(Config.RoleplayCommands.doName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "DO | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DO:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end

        if (Config.RoleplayCommands.oocCommand === true) then
            RegisterCommand(Config.RoleplayCommands.oocName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "OOC | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**OOC:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end

        if (Config.RoleplayCommands.meCommand === true) then
            RegisterCommand(Config.RoleplayCommands.meName, function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "ME | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**ME:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end

        if (Config.RoleplayCommands.showidCommand === true) then
            RegisterCommand(Config.RoleplayCommands.showidName, function(source, colore, msg)
            cm = stringssplit(msg, " ")
                CancelEvent()
                if tablelength(cm) == 3 then
                    local firstname = tostring(cm[2])
                    local lastname = tostring(cm[3])
                    local steam = GetPlayerName(source)
                    TriggerClientEvent("SimCore:sendMessageShowID", -1, source, firstname, lastname)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**ShowID** | **First Name:** " .. firstname .. " **Last Name:** ".. lastname .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                else
                    TriggerClientEvent('chat:addMessage', source, "Use the following format:", {255, 0, 0}, "/" .. Config.RoleplayCommands.showidName .. " [First Name] [Last Name]")
                end
            end)
        end

    else

        if (Config.RoleplayCommands.twitterCommand === true) then
            RegisterCommand("twitter", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "TWITTER | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**TWITTER:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end
        
        if (Config.RoleplayCommands.dispatchCommand === true) then
            RegisterCommand("dispatch", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "DISPATCH | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DISPATCH:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end

        if (Config.RoleplayCommands.darkWebCommand === true) then
            RegisterCommand("darkweb", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "DARKWEB | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DARKWEB:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end

        if (Config.RoleplayCommands.newsCommand === true) then
            RegisterCommand("news", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "NEWS | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**NEWS:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end

        if (Config.RoleplayCommands.doCommand === true) then
            RegisterCommand("do", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "DO | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DO:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end

        if (Config.RoleplayCommands.oocCommand === true) then
            RegisterCommand("ooc", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "OOC | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**OOC:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end

        if (Config.RoleplayCommands.meCommand === true) then
            RegisterCommand("me", function(source, args, raw)
                if #args <= 0 then
                    TriggerClientEvent('chat:addMessage', source, Config.RoleplayCommands.missingArgs)
                else
                    local message = table.concat(args, " ")
                    local steam = GetPlayerName(source)
                    args = table.concat(args, " ")
                    TriggerClientEvent('chat:addMessage', -1, "ME | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**ME:** ".. message .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                end
            end)
        end

        if (Config.RoleplayCommands.showidCommand === true) then
            RegisterCommand("showid", function(source, colore, msg)
            cm = stringssplit(msg, " ")
                CancelEvent()
                if tablelength(cm) == 3 then
                    local firstname = tostring(cm[2])
                    local lastname = tostring(cm[3])
                    local steam = GetPlayerName(source)
                    TriggerClientEvent("SimCore:sendMessageShowID", -1, source, firstname, lastname)
                    PerformHttpRequest(Config.RoleplayCommands.roleplayCommandsLogging, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**ShowID** | **First Name:** " .. firstname .. " **Last Name:** ".. lastname .. "", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json'})
                else
                    TriggerClientEvent('chat:addMessage', source, "Use the following format:", {255, 0, 0}, "/showid [First Name] [Last Name]")
                end
            end)
        end
    end
end

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t = {} ; i = 1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end