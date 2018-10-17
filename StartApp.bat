e:/consul/consul agent -server -bootstrap-expect=1 -data-dir=consul-data -ui -bind=127.0.0.1 &

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
ssh apulcino@158.50.163.114
ssh root@vspar-afo-dev-01

git clone http://apulcino:afwinw\!se4@stid-vtfs2013:8080/tfs/SICL/MSAFO/_git/production
cd production
cd apigateway
npm install
cd library
npm install
cd ..
cd ..
cd afoevents
npm install
cd library
npm install
cd ..
cd ..
pm2 start ./apigateway/server.js --name apigateway -i 2
pm2 start ./afoevents/server.js --name afoevents -i 4

pm2 start pm2start.json

