#import <Cordova/CDVPlugin.h>

@interface ShareExtensionHandler : CDVPlugin
  // Member variables go here.
- (void)getJsonDataFromSharedPkpassFile:(CDVInvokedUrlCommand *)command;

- (void)deletePkpass:(CDVInvokedUrlCommand *)command;

@end
