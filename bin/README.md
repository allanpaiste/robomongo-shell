Bash frontend for Scons
=======================

Build MongoDB
-------------

Build in release mode:
 
    $ bin/setup 
    $ bin/build
    
Build in debug mode:

    $ bin/build debug
    
Note that when you want to build Robomongo in debug mode, you also have to build shell in debug mode beforehand. 

Clean output files
------------------

Clean release output 

    $ bin/clean
    
Clean debug output

    $ bin/clean debug
