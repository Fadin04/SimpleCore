-- DVA Command
if Config.dvaCommand then
    RegisterCommand(Config.commandname, function(source, args, rawCommand) 
        TriggerClientEvent("SIM:dva", -1) 
    end, Config.restrictcommand)
end
-- Roleplay Commands

if Config.rpcommands then
    if Config.doo then
        RegisterCommand(Config.doName, function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
            else
                local message = table.concat(args, " ")
                TriggerClientEvent('chatMessage', -1,
                                   "DO | " .. GetPlayerName(source) .. "",
                                   {255, 205, 0}, message)
                PerformHttpRequest(rpcommandsHook,
                                   function(err, text, headers) end, 'POST',
                                   json.encode({
                    username = steam,
                    content = "**DO:** " .. message .. "",
                    avatar_url = DISCORD_IMAGE
                }), {['Content-Type'] = 'application/json'})
            end
        end)
    end
end

if Config.rpcommands then
    if Config.me then
        RegisterCommand(Config.meName, function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
            else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1,
                                   "ME | " .. GetPlayerName(source) .. "",
                                   {255, 0, 0}, message)
                PerformHttpRequest(Config.rpcommandsHook,
                                   function(err, text, headers) end, 'POST',
                                   json.encode({
                    username = steam,
                    content = "**ME** " .. message .. "",
                    avatar_url = DISSCORD_IMAGE
                }), {['Content-Type'] = 'application.json'})
            end
        end)
    end
end

if Config.rpcommands then
    if Config.gme then
        RegisterCommand(Config.gmeName, function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
            else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1,
                                   "GME | " .. GetPlayerName(source) .. "",
                                   {0, 255, 9}, message)
                PerformHttpRequest(Config.rpcommandsHook,
                                   function(err, text, headers) end, 'POST',
                                   json.encode({
                    username = steam,
                    content = "**GME:** " .. message .. "",
                    avatar_url = DISCORD_IMAGE
                }), {['Content-Type'] = 'application/json'})
            end
        end)
    end
end

if Config.rpcommands then
    if Config.ooc then
        RegisterCommand(Config.oocName, function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
            else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1,
                                   "OOC | " .. GetPlayerName(source) .. "",
                                   {128, 128, 128}, message)
                PerformHttpRequest(Config.rpcommandsHook,
                                   function(err, text, headers) end, 'POST',
                                   json.encode({
                    username = steam,
                    content = "**OOC:** " .. message .. "",
                    avatar_url = DISCORD_IMAGE
                }), {['Content-Type'] = 'application/json'})
            end
        end)
    end
end

if Config.rpcommands then
    if Config.twt then
        RegisterCommand(Config.twtName, function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
            else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1,
                                   "TWITTER | " .. GetPlayerName(source) .. "",
                                   {30, 144, 255}, message)
                PerformHttpRequest(Config.rpcommandsHook,
                                   function(err, text, headers) end, 'POST',
                                   json.encode({
                    username = steam,
                    content = "**TWITTER:** " .. message .. "",
                    avatar_url = DISCORD_IMAGE
                }), {['Content-Type'] = 'application/json'})
            end
        end)
    end
end

if Config.rpcommands then
    if Config.darkweb then
        RegisterCommand(Config.darkwebName, function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
            else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1, "Dark Web", {33, 33, 38},
                                   message)
                PerformHttpRequest(Config.rpcommandsHook,
                                   function(err, text, headers) end, 'POST',
                                   json.encode({
                    username = steam,
                    content = "**DARKWEB:** " .. message .. "",
                    avatar_url = DISCORD_IMAGE
                }), {['Content-Type'] = 'application/json'})
            end
        end)
    end
end

if Config.rpcommands then
    if Config.instagram then
        RegisterCommand(Config.instaName, function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
            else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1, "INSTAGRAM | " ..
                                       GetPlayerName(source) .. "",
                                   {194, 255, 51}, message)
                PerformHttpRequest(Config.rpcommandsHook,
                                   function(err, text, headers) end, 'POST',
                                   json.encode({
                    username = steam,
                    content = "**INSTAGRAM:** " .. message .. "",
                    avatar_url = DISCORD_IMAGE
                }), {['Content-Type'] = 'application/json'})
            end
        end)
    end
end

if Config.rpcommands then
    if Config.dispatch then
        RegisterCommand(Config.dispatchName, function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
            else
                local message = table.concat(args, " ")
                TriggerClientEvent('chatMessage', -1, "Dispatch | " ..
                                       GetPlayerName(source) .. "",
                                   {30, 144, 255}, message)
                PerformHttpRequest(Config.rpcommandsHook,
                                   function(err, text, headers) end, 'POST',
                                   json.encode({
                    username = steam,
                    content = "**DISPATCH:** " .. message .. "",
                    avatar_url = DISCORD_IMAGE
                }), {['Content-Type'] = 'application/json'})
            end
        end)
    end
