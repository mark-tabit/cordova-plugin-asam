var exec = require('cordova/exec');

var ASAMHandler = {
    enableASAM: function(successCallback, errorCallback) {
        exec(successCallback, errorCallback, "ASAMHandler", "enableASAM", []);
    },
    disableASAM: function(successCallback, errorCallback) {
        exec(successCallback, errorCallback, "ASAMHandler", "disableASAM", []);
    },
    checkASAM: function(successCallback, errorCallback) {
        exec(successCallback, errorCallback, "ASAMHandler", "checkASAM", []);
    }
};

module.exports = ASAMHandler;
