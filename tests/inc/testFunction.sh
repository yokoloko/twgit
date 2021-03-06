#!/bin/bash

##
# Call a function of common.inc.sh after loading Shell config files.
# e.g.: /bin/bash testFunction.sh process_fetch x
#
# @author Geoffroy AUBRY <geoffroy.aubry@hi-media.com>
#



# Parameters:
sCommonFunction="$1"; shift

# Includes:
. `dirname $0`/../../conf/twgit.sh
. $TWGIT_INC_DIR/common.inc.sh

# Execution:
if [ ! -z "$sCommonFunction" ]; then
    $sCommonFunction "$@"
fi