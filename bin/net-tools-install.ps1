	# Scoop.
    iwr -useb get.scoop.sh | iex

	scoop install git

    # Buckets.
	scoop bucket add extras
	scoop bucket add nerd-fonts
    
    # Apps.
    scoop install vcredist2019
	scoop install posh-git
	scoop install FiraCode
	scoop install starship
	scoop install firefox
	scoop install dotnet-sdk
	scoop install vscode
    scoop install azuredatastudio
	scoop install nvm

    # Node.
	nvm install latest
	$nodeVersion = nvm list | select -last 1
	nvm use $nodeVersion

    # Set profile.
	if (-Not (Test-Path $PROFILE))
	{
		New-Item -Type File -Force $PROFILE
	}

	Add-Content -Path $PROFILE -Value "Invoke-Expression (&starship init powershell)`r`nImport-Module posh-git`r`n`$env:LC_ALL='C.UTF-8'"