// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
class RegistryMgr {
    //------------------------------------------------------------------------------
    //------------------------------------------------------------------------------
    constructor(ServerIpAddress, MCastAppPort, MCastAppAddr) {
        //constructor(ServerIpAddress, MCastAppPort, MCastAppAddr) {
        this.AFORegisteryUrl = [];
        // this.ServerIpAddress = ServerIpAddress;
        // this.MCastAppPort = MCastAppPort;
        // this.MCastAppAddr = MCastAppAddr;
    }
    //------------------------------------------------------------------------------
    //------------------------------------------------------------------------------
    getList() {
        var res = JSON.stringify(this.AFORegisteryUrl);
        return JSON.parse(res);
    }
    //------------------------------------------------------------------------------
    //------------------------------------------------------------------------------
    add(host, port) {
        var regUrl = 'http://' + host + ':' + port;
        if (-1 === this.AFORegisteryUrl.indexOf(regUrl)) {
            this.AFORegisteryUrl.push(regUrl);
        }
    }
};
module.exports = RegistryMgr;