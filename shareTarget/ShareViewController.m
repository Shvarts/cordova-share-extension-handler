//
//  ShareViewController.m
//  inTimeShare
//
//  Created by Oleg Mac on 7/21/16.
//
//

#import "ShareViewController.h"
#import <PassKit/PassKit.h>

@interface ShareViewController ()

@end

@implementation ShareViewController


- (BOOL)isContentValid {
    return YES;
}

- (void)didSelectPost {
  NSUserDefaults *userdata = [[NSUserDefaults alloc] initWithSuiteName:@"group.intime"];
  NSExtensionItem* item = self.extensionContext.inputItems[0];
  NSArray *contents = item.attachments;
  NSItemProvider* itemProvider = contents[0];
  
  //Get pkpass NSData object through NSItemProvider
  //Store results in NSUserDefaults bridge
  [itemProvider loadItemForTypeIdentifier:@"com.apple.pkpass" options:nil completionHandler:^(id<NSSecureCoding>  _Nullable item, NSError * _Null_unspecified error) {
   PKPass* obj = [[PKPass alloc] initWithData:item error:&error];
    
   
    [userdata setObject:[[obj passURL] absoluteString] forKey:@"pkpassFile"];
    [userdata setObject:item forKey:@"pkpassDataFile"];
  }];
  
  [self.extensionContext completeRequestReturningItems:@[] completionHandler:nil];
}

- (NSArray *)configurationItems {
    return @[];
}

@end
