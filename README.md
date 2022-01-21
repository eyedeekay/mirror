mirror
------


Repurposed as an I2P source mirror. For binary mirrors check:

- https://github.com/eyedeekay/apt - [Debian and Ubuntu Packages](https://github.com/eyedeekay/apt)
 - [eyedeekay.github.io/apt](https://eyedeekay.github.io/apt)
- https://github.com/eyedeekay/files - [Windows, Mac OSX, IzPack and NSIS releases](https://github.com/eyedeekay/files)
 - [eyedeekay.github.io/files](https://eyedeekay.github.io/files)
- https://github.com/eyedeekay/fdroid - [Android releases](https://github.com/eyedeekay/fdroid)
 - [eyedeekay.github.io/fdroid](https://eyedeekay.github.io/fdroid)

This repository is different in that it pulls in source code but it
does not treat them as submodules and does not check them into the repository.
Instead it just pulls in all the updates to all the branches, all the tags,
and drops it in a directory on a web server, .git and all.echelon.i2p

Using this tool requires `git-extras`.
