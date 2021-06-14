# scoop-dev-tools-installer
Install usual .NET dev tools

## Requirements

* See *Scoop* [requirements](https://github.com/lukesampson/scoop/blob/master/README.md#requirements)
* PowerShell must be enabled for your user account e.g. `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

### Install Windows Terminal (Optional)

You can install Windows Terminal:

* From the [Microsoft Store](https://aka.ms/terminal)
* From the builds published on the [GitHub releases page](https://github.com/microsoft/terminal/releases) (no update). For example to install a MSIX from _PowerShell_: `Add-AppxPackage -Path "https://github.com/microsoft/terminal/releases/download/v1.5.10271.0/Microsoft.WindowsTerminal_1.5.10271.0_8wekyb3d8bbwe.msixbundle"`

## Installation

Run the following command from PowerShell to install the application to the default scoop location.

#### Note: Admin rights are required to install these fonts, because their installers modify the registry. Additionally, restarting your computer after uninstalling a font is necessary for the font to be fully removed.

```
iwr -useb https://raw.githubusercontent.com/EtnMn/scoop-dev-tools-installer/main/bin/net-tools-install.ps1 | iex
```

### Configure Windows Terminal

In _Windows Terminal_ settings (_Ctrl+,_), define the font in the profile. For example:

```
"profiles": {
    "defaults": {
        // Put settings here that you want to apply to all profiles.
        "fontFace": "Fira Code",
        "colorScheme" : "Dracula",
        "startingDirectory": "C:\\workspace",
        "backgroundImage": "1.jpg"
    },
    // ...
}
```
## Custom

To configure starshi, use `starship config`. For example, to set up the nodejs module

```
[nodejs]
format = "via [◆ $version](bold green) "
```

## Uninstall

To uninstall all the applications run:

```
scoop uninstall scoop
```

#### Note: Some applications must be deleted manually (_vcredist2019..._)
