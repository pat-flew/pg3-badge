//
//  Badge.h
//  HelloWorld
//
//  Created by Patrick on 28/10/2013.
//
//

//#import <Cordova/Cordova.h>
#import <Cordova/CDV.h>

@interface Badge : CDVPlugin
    - (void)setBadge:(CDVInvokedUrlCommand*)command;
@end
