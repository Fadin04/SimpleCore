-- Do not touch anything in this file!

local branding = 
[[ 
  ||     ______     __     __    __     ______   __         ______ 
  ||    /\  ___\   /\ \   /\ "-./  \   /\  == \ /\ \       /\  ___\ 
  ||    \ \___  \  \ \ \  \ \ \-./\ \  \ \  _-/ \ \ \____  \ \  __\ 
  ||     \/\_____\  \ \_\  \ \_\ \ \_\  \ \_\    \ \_____\  \ \_____\
  ||      \/_____/   \/_/   \/_/  \/_/   \/_/     \/_____/   \/_____/ 
  ||                ______     ______     ______     ______    
  ||               /\  ___\   /\  __ \   /\  == \   /\  ___\   
  ||               \ \ \____  \ \ \/\ \  \ \  __<   \ \  __\   
  ||                \ \_____\  \ \_____\  \ \_\ \_\  \ \_____\ 
  ||                 \/_____/   \/_____/   \/_/ /_/   \/_____/ 
  ||                           Made by Fadin_laws
  ]]                                                    


versionChecker = true -- Set to false to disable version checker

resourcename = "SimpleCore"
version = "1.0.9"
rawVersionLink = ""

-- Check for any updates regarding this resource.
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