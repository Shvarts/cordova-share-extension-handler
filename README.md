# cordova-share-extension-handler

Plugin for sharing pkpass file with your app
add to project:

     cordova plugin add cordova-share-extension-handler

1) Add share extension to your xcode project
[Apple developer guide for share extension](https://developer.apple.com/library/ios/documentation/General/Conceptual/ExtensibilityPG/ExtensionCreation.html#//apple_ref/doc/uid/TP40014214-CH5-SW1)

2) Replace *ShareViewController.h*, *ShareViewController.m* and Info.plist 

with **shareExtension/** *ShareViewController.h*, *ShareViewController.m* and *Info.plist* from this repo

From js part: 

1) window.cordova.plugins.ShareExtensionHandler.getJsonDataFromSharedPkpassFile

Method for getting pkpass file data by keys. You can pass any number of keys as a param, than you will get json object with key value.

Example: 
```js
      window.cordova.plugins.ShareExtensionHandler.getJsonDataFromSharedPkpassFile(['message', 'pass'], 
        function(result) {
          // success callback
        },
        function(error) {
          // fail callback
        });
      )
```

2) delete pkpass from buffer
```js
      window.cordova.plugins.ShareExtensionHandler.deletePkpass();
```
