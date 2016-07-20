#import <Cordova/CDVPlugin.h>

@interface ShareExtensionHandler : CDVPlugin {
  // Member variables go here.
	
  - (void)loadShareImage:(CDVInvokedUrlCommand *)command;

  - (void)finishExtension:(CDVInvokedUrlCommand *)command;
}