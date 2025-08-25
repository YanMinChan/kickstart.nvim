param (
    [string]$file,
    [string]$line
)

# Get WezTerm socket
$proc = get-process wezterm-gui -ErrorAction SilentlyContinue
if (-not $proc){
    wezterm start -- nvim "$file" "+$line"
}

echo $(get-process wezterm-gui)

# Set up env var manually for gui socket path (on Windows)
$env:WEZTERM_UNIX_SOCKET = "$HOME/.local/share/wezterm/gui-sock-$($proc.Id)"

wezterm cli spawn -- nvim "$file" "+$line"

# Bring opened window to foreground
Add-Type @"
using System;
using System.Runtime.InteropServices;

public class SFW {
    [DllImport("user32.dll")]
    [return: MarshalAs(UnmanagedType.Bool)]
    public static extern bool SetForegroundWindow(IntPtr hWnd);
}
"@

$fw = (get-process wezterm-gui).MainWindowHandle
[SFW]::SetForegroundWindow($fw)

