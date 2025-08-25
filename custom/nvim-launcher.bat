@echo off

REM Wrapper for Unity to run ps1 script

powershell.exe -ExecutionPolicy Bypass -File "C:\Users\Yan Min\.config\nvim\bat\nvim-launcher.ps1" "%~1" "+%~2"
