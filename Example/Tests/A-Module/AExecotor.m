//
//  AExecotor.m
//  AYDispatcher
//
//  Created by Alan Yeh on 16/7/24.
//  Copyright © 2016年 Alan Yeh. All rights reserved.
//

#import "AExecotor.h"
#import <AYDispatcher/AYDispatcher.h>

@implementation AExecotor{
    int _times;
}

+ (void)load{
    [[AYDispatcher dispatcher] registerClass:[self class] forProtocol:@protocol(AProtocol)];
}

- (NSString *)doAHomework{
    NSLog(@"A module is doing homework %@ times", @(_times ++));
    return @"A";
}

@end
