//
//  ModuleB_Api_Impl.m
//  Pods
//
//  Created by PoiSon on 16/8/15.
//
//

#import "ModuleB_Api_Impl.h"

@implementation ModuleB_Api_Impl
+ (void)load{
    [[AYDispatcher dispatcher] registerInstance:[self new] forProtocol:@protocol(ModuleB_Api)];
}

- (NSString *)B_doHomework{
    NSLog(@"B is doing homework");
    return @"B completed homework";
}
@end
