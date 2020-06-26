#!/bin/sh
OPENSSL_INCLUDE=/usr/include/openssl/
for FILE in `ls *.c`; do
    TEST=${FILE%.*}

    echo === $TEST ===
    echo --- $FILE ---
    ./test.sh $TEST
    echo
done
