distribution of ubuntu set for work very well with jupyter notebooks:

added:
-cfistio
-gammalib(gonzalo's pach)
-ctools
-astropy
-gammapy

important:

command to run ------> docker run -it --rm -p 8888:8888 -v /Users/lucatosti/workfolder:/userhome -v /Users/lucatosti/Docker/Doker_trials:/dockertry -v /Users/lucatosti/Desktop/GEMINGA/1dc:/CTA_DATA jupyter:complete bash /dockertry/jupyter_container_complete/entryBash.sh

