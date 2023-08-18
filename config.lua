--  ______     __     __    __     ______   __         ______     ______     ______     ______     ______    
--  /\  ___\   /\ \   /\ "-./  \   /\  == \ /\ \       /\  ___\   /\  ___\   /\  __ \   /\  == \   /\  ___\   
--  \ \___  \  \ \ \  \ \ \-./\ \  \ \  _-/ \ \ \____  \ \  __\   \ \ \____  \ \ \/\ \  \ \  __<   \ \  __\   
--   \/\_____\  \ \_\  \ \_\ \ \_\  \ \_\    \ \_____\  \ \_____\  \ \_____\  \ \_____\  \ \_\ \_\  \ \_____\ 
--    \/_____/   \/_/   \/_/  \/_/   \/_/     \/_____/   \/_____/   \/_____/   \/_____/   \/_/ /_/   \/_____/                                                                                                           
--
--                                           Created by Fadin_laws
--                                                 V. 1.0.9
--

Config = {} -- Do not touch this line.

--   ______     ______     ______     __     ______   ______   ______    
--  /\  ___\   /\  ___\   /\  == \   /\ \   /\  == \ /\__  _\ /\  ___\   
--  \ \___  \  \ \ \____  \ \  __<   \ \ \  \ \  _-/ \/_/\ \/ \ \___  \  
--   \/\_____\  \ \_____\  \ \_\ \_\  \ \_\  \ \_\      \ \_\  \/\_____\ 
--    \/_____/   \/_____/   \/_/ /_/   \/_/   \/_/       \/_/   \/_____/ 
                                                                     

Config.Scripts = {
    vehicleDelete = true, -- Enable / Disable the usage of /dv.
    deleteAllVehicles = true, -- Enable / Disable the usage of /dva (Admin Permission Based)
    deleteAllVehiclesCommand = "dva",
    removeParkedCars = true, -- Remove any / all parked vehicles from the side of the road.
    airControl = true, -- Remove the ability for players to control their vehicles whilst in the air.

    roleplayCommands = true, -- Enable / Disable the usage of rp commands.
    rpCommandCustom = false, -- Enable / Disable the /command custom usage (Requres RP Commands to be enable!)
    chatFilter = true, -- Enable / Disable the need to autokick someone for sending bad things (Filter can be configured below)
    autoMessages = true, -- Enable / Disable the usage of auto messages in-game with the chat! 

    dragPeople = true, -- Enable / Disable the /drag command.
    crouchDown = true, -- Enable / Disable the ability to crouch with CTRL
    customCrouchControl = false, -- Enable / Disable the ability to set your own crouch control (Server Sided (Requres Crouching to be enabled!))
    playerPointing = true, -- Enable / Disable the ability for players to point with the characters (Press B to do so.)
    playerHandsUp = true, -- Enable / Disable the ability to put your hands up by pressing X.
    playerClumsy = true, -- Enable / Disable the feature that you player could have a chance of falling if spam-jumping
    playerClumsyChance = 0.8, -- Chance of falling (e.g. 80% = 0.8    75% = 0.75    32% = 0.32)

    serverPVP = true, -- Enable / Disable the ability for players to cause damage to others.
    ragdollDamage = true, -- Enable / Disable the feature, where if you are shot your character COULD ragdoll.
    disableReticle = true, -- Enable / Disable the weapons reticle (Make shooting people harder.)
    tazerEffects = true, -- Enable / Disable the tazer effects if tazed by someone.

    serverWatermark = true, -- Enable / Disable the server watermark
    ignoreWantedLevel = true, -- Enable / Disable the police from ever being dispatched to you (true = cops ignore | false = cops chase you)
    serverAFKKick = false, -- Enable / Disable the feature to automatically kick someone if they are AFK for to long.
}

