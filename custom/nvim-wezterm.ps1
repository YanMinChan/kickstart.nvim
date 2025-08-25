$allArgs = @("start", "--", "nvim") + $args

start-process -WindowStyle Hidden -FilePath "wezterm" -ArgumentList $allArgs
