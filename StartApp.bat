../../consul agent -server -bootstrap-expect=1 -data-dir=consul-data -ui -bind=127.0.0.1 &

pm2 start ./apigateway/server.js --name apigateway

export NODE_ENV=production
SET NODE_ENV=production
SET NODE_ENV=development

start "apigateway" node ./apigateway/server.js
start "authent" node ./authent/server.js

start "afoevents" node ./afoevents/server.js
start "aforegistry" node ./aforegistry/server.js

start "aforegistry" node ./aforegistry/server.js
start "afoevents" node ./afoevents/server.js
start "afopaniers" node ./afopaniers/server.js
start "afopaniers" node ./afopaniers/server.js
start "authent" node ./authent/server.js
start "authent" node ./authent/server.js


xterm -e node ./apigateway/server.js &
xterm -e node ./aforegistry/server.js &
xterm -e node ./afoevents/server.js &

xterm -e node ./aforegistry/server.js &
xterm -e node ./afoevents/server.js &
xterm -e node ./afopaniers/server.js &
xterm -e node ./afopaniers/server.js &
xterm -e node ./authent/server.js &
xterm -e node ./authent/server.js &

INSTALL LINUX
git clone http://stid-vtfs2013.afp.local:8080/tfs/SICL/MSAFO/_git/production
cd production
cd library
npm install
cd ..
cd apigateway
npm install
cd ..
cd authent
npm install
cd ..
pm2 start ./apigateway/server.js --name apigateway -i 2
pm2 start ./authent/server.js --name authent -i 4

