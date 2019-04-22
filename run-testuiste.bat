@echo on

echo Environment variable KATALONSTUDIO_HOME="%KATALONSTUDIO_HOME%"

set DIR=%~dp0
set PROJECT_DIR=%DIR:~0,-1%
echo PROJECT_DIR=%PROJECT_DIR%

cd "%KATALONSTUDIO_HOME%"

rem -consoleLog -noExit
.\katalon.exe -noSplash -runMode=console -consoleLog -noExit -summaryReport -projectPath="%PROJECT_DIR%" -testSuitePath="Test Suites\TS1" --config -proxyOption=MANUAL_CONFIG -proxy.server.type=HTTP -proxy.server.address="172.24.2.10" -proxy.server.port="8080" -g_URL="https://www.google.com/" -browserType=Firefox

set exitCode=%ERRORLEVEL%

cd /d "%PROJECT_DIR%"

echo %exitCode%
exit /B %exitCode%
