rem ##########################################################
rem Windows
rem ##########################################################

mkdir MSAFO && cd MSAFO && git init && git pull http://stid-vtfs2013.afp.local:8080/tfs/SICL/MSAFO/_git/root
mkdir library && cd library && git init && git pull http://stid-vtfs2013.afp.local:8080/tfs/SICL/MSAFO/_git/library
cd .. && mkdir authent && cd authent && git init && git pull http://stid-vtfs2013.afp.local:8080/tfs/SICL/MSAFO/_git/authent
cd .. && mkdir afoevents && cd afoevents && git init && git pull http://stid-vtfs2013.afp.local:8080/tfs/SICL/MSAFO/_git/afoevents
cd .. && mkdir afopaniers && cd afopaniers && git init && git pull http://stid-vtfs2013.afp.local:8080/tfs/SICL/MSAFO/_git/afopaniers
cd .. && mkdir aforegistry && cd aforegistry && git init && git pull http://stid-vtfs2013.afp.local:8080/tfs/SICL/MSAFO/_git/aforegistry
cd .. && mkdir apigateway && cd apigateway && git init && git pull http://stid-vtfs2013.afp.local:8080/tfs/SICL/MSAFO/_git/apigateway


rem ##########################################################
rem LINUX WORK
rem ##########################################################
mkdir MSAFO
cd MSAFO
git init
sudo git pull http://apulcino:afwinw\!se444@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/root
mkdir library
cd library
git init
sudo git pull http://apulcino:afwinw\!se444@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/library
cd ..
mkdir authent
cd authent
git init
sudo git pull http://apulcino:afwinw\!se444@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/authent
cd ..
mkdir afoevents
cd afoevents
git init
sudo git pull http://apulcino:afwinw\!se444@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/afoevents
cd ..
mkdir afopaniers
cd afopaniers
git init
sudo git pull http://apulcino:afwinw\!se444@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/afopaniers
cd ..
mkdir aforegistry
cd aforegistry
git init
sudo git pull http://apulcino:afwinw\!se444@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/aforegistry
cd ..
mkdir apigateway
cd apigateway
git init
sudo git pull http://apulcino:afwinw\!se444@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/apigateway

rem ##########################################################
rem LINUX HOME
rem ##########################################################
mkdir MSAFO
cd MSAFO
git init
sudo git pull ../../Dropbox/GITRepos/MSAFO/root
mkdir library
cd library
git init
sudo git pull ../../../Dropbox/GITRepos/MSAFO/library
cd ..
mkdir authent
cd authent
git init
sudo git pull ../../../Dropbox/GITRepos/MSAFO/authent
cd ..
mkdir afoevents
cd afoevents
git init
sudo git pull ../../../Dropbox/GITRepos/MSAFO/afoevents
cd ..
mkdir afopaniers
cd afopaniers
git init
sudo git pull ../../../Dropbox/GITRepos/MSAFO/afopaniers
cd ..
mkdir aforegistry
cd aforegistry
git init
sudo git pull ../../../Dropbox/GITRepos/MSAFO/aforegistry
cd ..
mkdir apigateway
cd apigateway
git init
sudo git pull ../../../Dropbox/GITRepos/MSAFO/apigateway

rem ##########################################################
rem LINUX WORK
rem ##########################################################
cd ..
cd library
npm install
cd ..
cd authent
npm install
cd ..
cd afoevents
npm install
cd ..
cd afopaniers
npm install
cd ..
cd aforegistry
npm install
cd ..
cd apigateway
npm install
cd ..


