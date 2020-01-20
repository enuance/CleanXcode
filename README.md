# CleanXcode

## A command line utility that easily empties out your Xcode cached files.

___

### -- About --

CleanXcode is a very simple command line tool that allows you to easily empty out files that Xcode typically generates in order to operate more efficiently. While in most cases these cached files are great to have, sometimes changes to a given project don’t work properly. Other times Xcode itself can be buggy.  When you empty out the derived files, Xcode generates a new set of derived files, which often ends up resolving the issues found with Xcode.

CleanXcode specifically targets two directories:

* Derived Data
* iOS Device Support

Once these directories are located CleanXcode recursively traverses all subfolders cleaning each out until the targeted directories have been completely emptied. As you may have noticed, this is an irreversible action and should be used with caution.

___
### -- Requirements --

This package uses `swift-tools-version:5.1` as a minimum requirement to build and install.

Check to see that you have Swift 5.1 or greater to meet the requirements
```zsh
% swift --version
```

Supported OS:
- macOS Catalina v10.15.1 or greater

___
### -- Installation --

1. Clone the repo and move to the root of the directory

```zsh
% git clone https://github.com/enuance/cleanXcode && cd cleanXcode
```

2. *Optional* Run the installer and you're good to go.

```zsh
% ./Installer
```

As a good practice, please make sure to read the source code of the installer script before running it. If you do not feel comfortable running the installer, you could manually build and install it instead. If you would like to do so, follow these steps:

2. Build the executable

```zsh
% swift build -c release
```

3. Install it into the local bin folder

```zsh
% mv .build/release/cleanXcode /usr/local/bin 
```

On your next Terminal session you should be able to see auto-completion and use cleanXcode.

```zsh
% cleanXcode
```
