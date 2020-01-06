Bash frontend for Scons
=======================

Build MongoDB
-------------

If you want to use this scripts, you need to set single environment variable:

```shell
brew install qt gcc cmake openssl

OPENSSL_ROOT=/usr/local/Cellar/openssl/1.0.2t

cp ${OPENSSL_ROOT}/lib/libssl.dylib ${OPENSSL_ROOT}/libssl.dylib
cp ${OPENSSL_ROOT}/lib/libcrypto.dylib ${OPENSSL_ROOT}/libcrypto.dylib
cp ${OPENSSL_ROOT}/libssl.dylib ${OPENSSL_ROOT}/libssl.1.0.0.dylib
cp ${OPENSSL_ROOT}/libcrypto.dylib ${OPENSSL_ROOT}/libcrypto.1.0.0.dylib
```

Build in release mode:
 
```shell
bin/setup 
bin/build
```   
 
Build in debug mode:

```shell
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