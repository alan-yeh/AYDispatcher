//
//  ModuleA_Api.h
//  Pods
//
//  Created by PoiSon on 16/8/15.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AYDispatcher/AYDispatcher.h>

@protocol ModuleA_Api <NSObject>
- (NSString *)A_doHomework;
@end

@interface AYDispatcher (ModuleA_Api)<ModuleA_Api>
@end