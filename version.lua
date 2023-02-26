local label = 
[[
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
    ||]]

-- Returns the current version set in fxmanifest.lua
function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end

-- Grabs the latest version number from the web GitHub
PerformHttpRequest( "https://raw.githubusercontent.com/Fadin04/SimpleCore/main/version.txt", function( err, text, headers )
	-- Wait to reduce spam
	Citizen.Wait( 2000 )

	-- Print the branding!
	print( label )

	-- Get the current resource version
	local curVer = GetCurrentVersion()

	print( "  ||    Current version: " .. curVer )

	if ( text ~= nil ) then
		-- Print latest version
		print( "  ||    Latest recommended version: " .. text .."\n  ||" )

		-- If the versions are different, print it out
		if ( text ~= curVer ) then
			print( "  ||    ^1Your SimpleCore version is outdated, visit the FiveM forum post to get the latest version.\n^0  \\\\\n" )
		else
			print( "  ||    ^2SimpleCore is up to date!\n^0  ||\n  \\\\\n" )
		end
	else
		-- In case the version can not be requested, print out an error message
		print( "  ||    ^1There was an error getting the latest version information.\n^0  ||\n  \\\\\n" )
	end

	-- Warn the console if the resource has been renamed, as this will cause issues with the resource's functionality.
	if ( GetCurrentResourceName() ~= "SimpleCore" ) then
		print( "^1ERROR: Resource name is not SimpleCore, expect there to be issues with the resource. To ensure there are no issues, please leave the resource name as SimpleCore^0\n\n" )
	end
end )