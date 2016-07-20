var ShareExtensionHandler = function() {};

ShareExtensionHandler.prototype.loadShareImage = function(success, fail) {
  cordova.exec(success, fail, "ShareExtensionHandler", "loadShareImage");
};

ShareExtensionHandler.prototype.finishExtension = function() {
  cordova.exec(null, null, "ShareExtensionHandler", "finishExtension");
};

var ShareExtensionHandler = new ShareExtensionHandler();
module.exports = ShareExtensionHandler;