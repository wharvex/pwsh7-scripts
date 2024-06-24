oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\negligible.omp.json" | Invoke-Expression

Set-PSReadlineOption -EditMode vi
Set-PSReadlineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

. 'C:\Users\tgudl\OneDrive\Documents\PowerShell\Scripts\SetLocationX.ps1'
. 'C:\Users\tgudl\OneDrive\Documents\PowerShell\Scripts\NotesScript.ps1'
. 'C:\Users\tgudl\OneDrive\Documents\PowerShell\Scripts\ConvertDOCXtoPDF.ps1'
. 'C:\Users\tgudl\OneDrive\Documents\PowerShell\Scripts\ConvertPPTXtoPDF.ps1'
. 'C:\Users\tgudl\OneDrive\Documents\PowerShell\Scripts\CollectNotes.ps1'
. 'C:\Users\tgudl\OneDrive\Documents\PowerShell\Scripts\GitFunctions.ps1'
. 'C:\Users\tgudl\OneDrive\Documents\PowerShell\Scripts\OpenXInVim.ps1'
. 'C:\Users\tgudl\OneDrive\Documents\PowerShell\Scripts\BatX.ps1'
. 'C:\Users\tgudl\OneDrive\Documents\PowerShell\Scripts\StartX.ps1'
. 'C:\Users\tgudl\OneDrive\Documents\PowerShell\Scripts\MiscFunctions.ps1'
. 'C:\Users\tgudl\OneDrive\projects\c-sharp\ShankCompiler\ShankTestScript.ps1'

Remove-Item Alias:cd
Set-Alias -Name cd -Value CD-Alias
Set-Alias -Name pd -Value Pop-Location
Set-Alias -Name cx -Value Set-Location-X
Set-Alias -Name vx -Value Open-X-In-Vim
Set-Alias -Name gss -Value Get-Git-Status-Short
Set-Alias -Name gls -Value Get-Git-Log-Stat
Set-Alias -Name lsw -Value Get-List-Sort-Write
Set-Alias -Name bx -Value Write-X
Set-Alias -Name sx -Value Start-X

$env:path = $env:path + ';C:\Users\tgudl\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\LocalCache\local-packages\Python312\Scripts;C:\Program Files (x86)\llvm\bin;C:\Program Files\dotnet\packs\Microsoft.NET.Runtime.Emscripten.3.1.34.Python.win-x64\8.0.5\tools'
