-- DVA Command
RegisterCommand(Config.commandname, function(source, args, rawCommand) 
	TriggerClientEvent("SCore:massdva", -1) 
end, Config.restrictcommand)

-- Roleplay Commands

rpcommandsHook = 'DISCORD_WEBHOOK_HERE'
-- Change this to the channel webhook you are wanting to send logs to!

if Config.rpcommands then
    if Config.doo then
        RegisterCommand("do", function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
                else
                local message = table.concat(args, " ")
                TriggerClientEvent('chatMessage', -1, "do | ".. GetPlayerName(source) .."", { 255, 205, 0 }, message)
                PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DO:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
            end
        end)
    end
end

if Config.rpcommands then
    if Config.me then
        RegisterCommand("me", function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
            else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1, "Me | ".. GetPlayerName(source) .."", {255, 0, 0 }, message)
                PerformHttpRequest(rpcommandsHook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**ME** ".. message .."", avatar_url = DISSCORD_IMAGE}), { ['Content-Type'] = 'application.json' })
            end
        end)
    end
end

if Config.rpcommands then
    if Config.gme then
        RegisterCommand("gme", function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
                else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1, "GME | ".. GetPlayerName(source) .."", { 0, 255, 9 }, message)
                PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**GME:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
            end
        end)
    end
end

if Config.rpcommands then
    if Config.ooc then
        RegisterCommand("ooc", function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
                else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1, "OOC | ".. GetPlayerName(source) .."", { 128, 128, 128 }, message)
                PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**OOC:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
            end
        end)
    end
end

if Config.rpcommands then
    if Config.twt then
        RegisterCommand("twt", function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
                else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1, "TWITTER | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**TWITTER:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
            end
        end)
    end
end

if Config.rpcommands then
    if Config.twt then
        RegisterCommand("twitter", function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
                else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1, "TWITTER | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**TWITTER:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
            end
        end)
    end
end

if Config.rpcommands then
    if Config.darkweb then
        RegisterCommand("darkweb", function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
                else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1, "Dark Web", { 33, 33, 38 }, message)
                PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DARKWEB:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
            end
        end)
    end
end

if Config.rpcommands then
    if Config.instagram then
        RegisterCommand("instagram", function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
                else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1, "INSTAGRAM | ".. GetPlayerName(source) .."", { 194, 255, 51 }, message)
                PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**INSTAGRAM:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
            end
        end)
    end
end

if Config.rpcommands then
    if Config.dispatch then
        RegisterCommand("dispatch", function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
                else
                local message = table.concat(args, " ")
                TriggerClientEvent('chatMessage', -1, "Dispatch | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DISPATCH:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
            end
        end)
    end
end

if Config.rpcommands then
    if Config.radio then
        RegisterCommand("radio", function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
                else
                local message = table.concat(args, " ")
                TriggerClientEvent('chatMessage', -1, "Radio | ".. GetPlayerName(source) .."", { 255, 205, 0 }, message)
                PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**RADIO:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
            end
        end)
    end
end

-- Misc Settings

local branding =
[[
    //
    ||
    ||                                           _____ 
    ||           _             ____             / ____| 
    ||      ____|_|   _   _   |  _ \ ___    ___ | |     ___  _ __ ___ 
    ||     / __| _   /  \/ \  | |_) || |   / _ \| |    / _ \| '__/ _ \
    ||     \__ \| | /  /\/\ \ |  __/ | |__|  __/| |___| (_) | | |  __/
    ||     |___/|_|/__/    \_\|_|    |____|\___| \_____\___/|_|  \___|
    ||        
    ||                     Created by Fadin_laws
    \\
]]

versionChecker = true -- Enable / Disable automatic update checker!

resourcename = "SimpleCore"
version = "1.0.2"
rawVersionLink = "https://raw.githubusercontent.com/Fadin04/SimpleCore/main/version.txt"

-- Version Checker

if versionChecker then
    print(branding)
    PerformHttpRequest(rawVersionLink, function(errorCode, result, headers)
        if (string.find(tostring(result), version) == nil) then
            print("\n\r[".. GetCurrentResourceName() .."] ^1WARNING: Your version of ".. resourcename .." is not up to date. Please make sure to update whenever possible.\n\r")
        else
            print("\n\r[".. GetCurrentResourceName() .."] ^2You are running the latest version of ".. resourcename ..".\n\r")
        end
    end, "GET", "", "")
end                                    
