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
### -- Installation --

1. Clone the repo

```zsh
% git clone https://github.com/enuance/CleanXcode
```

2. Open the Package

```zsh
% cd CleanXcode
% open Package.swift
```

3. Build the executable by pressing **⌘B** or select it from the menu **Product -> Build**

4. Locate the executable by running this in the terminal

```zsh
% find ~/Library/Developer/Xcode/DerivedData -name "CleanXcode"
```

This command will display all locations where files have the name “CleanXcode”
It should be the one contained in `/Users/<UserName>/Library/Developer/Xcode/DerivedData/cleanxcode-<GeneratedString>/Build/Products/Debug/`

5. You can move your executable to a directory of your choosing and run it by entering it's location in the command line

```zsh
% <DirectoryOfYourChoosing>/CleanXcode
```

___
### -- Optional --

You can then make an alias (allows you to enter a single command to run CleanXcode) by entering this in your: 

* .bash_profile (if you’re using bash as your default shell) 
* .zprofile (if you’re using zsh as your default shell)

```zsh
#My Command for running CleanXcode, which cleans out device support and derived files.
alias cleanXcode='<DirectoryOfYourChoosing>/CleanXcode'
```

Once this is done, you'll be able to run CleanXcode by entering:

```zsh
% cleanXcode
```
