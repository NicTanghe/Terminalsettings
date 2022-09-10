Invoke-Expression (&starship.exe init powershell)

clear

If (-Not (Test-Path Variable:PSise)) {  # Only run this in the console and not in the ISE
	Import-Module Get-ChildItemColor
	
	Set-Alias l Get-ChildItem -option AllScope
	Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
}


function make-slink ($target, $link) {
    New-Item -ItemType SymbolicLink -Path $link  -Value $target
}

function make-hlink ($target, $link) {
    New-Item -ItemType Hardlink -Path $link  -Value $target
}
