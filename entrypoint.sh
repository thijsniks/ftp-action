#!/bin/sh

set -e

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ssl:verify-certificate false; mirror -R $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
