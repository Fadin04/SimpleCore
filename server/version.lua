-- Do not touch anything below here --

local branding = 
[[ 
    //                                                  
    ||     _____ _                 __     ______              
    ||    / ___/(_)___ ___  ____  / /__  / ____/___  ________ 
    ||    \__ \/ / __ `__ \/ __ \/ / _ \/ /   / __ \/ ___/ _ \
    ||   ___/ / / / / / / / /_/ / /  __/ /___/ /_/ / /  /  __/
    ||  /____/_/_/ /_/ /_/ .___/_/\___/\____/\____/_/   \___/ 
    ||                  /_/                                   
    ||                     Made by Fadin_laws
    \\
  ]]

versionChecker = true -- Set to false to disable version checker


-- Don't touch
resourcename = "SimpleCore"
version = "1.0.9"
rawVersionLink = "https://raw.githubusercontent.com/Fadin04/SimpleCore/main/version.txt"

-- Check for version updates.
if versionChecker then
print(branding)
PerformHttpRequest(rawVersionLink, function(errorCode, result, headers)
    if (string.find(tostring(result), version) == nil) then
        print("\n\r[".. GetCurrentResourceName() .."] ^1WARNING: Your version of ".. resourcename .." is not up to date. Please make sure to update whenever possible.^0\n\r")
    else
        print("\n\r[".. GetCurrentResourceName() .."] ^2You are running the latest version of ".. resourcename ..".^0\n\r")
    end
end, "GET", "", "")
end