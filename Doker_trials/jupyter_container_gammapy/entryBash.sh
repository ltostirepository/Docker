#! /usr/bin/env bash

######### GAMMALIB_PATCHED_BY_GONZALO #######

export GAMMALIB=/usr/local/gamma
source $GAMMALIB/bin/gammalib-init.sh

######## Setting new bash shell for dummy oeprations ########

#export CTADATA=/Users/lucatosti/Desktop/GEMINGA/1dc 
export CTADATA=/CTA_DATA
export CALDB=$CTADATA/caldb

export GAMMAPY_DATA=/home/jovyan/gammapy-extra/datasets
export GAMMAPY_EXTRA=/home/jovyan/gammapy-extra
export GAMMAPY_CAT=/home/jovyan/gamma-cat
export GAMMA_CAT=/home/jovyan/gamma-cat


bash
