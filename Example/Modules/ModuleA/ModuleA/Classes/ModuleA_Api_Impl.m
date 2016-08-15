//
//  ModuleA_Api_Impl.m
//  Pods
//
//  Created by PoiSon on 16/8/15.
//
//

#import "ModuleA_Api_Impl.h"


@implementation ModuleA_Api_Impl
+ (void)load{
    [[AYDispatcher dispatcher] registerInstance:[self new] forProtocol:@protocol(ModuleA_Api)];
}

- (NSString *)A_doHomework{
    NSLog(@"A is doing homework");
    return @"A completed homework";
}
@end
