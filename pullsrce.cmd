ps axl | grep node

http://apulcino:afwinw\!se4@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/production
http://stid-vtfs2013.afp.local:8080/tfs/SICL/MSAFO/_git/production
http://stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/production

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
cd .. && mkdir config && cd config && git init && git pull http://stid-vtfs2013.afp.local:8080/tfs/SICL/MSAFO/_git/config




rem ##########################################################
rem LINUX WORK
rem ##########################################################
mkdir MSAFO
cd MSAFO
git init
sudo git pull http://apulcino:afwinw\!se4@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/root
mkdir library
cd library
git init
sudo git pull http://apulcino:afwinw\!se4@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/library
npm install
cd ..
mkdir authent
cd authent
git init
sudo git pull http://apulcino:afwinw\!se4@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/authent
npm install
cd ..
mkdir afoevents
cd afoevents
git init
sudo git pull http://apulcino:afwinw\!se4@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/afoevents
npm install
cd ..
mkdir afopaniers
cd afopaniers
git init
sudo git pull http://apulcino:afwinw\!se4@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/afopaniers
npm install
cd ..
mkdir aforegistry
cd aforegistry
git init
sudo git pull http://apulcino:afwinw\!se4@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/aforegistry
npm install
cd ..
mkdir apigateway
cd apigateway
git init
sudo git pull http://apulcino:afwinw\!se4@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/apigateway
npm install
cd ..
mkdir config
cd config
git init
sudo git pull http://apulcino:afwinw\!se4@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/config
cd ..

rem ##########################################################
rem LINUX HOME
rem ##########################################################
mkdir MSAFO
cd MSAFO
git init
sudo git pull ../../Dropbox/GITRepos/MSAFO/root
sudo git remote add origin ../../Dropbox/GITRepos/MSAFO/root
mkdir library
cd library
git init
sudo git pull ../../../Dropbox/GITRepos/MSAFO/library
sudo git remote add origin ../../../Dropbox/GITRepos/MSAFO/library
cd ..
mkdir authent
cd authent
git init
sudo git pull ../../../Dropbox/GITRepos/MSAFO/authent
sudo git remote add origin ../../../Dropbox/GITRepos/MSAFO/authent
cd ..
mkdir afoevents
cd afoevents
git init
sudo git pull ../../../Dropbox/GITRepos/MSAFO/afoevents
sudo git remote add origin ../../../Dropbox/GITRepos/MSAFO/afoevents
cd ..
mkdir afopaniers
cd afopaniers
git init
sudo git pull ../../../Dropbox/GITRepos/MSAFO/afopaniers
sudo git remote add origin ../../../Dropbox/GITRepos/MSAFO/afopaniers
cd ..
mkdir aforegistry
cd aforegistry
git init
sudo git pull ../../../Dropbox/GITRepos/MSAFO/aforegistry
sudo git remote add origin ../../../Dropbox/GITRepos/MSAFO/aforegistry
cd ..
mkdir apigateway
cd apigateway
git init
sudo git pull ../../../Dropbox/GITRepos/MSAFO/apigateway
sudo git remote add origin ../../../Dropbox/GITRepos/MSAFO/apigateway

rem ##########################################################
rem LINUX WORK
rem ##########################################################

cd library
npm install
cd ..
cd authent
npm install
cd ..
cd apigateway
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


