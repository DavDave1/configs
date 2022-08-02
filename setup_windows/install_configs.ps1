function Copy-File {
	param
	(
		[Parameter(Mandatory = $true)][ValidateNotNullOrEmpty()][System.IO.FileInfo]$Src,
		[Parameter(Mandatory = $true)][ValidateNotNullOrEmpty()][System.IO.FileInfo]$Dst
	)	

	Write-Host ('Copying ' + $Src.Name + ' config.....') -NoNewline
	New-Item -type Directory -force $Dst.DirectoryName
	Copy-Item -Path $Src -Destination $Dst -Force
	If ((Test-Path $Dst) -eq $true) {
		Write-Host ('Success') -Foreground Yellow
	} else {
		Write-Host ('Failed') -ForegroundColor Red
	}
}

Copy-File -Src ($PSScriptRoot + "\..\alacritty\alacritty.yml") -Dst ($env:APPDATA + "\alacritty\alacritty.yml")

Copy-File -Src ($PSScriptRoot + "\..\neovim\init.vim") -Dst ($env:LOCALAPPDATA + "\nvim\init.vim")

Copy-File -Src ($PSScriptRoot + "\..\nushell\config.nu") -Dst ($env:APPDATA + "\nushell\config.nu")
Copy-File -Src ($PSScriptRoot + "\..\nushell\env.nu") -Dst ($env:APPDATA + "\nushell\env.nu")

