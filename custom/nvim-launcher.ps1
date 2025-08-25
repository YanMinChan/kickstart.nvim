param (
    [string]$file,
    [string]$line
)

# Get WezTerm socket
$proc = get-process wezterm-gui -ErrorAction SilentlyContinue
if (-not $proc){
    start-process wezterm -WindowStyle Hidden
    # Wait for Wezterm to start
    while (-not (get-process wezterm-gui -ErrorAction SilentlyContinue)){
        start-sleep -Milliseconds 100
    }
    start-sleep -seconds 1
    $proc = get-process wezterm-gui
}

echo $(get-process wezterm-gui)

# Set up env var manually for gui socket path (on Windows)
$env:WEZTERM_UNIX_SOCKET = "$HOME/.local/share/wezterm/gui-sock-$($proc.Id)"

wezterm cli spawn -- nvim "$file" "+$line" 

