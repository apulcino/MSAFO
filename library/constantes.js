const os = require('os');
const fetch = require('node-fetch');
const MSRegistryUrl = process.env.MS_REGISTRY_URL || 'http://localhost:5555/registry';
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
exports.MSTypeEnum = Object.freeze({
    "afoEvents": 1,
    "afoPaniers": 2,
    "afoAuthent": 3
});
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
exports.MSPathnameEnum = Object.freeze({
    "afoHealth": "/health",
    "afoEvents": "/api/events",
    "afoPaniers": "/api/selections",
    "afoAuthent": "/api/user"
});
//------------------------------------------------------------------------------
// http://localhost:5555/registry/declare/MSType?url=....
//------------------------------------------------------------------------------
exports.declareService = function (type, host, port, pathname) {
    const url = MSRegistryUrl + '/declare/' + type + '?host=' + host + '&port=' + port + '&pathname=' + pathname;
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
// http://localhost:5555/registry/list
// [{"type":"3","url":"http://158.50.163.7:3000","pathname":"/api/user","status":true,"cptr":331}]
//------------------------------------------------------------------------------
exports.getServiceList = function () {
    const url = MSRegistryUrl + '/list';
    console.log('GET : ', url);
    return new Promise(function (resolve, reject) {
        fetch(url, {
            method: 'GET',
            headers: { 'Content-Type': 'application/json' },
        }).then(response => {
            return response.json();
        }).then(function (json) {
            resolve(json);
        }).catch(err => {
            console.log('declareService : Error : ', err.message);
            resolve([]);
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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
exports.findActiveMService = function (MServiceList, reqUrl) {
    MServiceList = MServiceList || [];
    reqUrl = reqUrl || '';
    var resMService = MServiceList.find((value, index, array) => {
        if (true === value.status) {
            if (-1 !== reqUrl.indexOf(value.pathname)) {
                return value;
            }
        }
        return undefined;
    });
    return resMService;
};