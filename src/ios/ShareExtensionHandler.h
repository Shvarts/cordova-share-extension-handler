#import <Cordova/CDVPlugin.h>

@interface ShareExtensionHandler : CDVPlugin
	- (void)getJsonDataFromSharedPkpassFile:(CDVInvokedUrlCommand *)command;

	- (void)deletePkpass:(CDVInvokedUrlCommand *)command;
@end
