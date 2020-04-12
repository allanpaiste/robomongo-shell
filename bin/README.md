Bash frontend for Scons
=======================

The following guide covers the steps/extras needed to build Robomongo Shell.

Prerequisites
-------------

Note that this guide DOES assume that all the dependencies/sources share same root path (example: every library is within
the folder /my/projects). This requirement/recommendation DOES include this project as well. 

If you don't have such a setup for dependent libraries in such a way, you are STRONGLY encouraged to do so. 

Install Homebrew
""""""""""""""""

This will just make the installation of certain libraries so much easier.

```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
``` 

Install Open SSL
""""""""""""""""

This guide assumes that you are in the root of the repositories 

```shell
curl -LO https://www.openssl.org/source/old/1.0.2/openssl-1.0.2u.tar.gz > openssl-1.0.2u.tar.gz
tar -xvzf openssl-1.0.2*.tar.gz
rm openssl-1.0.2u.tar.gz
mv openssl-* openssl

cd openssl
./Configure darwin64-x86_64-cc shared --openssldir="@rpath"

make -j9

# You might be getting "WARNING: can't open config file: @rpath/@rpath/openssl.cnf" at the end end of 
# the build process which you CAN ignore 
```

Install Gcc & CMake 
"""""""""""""""""""

```shell
brew install gcc cmake
```

Install Python dependencies 
"""""""""""""""""""""""""""

```shell
bin/setup
```

Build MongoDB
-------------

Build in release mode:
 
```shell
# Release
bin/configure

# Debug/Develop
bin/configure debug 
```   
 
Build in debug mode:

```shell
# Release
bin/build

# Debug/Develop
bin/build debug
```   
    
Note that when you want to build Robomongo in debug mode, you also have to build shell in debug mode beforehand. 

Clean output files
------------------

Clean release output 

```shell
bin/clean
```
    
Clean debug output

```shell
bin/clean debug
```