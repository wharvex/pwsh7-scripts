function Start-X {
    [CmdletBinding(SupportsShouldProcess)]
    $pathspath = "$($env:userprofile)\CommonPaths\CommonStartPaths.txt"
    if (![System.IO.File]::Exists($pathspath)) {
        'USERPROFILE\CommonPaths\CommonStartPaths.txt not found'
        return
    }
    $paths = $(Get-Content $pathspath)
    $choice = $args[0] ?? 0
    if ($choice -ge $paths.Length -or $choice -lt 0) {
        'invalid choice'
        return
    }
    Start-Process $paths[$choice]
}
