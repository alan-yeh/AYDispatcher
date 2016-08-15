//
//  ModuleB_Api.h
//  Pods
//
//  Created by PoiSon on 16/8/15.
//
//

#import <Foundation/Foundation.h>
#import <AYDispatcher/AYDispatcher.h>

@protocol ModuleB_Api <NSObject>
- (NSString *)B_doHomework;
@end

@interface AYDispatcher (ModuleA_Api)<ModuleB_Api>
@end
