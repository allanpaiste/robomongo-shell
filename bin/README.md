Bash frontend for Scons
=======================

Build MongoDB
-------------

Build in release mode:

    brew install scons openssl
    sudo easy_install pip
    pip install virtualenv
    
    # Make sure to add Python bin to .bash_profile:
    # export PATH="${PATH}:/Users/allanpaiste/Library/Python/2.7/bin"
    
    # Make sure you have these dudes configured (python requires those to have valid value)
    # export LC_ALL=en_US.UTF-8
    # export LANG=en_US.UTF-8
 
    
    virtualenv --python=python2 venv


    pip install typed
    sudo pip install Cheetah
    pip install pyyaml
    
    export ROBOMONGO_CMAKE_PREFIX_PATH="${ROBOMONGO_CMAKE_PREFIX_PATH};/usr/local/Cellar/openssl@1.1/1.1.1d"
    
    $ bin/build
    
Build in debug mode:

    $ bin/build debug


Clean output files
------------------

Clean release output 

    $ bin/clean
    
Clean debug output

    $ bin/clean debug

