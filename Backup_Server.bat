REM script by Blackbeard

REM creates backup of all server worlds
xCOPY "F:\7DaystoDie\Data\Worlds\*" "G:\GameServers\7DaystoDie" /V /Y /E

REM log entry
echo Server Backup Finished................................%date% %time% >> G:\Logs\GameServers\7DaystoDie.log


