//
//  B-Execotor.m
//  AYDispatcher
//
//  Created by Alan Yeh on 16/7/24.
//  Copyright © 2016年 Alan Yeh. All rights reserved.
//

#import "BExecotor.h"
#import <AYDispatcher/AYDispatcher.h>

@implementation BExecotor{
    int _times;
}
+ (void)load{
    [[AYDispatcher dispatcher] registerInstance:[self new] forProtocol:@protocol(BProtocol)];
}

- (NSString *)doBHomework{
    NSLog(@"B module is doing homework %@ times", @(_times++));
    return @"B";
}
@end
