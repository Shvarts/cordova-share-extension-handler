#import "ShareExtensionHandler.h"
#import "ShareViewController.h"
#import <Cordova/CDV.h>
#import <Cordova/CDVPluginResult.h>
#import <PassKit/PassKit.h>
@implementation ShareExtensionHandler

- (NSMutableDictionary* )getDictionaryPkpassItems:(PKPass *)obj  withKeyArray: (NSArray *)keyArray {
  NSMutableDictionary* result = [[NSMutableDictionary alloc] init];
  for (NSString *key in keyArray) {
    NSString *value = [NSString stringWithFormat:@"%@", [obj localizedValueForFieldKey:key]];
    [result setObject:value forKey:key];
  }
  
  return result;
}


- (void)getJsonDataFromSharedPkpassFile:(CDVInvokedUrlCommand *)command {
  // do the magic
  NSUserDefaults *userdata = [[NSUserDefaults alloc] initWithSuiteName:@"group.intime"];
  
  NSArray *keyIdentifiers = [command.arguments objectAtIndex:0];
  
  NSString *jsonString = @"";
  
  if ([userdata objectForKey:@"pkpassDataFile"] != nil) {
    NSError *error = nil;
    PKPass *obj = [[PKPass alloc] initWithData:[userdata dataForKey:@"pkpassDataFile"] error:&error];
    NSMutableDictionary *dic = [self getDictionaryPkpassItems:obj withKeyArray:keyIdentifiers];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic
                                                       options:NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability of the generated string
                                                         error:&error];
    
    jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    
  }
  
  [self.commandDelegate sendPluginResult:jsonString callbackId:command.callbackId];
}

- (void)deletePkpass:(CDVInvokedUrlCommand *)command {
  NSUserDefaults *userdata = [[NSUserDefaults alloc] initWithSuiteName:@"group.intime"];
  [userdata setObject:nil forKey:@"pkpassDataFile"];
}



@end