//
//  AYDispatcherTests.m
//  AYDispatcherTests
//
//  Created by Alan Yeh on 07/24/2016.
//  Copyright (c) 2016 Alan Yeh. All rights reserved.
//

@import XCTest;
#import <Api/ModuleA_Api.h>
#import <Api/ModuleB_Api.h>

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCallAModule{
    NSString *result = [[AYDispatcher dispatcher] A_doHomework];
    XCTAssert([result isEqualToString:@"A completed homework"]);
}

- (void)testCallBModule{
    NSString *result = [[AYDispatcher dispatcher] B_doHomework];
    XCTAssert([result isEqualToString:@"B completed homework"]);
}

@end

