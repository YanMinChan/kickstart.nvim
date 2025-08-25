@echo off

REM Manually set up env var for gui socket path (on Windows) so cli can be used
set $env:WEZTERM_UNIX_SOCKET = "$HOME/.local/share/wezterm/gui-sock-$((Get-Process wezterm-gui).Id)"

wezterm cli spawn -- nvim "%~1" "+%~2"
