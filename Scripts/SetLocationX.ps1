function Set-Location-X {
    [CmdletBinding(SupportsShouldProcess)]
    $pathspath = "$($env:userprofile)\CommonDirPaths.txt"
    if (![System.IO.File]::Exists($pathspath)) {
        'USERPROFILE\CommonDirPaths.txt not found'
        return
    }
    $paths = $(Get-Content $pathspath)
    $choice = $args[0] ?? 0
    if ($choice -ge $paths.Length -or $choice -lt 0) {
        'invalid choice'
        return
    }
    Set-Location $paths[$choice]
}
