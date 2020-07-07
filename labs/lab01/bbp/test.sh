#!/bin/sh
OPENSSL_INCLUDE=/usr/include/openssl/
#touch $1.c
gcc -ansi -Wall -Wno-deprecated-declarations -Wno-long-long -I $OPENSSL_INCLUDE -pedantic -o $1.out $1.c -lssl -lcrypto 
./$1.out