--   __     __     ______     ______   ______     ______     __    __     ______     ______     __  __    
--  /\ \  _ \ \   /\  __ \   /\__  _\ /\  ___\   /\  == \   /\ "-./  \   /\  __ \   /\  == \   /\ \/ /    
--  \ \ \/ ".\ \  \ \  __ \  \/_/\ \/ \ \  __\   \ \  __<   \ \ \-./\ \  \ \  __ \  \ \  __<   \ \  _"-.  
--   \ \__/".~\_\  \ \_\ \_\    \ \_\  \ \_____\  \ \_\ \_\  \ \_\ \ \_\  \ \_\ \_\  \ \_\ \_\  \ \_\ \_\ 
--    \/_/   \/_/   \/_/\/_/     \/_/   \/_____/   \/_/ /_/   \/_/  \/_/   \/_/\/_/   \/_/ /_/   \/_/\/_/ 
                                                                                              
Config.ServerWatermark = {
    serverName = "~p~Server ~w~Roleplay", -- Name of your server.
    offsetX = 0.005, -- X Location (How far left / right)
    offsetY = 0.001, -- Y Location (How far up / down)
    Transparency = 255, -- How visible the text is.
    Size = 0.5, -- How big the text is. 
    Font = 4, -- Font type. (0-5)
}

--   ______     ______      ______     ______     __    __     __    __     ______     __   __     _____     ______    
--  /\  == \   /\  == \    /\  ___\   /\  __ \   /\ "-./  \   /\ "-./  \   /\  __ \   /\ "-.\ \   /\  __-.  /\  ___\   
--  \ \  __<   \ \  _-/    \ \ \____  \ \ \/\ \  \ \ \-./\ \  \ \ \-./\ \  \ \  __ \  \ \ \-.  \  \ \ \/\ \ \ \___  \  
--   \ \_\ \_\  \ \_\       \ \_____\  \ \_____\  \ \_\ \ \_\  \ \_\ \ \_\  \ \_\ \_\  \ \_\\"\_\  \ \____-  \/\_____\ 
--    \/_/ /_/   \/_/        \/_____/   \/_____/   \/_/  \/_/   \/_/  \/_/   \/_/\/_/   \/_/ \/_/   \/____/   \/_____/ 
                                                                                                                   
Config.RoleplayCommands = {
    twitterCommand = true, -- Enable / Disable the /twitter command.
    dispatchCommand = true, -- Enable / Disable the /dispatch command.
    darkWebCommand = true, -- Enable / Disable the /darkweb command.
    newsCommand = true, -- Enable / Disable the /news command.
    doCommand = true, -- Enable / Disable the /do command.
    oocCommand = true, -- Enable / Disable the /ooc command.
    meCommand = true, -- Enable / Disable the /me command.
    showidCommand = true, -- Enable / Disable the /showid command.

    roleplayCommandsLogging = "CHANGE ME", -- Discord Channel that the / commands will be logged to.
    missingArgs = '^1Please make sure that you provide a message after the / command!', -- Message that is sent if you fail to input a message after the / command.

    twitterName = "twitter",
    dispatchName = "dispatch",
    darkwebName = "darkweb",
    newsName = "news",
    doName = "do",
    oocName = "ooc",
    meName = "me",
    showidName = "showid"
}

--   __   __   ______     __  __     __     ______     __         ______     ______     ______     __   __     ______   ______     ______     __        
--  /\ \ / /  /\  ___\   /\ \_\ \   /\ \   /\  ___\   /\ \       /\  ___\   /\  ___\   /\  __ \   /\ "-.\ \   /\__  _\ /\  == \   /\  __ \   /\ \       
--  \ \ \'/   \ \  __\   \ \  __ \  \ \ \  \ \ \____  \ \ \____  \ \  __\   \ \ \____  \ \ \/\ \  \ \ \-.  \  \/_/\ \/ \ \  __<   \ \ \/\ \  \ \ \____  
--   \ \__|    \ \_____\  \ \_\ \_\  \ \_\  \ \_____\  \ \_____\  \ \_____\  \ \_____\  \ \_____\  \ \_\\"\_\    \ \_\  \ \_\ \_\  \ \_____\  \ \_____\ 
--    \/_/      \/_____/   \/_/\/_/   \/_/   \/_____/   \/_____/   \/_____/   \/_____/   \/_____/   \/_/ \/_/     \/_/   \/_/ /_/   \/_____/   \/_____/ 
                                                                                                                                                    

