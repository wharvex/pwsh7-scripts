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

Set-Alias -Name cx -Value Set-Location-X
Set-Alias -Name vx -Value Open-X-In-Vim
Set-Alias -Name gss -Value Get-Git-Status-Short
Set-Alias -Name gls -Value Get-Git-Log-Stat
Set-Alias -Name lsw -Value Get-List-Sort-Write
Set-Alias -Name bx -Value Write-X
Set-Alias -Name sx -Value Start-X

