//
//  BProtocol.h
//  AYDispatcher
//
//  Created by Alan Yeh on 16/7/24.
//  Copyright © 2016年 Alan Yeh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AYDispatcher/AYDispatcher.h>

@protocol BProtocol <NSObject>
- (NSString *)doBHomework;
@end

@interface AYDispatcher (BProtocol) <BProtocol>

@end