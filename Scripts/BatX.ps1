function Write-X {
    $pathspath = "$($env:userprofile)\CommonPaths\CommonBatPaths.txt"
    if (![System.IO.File]::Exists($pathspath)) {
        'USERPROFILE\CommonPaths\CommonBatPaths.txt not found'
        return
    }
    $paths = $(Get-Content $pathspath)
    $choice = $args[0] ?? 0
    if ($choice -ge $paths.Length -or $choice -lt 0) {
        'invalid choice'
        return
    }
    bat $paths[$choice]
}
