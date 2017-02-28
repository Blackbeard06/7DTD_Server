REM This script will install a 7DaystoDie Server
REM Script made by Blackbeard
color 0a 
CLS
@ECHO OFF

REM Creating Log, Server, and Backup directories. Configure the directories at will

Rem Logs
MKDIR G:\Logs\GameServers

Rem Backups
MKDIR G:\GameServers\7DaystoDie

Rem Server Root
MKDIR F:\7DaystoDie

Rem Create log entry LBR = Logs Backup and Root
echo LBR Directories Created................................%date% %time% >> G:\Logs\GameServers\7DaystoDie.log
ping 127.0.0.1 -n 2 > nul

REM Open Ports in firewall
ECHO OFF
set PORT=26900 
set RULE_NAME="Open 7DaystoDie Server TCP %PORT%"

netsh advfirewall firewall show rule name=%RULE_NAME% >nul
if not ERRORLEVEL 1 (
    echo Rule Exists, change the name
) else (
    echo Rule %RULE_NAME% does not exist. Creating...
    netsh advfirewall firewall add rule name=%RULE_NAME% dir=in action=allow protocol=TCP localport=%PORT%
)
echo Port 26900 TCP Opened................................%date% %time% >> G:\Logs\GameServers\7DaystoDie.log

ECHO OFF
set PORT=26900
set RULE_NAME="Open 7DaystoDie Server UDP %PORT%"

netsh advfirewall firewall show rule name=%RULE_NAME% >nul
if not ERRORLEVEL 1 (
    echo Rule Exists, change the name
) else (
    echo Rule %RULE_NAME% does not exist. Creating...
    netsh advfirewall firewall add rule name=%RULE_NAME% dir=in action=allow protocol=UDP localport=%PORT%
)
echo Port 26900 UDP Opened................................%date% %time% >> G:\Logs\GameServers\7DaystoDie.log

ECHO OFF
set PORT=26901
set RULE_NAME="Open 7DaystoDie Server UDP %PORT%"

netsh advfirewall firewall show rule name=%RULE_NAME% >nul
if not ERRORLEVEL 1 (
    echo Rule Exists, change the name
) else (
    echo Rule %RULE_NAME% does not exist. Creating...
    netsh advfirewall firewall add rule name=%RULE_NAME% dir=in action=allow protocol=UDP localport=%PORT%
)
echo Port 26901 UDP Opened................................%date% %time% >> G:\Logs\GameServers\7DaystoDie.log

ECHO OFF
set PORT=26902
set RULE_NAME="Open 7DaystoDie Server UDP %PORT%"

netsh advfirewall firewall show rule name=%RULE_NAME% >nul
if not ERRORLEVEL 1 (
    echo Rule Exists, change the name
) else (
    echo Rule %RULE_NAME% does not exist. Creating...
    netsh advfirewall firewall add rule name=%RULE_NAME% dir=in action=allow protocol=UDP localport=%PORT%
)
echo Port 26902 UDP Opened................................%date% %time% >> G:\Logs\GameServers\7DaystoDie.log


REM Install 7DaystoDie Server, Configure SteamCMD directories at will
REM you may need to login with your steam username and password instead of anonymous "+Login username password"
F:\SteamCMD\steamcmd.exe +login anonymous +force_install_dir F:\7DaystoDie +app_update "304930 validate" +quit
echo Server Installed................................%date% %time% >> G:\Logs\GameServers\7DaystoDie.log
ping 127.0.0.1 -n 180 > nul

ECHO You may now edit the serverconfig.xml and start your server!
pause
exit



