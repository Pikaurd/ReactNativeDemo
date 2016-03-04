//
//  RNNotificationManager.m
//  ReactNativeTest
//
//  Created by Chen Hao on 3/4/16.
//  Copyright © 2016 Chen Hao. All rights reserved.
//

#import "RNNotificationManager.h"

#import "RCTLog.h"

@implementation RNNotificationManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(postNotification:(NSString *)name userInfo:(NSDictionary *)userInfo)
{
    RCTLogInfo(@"postNotification name: %@ userInfo %@", name, userInfo);
    [[NSNotificationCenter defaultCenter] postNotificationName:name object:self userInfo:userInfo];
}

@end
