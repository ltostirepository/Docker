#! /usr/bin/env bash

######### GAMMALIB_PATCHED_BY_GONZALO #######

export GAMMALIB=/usr/local/gamma
source $GAMMALIB/bin/gammalib-init.sh

######### CTOOLS #######

export CTOOLS=/usr/local/gamma
source $CTOOLS/bin/ctools-init.sh

######## Setting new bash shell for dummy oeprations ########

#export CTADATA=/Users/lucatosti/Desktop/GEMINGA/1dc 
export CTADATA=/CTA_DATA
export CALDB=$CTADATA/caldb

bash
