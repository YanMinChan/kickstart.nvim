$baseArgs = @("start", "--", "nvim")

$fileToOpen = $args | ForEach-Object {"`"$($_)`""}

$allArgs = $baseArgs + $fileToOpen

start-process -WindowStyle Hidden -FilePath "wezterm" -ArgumentList $allArgs
