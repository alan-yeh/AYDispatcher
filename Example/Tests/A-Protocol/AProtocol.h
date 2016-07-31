//
//  AProtocol.h
//  AYDispatcher
//
//  Created by Alan Yeh on 16/7/24.
//  Copyright © 2016年 Alan Yeh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AYDispatcher/AYDispatcher.h>

@protocol AProtocol <NSObject>
- (NSString *)doAHomework;
@end

@interface AYDispatcher (AProtocol) <AProtocol>

@end