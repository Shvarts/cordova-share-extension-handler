module.exports = {
   getJsonDataFromSharedPkpassFile: function(params, successCallback) {
	   cordova.exec(successCallback,
	                null,
	                "ShareExtensionHandler",
	                "getJsonDataFromSharedPkpassFile",
	                [params]);
   },
   deletePkpass: function(params, successCallback) {
	   cordova.exec(successCallback,
	                null,
	                "ShareExtensionHandler",
	                "deletePkpass",
	                [params]);
   }
};
