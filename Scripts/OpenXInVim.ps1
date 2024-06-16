function Open-X-In-Vim {
    $pathspath = "$($env:userprofile)\CommonPaths\CommonVimPaths.txt"
    if (![System.IO.File]::Exists($pathspath)) {
        'USERPROFILE\CommonPaths\CommonVimPaths.txt not found'
        return
    }
    $paths = $(Get-Content $pathspath)
    $choice = $args[0] ?? 0
    if ($choice -ge $paths.Length -or $choice -lt 0) {
        'invalid choice'
        return
    }
    vim $paths[$choice]
}
