start "apigateway" node ./apigateway/server.js
start "aforegistry" node ./aforegistry/server.js
start "afoevents" node ./afoevents/server.js

node --inspect --debug-brk server.js