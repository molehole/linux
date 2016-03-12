#!/bin/bash

TEST_DIR="/vagrant/Nauka/"

find $TEST_DIR -type f -print0 | xargs -0 md5sum > new_md5
DIFF=$(diff old_md5 new_md5)
if [ "$DIFF" != "" ]
then
    echo "ZMIENIONO PLIKI!"
    mv new_md5 old_md5
fi
