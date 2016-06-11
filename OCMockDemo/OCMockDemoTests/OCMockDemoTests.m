//
//  OCMockDemoTests.m
//  OCMockDemoTests
//
//  Created by alezai on 16/6/7.
//  Copyright © 2016年 alezai. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "MikuHelper.h"
#import "Miku.h"

@interface OCMockDemoTests : XCTestCase

@end

@implementation OCMockDemoTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMikuSing {
    // given
    id mikuHelperMock = OCMClassMock([MikuHelper class]);
    OCMStub([mikuHelperMock shareInstance]).andReturn(mikuHelperMock);
    OCMStub([mikuHelperMock fetchSongByInternet:([OCMArg invokeBlockWithArgs:@"Tell Your World", nil])]);
    Miku *miku = [Miku new];
    miku.helper = mikuHelperMock;
    id mikuMock = OCMPartialMock(miku);
    // when
    [miku sing];
    // then
    XCTAssertTrue(miku.singing);
    OCMVerify([mikuMock dance]);
}

@end
