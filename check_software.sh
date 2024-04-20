#!/bin/bash

declare -a TOOLS_LIST=( "$@" )

for TOOL in ${TOOLS_LIST[@]} ; do 
    $TOOL --version 2>&1 | grep "command not found" && echo "${TOOL}" is NOT installed
done