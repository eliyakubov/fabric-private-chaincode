# Copyright Intel Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0

cred=`tput setaf 1`
cgrn=`tput setaf 2`
cblu=`tput setaf 4`
cmag=`tput setaf 5`
cwht=`tput setaf 7`
cbld=`tput bold`
bred=`tput setab 1`
bgrn=`tput setab 2`
bblu=`tput setab 4`
bwht=`tput setab 7`
crst=`tput sgr0`

function recho () {
    echo "${cbld}${cred}" $@ "${crst}" >&2
}

function becho () {
    echo "${cbld}${cblu}" $@ "${crst}" >&2
}

# Common reporting functions: say, yell & die
#-----------------------------------------
# say is stdout, yell is stderr
function say () {
    echo "$(basename $0): $*"
}


function yell () {
    becho "$(basename $0): $*" >&2;
}

function die() {
    recho "$(basename $0): $*" >&2
    exit 111
}

function para() {
    echo -e "\n"
}

# Common functions to run commands
#-----------------------------------------
try() {
    "$@" || die "test failed: $*"
}
