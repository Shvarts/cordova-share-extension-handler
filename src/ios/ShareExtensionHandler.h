#import <Cordova/CDVPlugin.h>

@interface ShareExtensionHandler : CDVPlugin {
  // Member variables go here.
	
  - (void)loadShareImage:(CDVInvokedUrlCommand *)command;
  @end

  - (void)finishExtension:(CDVInvokedUrlCommand *)command;
  @end
}