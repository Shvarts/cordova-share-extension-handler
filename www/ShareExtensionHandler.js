var ShareExtensionHandler = function() {};

ShareExtensionHandler.prototype.getJsonDataFromSharedPkpassFile = function(success, fail) {
  cordova.exec(success, fail, "ShareExtensionHandler", "getJsonDataFromSharedPkpassFile");
};

ShareExtensionHandler.prototype.deletePkpass = function() {
  cordova.exec(null, null, "ShareExtensionHandler", "deletePkpass");
};

var ShareExtensionHandler = new ShareExtensionHandler();
module.exports = ShareExtensionHandler;