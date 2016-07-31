//
//  AYDispatcher.m
//  AYDispatcher
//
//  Created by Alan Yeh on 16/7/24.
//
//

#import "AYDispatcher.h"
#import <objc/runtime.h>

@interface AYDispatcher ()
@property (nonatomic, retain)NSMutableDictionary<NSString *, id> *executors;;
@end

@implementation AYDispatcher
- (NSMutableDictionary<NSString *,id> *)executors{
    if (_executors == nil) {
        _executors = [NSMutableDictionary new];
    }
    return _executors;
}

+ (instancetype)dispatcher{
    static AYDispatcher *_dispatcher = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dispatcher = [[AYDispatcher alloc] init];
    });
    return _dispatcher;
}

- (void)registerExecutor:(Class)executor forProtocol:(Protocol *)protocol{
    [self.executors setObject:executor forKey:NSStringFromProtocol(protocol)];
}

- (void)registerClass:(Class)executor forProtocol:(Protocol *)protocol{
    [self registerInstance:executor forProtocol:protocol];
}

- (void)registerInstance:(id)executor forProtocol:(Protocol *)protocol{
    void (^registerExecutor)(BOOL) = ^(BOOL isRequiredMethod){
        unsigned int count;
        struct objc_method_description *methods = protocol_copyMethodDescriptionList(protocol, isRequiredMethod, YES, &count);
        for (unsigned int i = 0; i < count; i ++) {
            NSString *selector = NSStringFromSelector(methods[i].name);
            NSAssert([self.executors objectForKey:selector] == nil, @"Duplicate definition selector: %@", selector);
            [self.executors setObject:executor forKey:selector];
        }
        free(methods);
    };
    
    registerExecutor(YES);
    registerExecutor(NO);
}

- (id)forwardingTargetForSelector:(SEL)aSelector{
    id target = [self.executors objectForKey:NSStringFromSelector(aSelector)];
    
    if (class_isMetaClass(object_getClass(target))) {
        return [target new];
    }else{
        return target;
    }
}

@end
