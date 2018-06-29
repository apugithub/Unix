

#!/bin/ksh
# ControlM_Remove.sh
# Version: 1.0 
# Script to remove Ctrl+M character and bad data consisting of special characters (ÿ and §)
# Author    : Cognizant
# Created   : 11/11/2013
# Modified  : 10/12/2013

export SRC_DIR=$1
export SRC_FILE=$2
export RENAME_SRC_FILE=$3

sed 's/'"$(printf '\015')"'//g' $SRC_DIR/$SRC_FILE > $SRC_DIR/CTRL_M_REMOVED_INTERMEDIATE_FILE.txt
sed '/ÿ/d' $SRC_DIR/CTRL_M_REMOVED_INTERMEDIATE_FILE.txt > $SRC_DIR/y_SYMBOL_REMOVED_INTERMEDIATE_FILE.txt
sed '/§/d' $SRC_DIR/y_SYMBOL_REMOVED_INTERMEDIATE_FILE.txt > $SRC_DIR/s_SYMBOL_REMOVED_INTERMEDIATE_FILE.txt
mv $SRC_DIR/s_SYMBOL_REMOVED_INTERMEDIATE_FILE.txt $SRC_DIR/$RENAME_SRC_FILE
rm $SRC_DIR/CTRL_M_REMOVED_INTERMEDIATE_FILE.txt
rm $SRC_DIR/y_SYMBOL_REMOVED_INTERMEDIATE_FILE.txt
