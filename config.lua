-------------------------------------------
--        Developed by Fadin_laws        --
-- https://github.com/Fadin04/SimpleCore --
--            Version 1.0.4              --
-------------------------------------------
Config = {}

-- Main Command Functionalities
Config.pvp = true -- Enable / Disable PVP
Config.dvaCommand = true -- This will enable / disable the ability to use the /dva command!
Config.ragdoll = true -- This is will enable / disable the ability to ragdoll
Config.serverWatermark = true -- Enable / Disable server's watermark
Config.rpcommands = true -- Enable / Disable the usage of the roleplay commands!
Config.autoMessage = true -- Enable / Disable the automessaging function
Config.nine11 = true -- Enable / Disable the 911 script!
Config.taseEffects = true -- Enable / Disable the effects from being tased.
-- Config.combatRolling = true -- Enable / Disable the restrictions on combat rolling.
-- Config.shuffle = true -- Enable / Disable the Shuffle script


-- DVA Config
Config.delay = 30 -- Amount of time before the vehicles are all deleted.
Config.delaymessage =
    "^1[Server]: ^1 All unoccupied vehicles are going to be deleted in " ..
        Config.delay .. " seconds!"
Config.deletemessage =
    "^1[Server]: ^1 All unoccupided vehicles have been deleted by a member of the staff team!"
Config.commandname = "dva" -- This command is what you will type into chat (/dva) to use start it!
Config.restrictcommand = true
-- Setting this to FALSE will allow anyone in your server to use the command!
-- If this is set to TRUE, you can add peple to use it using: add_ace group.<name> command.<name> allow
-- Ace Permission example: add_ace group.staff command.dva allow

-- Ragdolling Config
Config.keybind = 73 -- (X) FiveM Keys: https://docs.fivem.net/docs/game-references/controls/      

-- Watermark Config

Config.servername = "~r~Server Name ~w~Roleplay" -- Change this to your server's name
Config.x = 0.005 -- X Position of the watermark
Config.y = 0.001 -- Y Position of the watermark
Config.transparency = 255 -- Text Transparency
Config.size = 0.5 -- Size of the watermark (Number must be a decimal! Don't do "1" do "1.0" instead!)
Config.font = 4 -- Font of the watermark ~ 0-5

-- Roleplay Commands
Config.doo = true -- Enable / Disable the /do command
Config.me = true -- Enable / Disable the /me command
Config.gme = true -- Enable / Disable the /gme command
Config.twt = true -- Enable / Disable the /twt command
Config.darkweb = true -- Enable / Disable the /darkweb command
Config.instagram = true -- Enable / Disable the /instagram command
Config.dispatch = true -- Enable / Disable the /dispatch command
Config.radio = true -- Enable / Disable the /radio command
Config.ooc = true -- Enable / Disable the /ooc command
Config.staff = true -- Enable / Disable the /staff command
Config.staffCommand = "staff"
Config.usePerms = true
-- Setting this to FALSE will allow anyone in your server to use the command!
-- If this is set to TRUE, you can add peple to use it using: add_ace group.<name> command.<name> allow
-- Ace Permission example: add_ace group.staff command.staff allow

Config.incomplete = '^1Please complete the command with an argument!' -- Message that is sent if a user doesn't fully complete a command!
-- Command Names --
Config.doName = "do"
Config.oocName = "ooc"
Config.meName = "me"
Config.gmeName = "gme"
Config.twtName = "twitter"
Config.darkwebName = "darkweb"
Config.instaName = "instagram"
Config.dispatchName = "dispatch"
Config.radioName = "radio"
Config.rpcommandsHook = 'CHANGEME' -- Channel that rp commands will be sent to when they are executed.

-- Automessage(s)
Config.autoDelay = 10 -- Delay between when messages are automatically sent
Config.autoPrefix = '^1[Server]: ^0' -- Automessage prefix (Example: [Server]: Welcome to <servername>!)
Config.autoMessages =
    { -- Messages that will be sent automatically into the server's chat! (You can add as much as you want, as long as you end each line with a comma!)
        ' Welcome to ^1Server! ^0Enjoy your time here!',
        ' We RP Serious! ^1Be nice!'
    }

-- 911 Script
Config.blipTime = 180 -- Amount of time that the blip will show on the map
Config.blipRadius = 175.0 -- Size of the blip itself.
Config.callBlips = true -- Enable / Disable the map blips
Config.DisableCallsInChat = false -- Enable / Disable 911 calls showing in chat!
Config.911webhook = 'CHANGEME' -- Channel that 911 calls will be sent to

-- SeatShuffling
-- Config.shuffKeybind = 61 -- (Left Shift) FiveM Keys: https://docs.fivem.net/docs/game-references/controls/      
-- Config.allowShuffling = false -- Enable / Disable the ability to shuffle
-- Config.shuffleCommand = "shuff" -- Command for /shuffle