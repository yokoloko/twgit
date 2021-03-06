#!/bin/bash

##
# Execute code calling functions of common.inc.sh after loading Shell config files.
# e.g.: /bin/bash testShellCode.sh 'process_options x -aV; isset_option a; echo $?'
#
# @author Geoffroy AUBRY <geoffroy.aubry@hi-media.com>
#



# Parameters:
sCmds="$1"; shift

# Includes:
. $(dirname $0)/../../conf/twgit.sh
. $TWGIT_INC_DIR/common.inc.sh

# Execution:
rFile="$(tempfile)"
echo "$sCmds" > $rFile
. $rFile
rm -f $rFile