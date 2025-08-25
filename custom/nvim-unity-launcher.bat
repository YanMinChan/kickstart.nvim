@echo off

REM Wrapper for Unity to run ps1 script
REM Editor Args: $(File) +$(Line)

powershell.exe -ExecutionPolicy Bypass -File "%USERPROFILE%\.config\nvim\custom\nvim-launcher.ps1" "%~1" "+%~2"
