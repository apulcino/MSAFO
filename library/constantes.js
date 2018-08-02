const os = require('os');
const fetch = require('node-fetch');
const MSRegistryUrl = 'http://localhost:5555/registry';
exports.MSTypeEnum = Object.freeze({
    "afoEvents": 1,
    "afoPaniers": 2,
    "afoAuthent": 3
});

//------------------------------------------------------------------------------
// http://localhost:5555/registry/declare/MSType?url=....
//------------------------------------------------------------------------------
exports.declareService = function (type, host, port) {
    let MSurl = 'http://' + host + ':' + port;
    const url = MSRegistryUrl + '/declare/' + type + '?url=' + MSurl;
    console.log('GET : ', url);
    return new Promise(function (resolve, reject) {
        fetch(url, {
            method: 'GET',
            headers: { 'Content-Type': 'application/json' },
        }).then(response => {
            resolve(true);
        }).catch(err => {
            console.log('declareService : Error : ', err.message);
            resolve(false);
        });
    });
};

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
exports.getServerIpAddress = function () {
    const ifaces = os.networkInterfaces();
    for (prop in ifaces) {
        var iface = ifaces[prop];
        console.log(prop + " => " + JSON.stringify(ifaces[prop]));
        for (let i = 0; i < iface.length; i++) {
            if (iface[i].family === "IPv4" && iface[i].internal === false) {
                return iface[i].address;
            }
        }
    }
    return '';
};