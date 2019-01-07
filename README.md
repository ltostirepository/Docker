# Docker
Dockerfile backup

Content:

-python2.7
-patched gammalib
-ctools
-added line to .bashrc ($GAMMALIB and $CTOOLS definitions) 


added only_ctools folder : it works on docker (test gammalib and ctools done and ok) use comand ---> 
docker run -it --rm -p 8888:8888 -v /Users/lucatosti/workfolder:/userhome -v /Users/lucatosti/Doker_trials:/dockertry -v /Users/lucatosti/Desktop/GEMINGA/1dc:/CTA_DATA cta:only_ctools bash /dockertry/only_ctools/entryBash.sh

