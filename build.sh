#!/bin/bash

./gentests.pl > tests.c
gcc -O0 -g -Wall -Wextra -pedantic -DUSE_SHA1 pkcs1.c pss-vect.c sha1.o -o vectors -lgmp && ./vectors
