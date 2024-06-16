oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\negligible.omp.json" | Invoke-Expression

Set-PSReadlineOption -EditMode vi
Set-PSReadlineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

. 'C:\Users\tgudl\OneDrive\Documents\PowerShell\Scripts\SetLocationX.ps1'
Set-Alias -Name cx -Value Set-Location-X