Config.MassVehicleDelete = {
    commandDelay = 15, -- How long it would take to execute the command 100% (in seconds)
    delayMessage = "^1SimpleCore^0: ^7All unoccupied vehicles will be deleted in 15 seconds!",
    deleteMessage = "^1SimpleCore^0: ^7All unoccupied vehicles have been deleted by a server staff member to reduce lag / vehicles!",
    restrictCommand = true, -- Requre the usage of ace permissions! (False = everyone can use | true = ace permission locked)
    -- Ace permission group (How-To)
    -- add_ace [GROUP] command.[commandName] allow # Template
    -- add_ace group.admin command.dva allow # Example
}

--   ______     __  __     ______   ______     __    __     ______     ______     ______     ______     ______     ______    
--  /\  __ \   /\ \/\ \   /\__  _\ /\  __ \   /\ "-./  \   /\  ___\   /\  ___\   /\  ___\   /\  __ \   /\  ___\   /\  ___\   
--  \ \  __ \  \ \ \_\ \  \/_/\ \/ \ \ \/\ \  \ \ \-./\ \  \ \  __\   \ \___  \  \ \___  \  \ \  __ \  \ \ \__ \  \ \  __\   
--   \ \_\ \_\  \ \_____\    \ \_\  \ \_____\  \ \_\ \ \_\  \ \_____\  \/\_____\  \/\_____\  \ \_\ \_\  \ \_____\  \ \_____\ 
--    \/_/\/_/   \/_____/     \/_/   \/_____/   \/_/  \/_/   \/_____/   \/_____/   \/_____/   \/_/\/_/   \/_____/   \/_____/ 
                                                                                                                         
Config.AutoMessaging = {
    messageDelay = 10, -- Delay that each message has before sending the next (in seconds)
    messagePrefix = '^1SimpleCore^0: ', -- Prefix of the messages when being sent.
    serverMessages = {
        'Welcome to '.. Config.ServerWatermark.serverName .. '^0, we hope you enjoy your stay!'
    },
}

--   ______     __  __     ______   ______     __    __     ______     _____    
--  /\  __ \   /\ \/\ \   /\__  _\ /\  __ \   /\ "-./  \   /\  __ \   /\  __-.  
--  \ \  __ \  \ \ \_\ \  \/_/\ \/ \ \ \/\ \  \ \ \-./\ \  \ \ \/\ \  \ \ \/\ \ 
--   \ \_\ \_\  \ \_____\    \ \_\  \ \_____\  \ \_\ \ \_\  \ \_____\  \ \____- 
--    \/_/\/_/   \/_____/     \/_/   \/_____/   \/_/  \/_/   \/_____/   \/____/ 
                                                                            

Config.AutoModeration = {
    autoModerationEnabled = true, -- Enable / Disable AutoModeration all together.
    ChatFilter = {
        kickPlayer = true, -- Enable / Disable the feature to kick a player if they say a word not allowed. 
        kickMessage = "You were kicked from this server for saying something you are not allowed to say!",
        filterList = {
            "fuck",
            "nigger",
            "nigga",
            "faggot",
            "cunt"
        },
    },

    ServerAFKKick = {
        timeUntilKicked = 600, -- How long someone has before being kicked (in seconds)
        kickWarning = true, -- Enable / Disable the warning upon 3/4 of the timer has exceeded.
        kickMessage = "You were kicked from the server for being AFK for too long!",
    },
}


-- End of Config File.