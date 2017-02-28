REM Script by Blackbeard

REM will update Server
F:\SteamCMD\steamcmd.exe +login anonymous +force_install_dir F:\7DaystoDie +app_update "304930 validate" +quit

REM log entry
echo Server Updated................................%date% %time% >> G:\Logs\GameServers\7DaystoDie.log