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

        NSArray *vComp = [[UIDevice currentDevice].systemVersion componentsSeparatedByString:@"."];

        if ([[vComp objectAtIndex:0] intValue] > 7) {
            NSLog(@"Requesting notification permissions");
            UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeBadge categories:nil];
            [[UIApplication sharedApplication] registerUserNotificationSettings:settings];
        }

        NSInteger index = [[command.arguments objectAtIndex:0] integerValue];
        [[UIApplication sharedApplication] setApplicationIconBadgeNumber:index];
    }

@end
