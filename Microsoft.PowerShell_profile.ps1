Import-Module Get-ChildItemColor
Import-Module posh-git
Import-Module oh-my-posh

clear-host

Set-Prompt

Function irssi {wsl irssi}
Function Corona {Invoke-RestMethod "https://corona-stats.online" -UserAgent "curl"}
Function CoronaBelgium {Invoke-RestMethod "https://corona-stats.online/be" -UserAgent "curl"}


CoronaBelgium


Set-Alias l Get-ChildItem -option AllScope 
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
Set-Alias winget "C:\Users\Tanghe\Documents\Dev\windows\winget-cli\src\x64\Release\AppInstallerCLI\AppInstallerCLI.exe"
Set-Alias  irc irssi







Set-Alias -name c -Value Corona
Set-Alias -name cb -Value CoronaBelgium
Set-Alias -name csv -Value Import-Csv

# Set-Alias winst "C:\Users\Tanghe\Documents\Dev\windows\winget-cli\src\x64\Release\AppInstallerCLI\AppInstallerCLI.exe" -option install


#Set-Alias ii Get-ChildItem Invoke-Item 
#Set-Alias explorer Get-ChildItem Invoke-Item 

# makelink
function make-slink ($target, $link) {
    New-Item -Path $link -ItemType SymbolicLink -Value $target
}


# todo make funct Hardlink
# New-Item -itemType Hardlink -path "ietsnieuw" -target "ietsoud"test
