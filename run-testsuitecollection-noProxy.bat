@echo on

echo Environment variable KATALONSTUDIO_HOME="%KATALONSTUDIO_HOME%"

set DIR=%~dp0
set PROJECT_DIR=%DIR:~0,-1%
echo PROJECT_DIR=%PROJECT_DIR%

cd "%KATALONSTUDIO_HOME%"

rem -consoleLog -noExit
.\katalon.exe -noSplash -runMode=console -summaryReport -projectPath="%PROJECT_DIR%" -testSuiteCollectionPath="Test Suites\TSC1" -g_URL="https://www.amazon.com/" -browserType="Firefox"

set exitCode=%ERRORLEVEL%

cd /d "%PROJECT_DIR%"

echo %exitCode%
exit /B %exitCode%
