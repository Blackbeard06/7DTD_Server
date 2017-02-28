REM This will open your default 7DaystoDie ports
REM Hard to get in, Easy to get out. So we will only open inbound ports via host firewall
REM Made by Blackbeard

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