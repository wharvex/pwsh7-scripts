function Set-Location-X {
    [CmdletBinding(SupportsShouldProcess)]
    $pathspath = "$($env:userprofile)\CommonPaths\CommonDirPaths.txt"
    if (![System.IO.File]::Exists($pathspath)) {
        'USERPROFILE\CommonPaths\CommonDirPaths.txt not found'
        return
    }
    $paths = $(Get-Content $pathspath)
    $choice = $args[0] ?? 0
    if ($choice -ge $paths.Length -or $choice -lt 0) {
        'invalid choice'
        return
    }
    Push-Location -Path $paths[$choice]
}
