var exec = require('cordova/exec');

exports.loadShareImage = function(success, fail) {
    exec(success, fail, "ShareExtensionHandler", "loadShareImage");
};

exports.finishExtension = function() {
    exec(null, null, "ShareExtensionHandler", "finishExtension");
};