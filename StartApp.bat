export NODE_ENV=production
SET NODE_ENV=production
SET NODE_ENV=development

start "apigateway" node ./apigateway/server.js
start "aforegistry" node ./aforegistry/server.js
start "afoevents" node ./afoevents/server.js

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