@echo off

powershell.exe -ExecutionPolicy Bypass -File "%USERPROFILE%\.config\nvim\custom\nvim-wezterm.ps1" "%~1"
