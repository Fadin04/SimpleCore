--   ______     __  __     ______     ______      ______   __     __         ______   ______     ______    
--  /\  ___\   /\ \_\ \   /\  __ \   /\__  _\    /\  ___\ /\ \   /\ \       /\__  _\ /\  ___\   /\  == \   
--  \ \ \____  \ \  __ \  \ \  __ \  \/_/\ \/    \ \  __\ \ \ \  \ \ \____  \/_/\ \/ \ \  __\   \ \  __<   
--   \ \_____\  \ \_\ \_\  \ \_\ \_\    \ \_\     \ \_\    \ \_\  \ \_____\    \ \_\  \ \_____\  \ \_\ \_\ 
--    \/_____/   \/_/\/_/   \/_/\/_/     \/_/      \/_/     \/_/   \/_____/     \/_/   \/_____/   \/_/ /_/ 
                                                                                                       

if(Config.AutoModeration.autoModerationEnabled == true) then
    if (Config.Scripts.chatFilter == true) then
        AddEventHandler('chat:addMessage', function(source, n, message)
            for k,n in pairs(Config.filterList) do
                if string.match(message:lower(),n:lower()) then
                    CancelEvent()
                if (Config.AutoModeration.ChatFilter.kickPlayer == true) then
                    DropPlayer(source, Config.AutoModeration.chatFilter.kickMessage)
                    end 
                end
            end
        end)
    end
end

--   ______   __         ______     __  __     ______     ______        _____     ______     ______     ______    
--  /\  == \ /\ \       /\  __ \   /\ \_\ \   /\  ___\   /\  == \      /\  __-.  /\  == \   /\  __ \   /\  ___\   
--  \ \  _-/ \ \ \____  \ \  __ \  \ \____ \  \ \  __\   \ \  __<      \ \ \/\ \ \ \  __<   \ \  __ \  \ \ \__ \  
--   \ \_\    \ \_____\  \ \_\ \_\  \/\_____\  \ \_____\  \ \_\ \_\     \ \____-  \ \_\ \_\  \ \_\ \_\  \ \_____\ 
--    \/_/     \/_____/   \/_/\/_/   \/_____/   \/_____/   \/_/ /_/      \/____/   \/_/ /_/   \/_/\/_/   \/_____/ 
                                                                                                              

if (Config.Scripts.dragPeople == true) then 
    RegisterServerEvent("SimCore:DragPlayer")
    AddEventHandler("SimCore:DragPlayer", function(Target)
        local Source = source
        TriggerClientEvent("SimCore:DragPlayer", Target, Source)
    end)
end

--   ______     ______     ______     __   __   ______     ______        ______     ______   __  __    
--  /\  ___\   /\  ___\   /\  == \   /\ \ / /  /\  ___\   /\  == \      /\  __ \   /\  ___\ /\ \/ /    
--  \ \___  \  \ \  __\   \ \  __<   \ \ \'/   \ \  __\   \ \  __<      \ \  __ \  \ \  __\ \ \  _"-.  
--   \/\_____\  \ \_____\  \ \_\ \_\  \ \__|    \ \_____\  \ \_\ \_\     \ \_\ \_\  \ \_\    \ \_\ \_\ 
--    \/_____/   \/_____/   \/_/ /_/   \/_/      \/_____/   \/_/ /_/      \/_/\/_/   \/_/     \/_/\/_/ 
                                                                                                    
if(Config.AutoModeration.autoModerationEnabled == true) then
    if (Config.Scripts.ServerAFKKick == true) then
        RegisterServerEvent("SimCore:AFKKICK")
        AddEventHandler("SimCore:AFKKICK", function()
            DropPlayer(source, Config.AutoModeration.ServerAFKKick.kickMessage)
        end)
    end
end

--   __    __     ______     ______     ______        _____     __   __   ______    
--  /\ "-./  \   /\  __ \   /\  ___\   /\  ___\      /\  __-.  /\ \ / /  /\  __ \   
--  \ \ \-./\ \  \ \  __ \  \ \___  \  \ \___  \     \ \ \/\ \ \ \ \'/   \ \  __ \  
--   \ \_\ \ \_\  \ \_\ \_\  \/\_____\  \/\_____\     \ \____-  \ \__|    \ \_\ \_\ 
--    \/_/  \/_/   \/_/\/_/   \/_____/   \/_____/      \/____/   \/_/      \/_/\/_/ 
                                                                                

if (Config.Scripts.deleteAllVehicles == true) then
    RegisterCommand(Config.Scripts.deleteAllVehiclesCommand, function(source, args, rawCommand)
        TriggerClientEvent("SimCore:delallvehicles", -1)
    end, Config.MassVehicleDelete.restrictCommand)
end