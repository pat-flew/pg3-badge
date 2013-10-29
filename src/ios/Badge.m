//
//  Badge.m
//  HelloWorld
//
//  Created by Patrick on 28/10/2013.
//
//

#import "Badge.h"

@implementation Badge
    - (void)setBadge:(CDVInvokedUrlCommand*)command {
        NSInteger index = [[command.arguments objectAtIndex:0] integerValue];
        [[UIApplication sharedApplication] setApplicationIconBadgeNumber:index];
    }

@end