end

if Config.rpcommands then
    if Config.radio then
        RegisterCommand(Config.radioName, function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
            else
                local message = table.concat(args, " ")
                TriggerClientEvent('chatMessage', -1,
                                   "Radio | " .. GetPlayerName(source) .. "",
                                   {255, 205, 0}, message)
                PerformHttpRequest(Config.rpcommandsHook,
                                   function(err, text, headers) end, 'POST',
                                   json.encode({
                    username = steam,
                    content = "**RADIO:** " .. message .. "",
                    avatar_url = DISCORD_IMAGE
                }), {['Content-Type'] = 'application/json'})
            end
        end)
    end
end

if Config.rpcommands then
    if Config.staff then
        RegisterCommand(Config.staffCommand, function(source, args, raw)
            if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.incomplete)
            else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1,
                                   "STAFF | " .. GetPlayerName(source) .. "",
                                   {255, 215, 0}, message)
                PerformHttpRequest(Config.rpcommandsHook,
                                   function(err, text, headers) end, 'POST',
                                   json.encode({
                    username = steam,
                    content = "**STAFF:** " .. message .. "",
                    avatar_url = DISCORD_IMAGE
                }), {['Content-Type'] = 'application/json'})
            end
        end, Config.usePerms)
    end
end

-- 911 Command

if Config.nine11 then
    RegisterServerEvent('SIM:911call')
    AddEventHandler('SIM:911call', function(location, msg, x, y, z, name, p)

        local pName = GetPlayerName(source)
        local p = GetPlayerPed(source)

        if Config.DisableCallsInChat == false then
            TriggerClientEvent('chatMessage', -1,
                               '^5----------------------------------------------',
                               {0, 255, 238})
            TriggerClientEvent('chatMessage', -1, '^*^5📞 New 911 Report:',
                               {0, 255, 238})
            TriggerClientEvent('chatMessage', -1, '^*^5🧍‍♂️ [Caller Name]^r^7',
                               {0, 255, 238}, pName .. " (" .. source .. ")")
            TriggerClientEvent('chatMessage', -1, '^*^5🗺️ [Location]^r^7',
                               {0, 255, 238}, location)
            TriggerClientEvent('chatMessage', -1, '^*^5⚠️ [Report]^r^7',
                               {0, 255, 238}, msg)
            TriggerClientEvent('chatMessage', -1,
                               '^5----------------------------------------------',
                               {0, 255, 238})
        end
        sendDiscord('911 Call Logger \n',
                    '**Caller Name: **' .. pName .. ' (' .. source ..
                        ') \n**  Location: **' .. location .. '\n**  Report: **' ..
                        msg)

        if Config.callBlips == true then
            TriggerClientEvent('SIM:911call', -1, name, x, y, z)
        end
    end)

    function sendDiscord(name, message)
        local content = {
            {
                ["color"] = "5263615",
                ["title"] = "**New 911 Call Reported**",
                ["description"] = message,
                ["footer"] = {
                    ["text"] = "Powered by SimpleCore",
                },
            }
        }
        PerformHttpRequest(Config.nine11webhook, function(err, text, headers) end, 'POST',
                           json.encode({username = name, embeds = content}),
                           {['Content-Type'] = 'application/json'})
    end
end

-- Misc Settings

local branding = [[
    //
    ||
    ||    _____  __  _____      _____   __   _____ 
    ||   / ____||__||     \    /     | |  | / ____| 
    ||  | (___   __ |  |\  \  /  /|  | |__| | |     ___  _ __ ___ 
    ||   \___ \ |  ||  | \  \/  / |  |  __  | |    / _ \| '__/ _ \
    ||   ____) ||  ||  |  \    /  |  | |  | | |___| (_) | | |  __/
    ||  \_____/ |__||__|   \__/   |__| |__|  \_____\___/|_|  \___|
    ||                          SimpleCore
    ||                     Created by Fadin_laws
    ||
    \\
]]

versionChecker = true -- Enable / Disable automatic update checker!

resourcename = "SimpleCore"
version = "1.0.4"
rawVersionLink =
    "https://raw.githubusercontent.com/Fadin04/SimpleCore/main/version.txt"

-- Version Checker

if versionChecker then
    print(branding)
    PerformHttpRequest(rawVersionLink, function(errorCode, result, headers)
        if (string.find(tostring(result), version) == nil) then
            print("\n\r[" .. GetCurrentResourceName() ..
                      "] ^1WARNING: Your version of " .. resourcename ..
                      " is not up to date. Please make sure to update whenever possible.\n\r")
        else
            print("\n\r[" .. GetCurrentResourceName() ..
                      "] ^2You are running the latest version of " ..
                      resourcename .. ".\n\r")
        end
    end, "GET", "", "")
end
