//
//  AYDispatcher.h
//  AYDispatcher
//
//  Created by Alan Yeh on 16/7/24.
//
//

#import <UIKit/UIKit.h>

@interface AYDispatcher : NSObject
+ (instancetype)dispatcher;

- (void)registerClass:(Class)executor forProtocol:(Protocol *)protocol;
- (void)registerInstance:(id)executor forProtocol:(Protocol *)protocol;
@end
