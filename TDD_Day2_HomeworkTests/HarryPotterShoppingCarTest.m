//
//  HarryPotterShoppingCarTest.m
//  TDD_Day2_Homework
//
//  Created by 毛俊傑 on 2016/3/16.
//  Copyright © 2016年 mOMo Studio. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCHamcrestIOS/OCHamcrestIOS.h>
#import <OCMockitoIOS/OCMockitoIOS.h>

@interface HarryPotterShoppingCarTest : XCTestCase
{
    NSString* myName;
    NSMutableArray* list;
}
@end

@implementation HarryPotterShoppingCarTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    myName = @"Jack";
    
    list = mock([NSMutableArray class]);
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    XCTAssert([myName isEqualToString:@"Jack"]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
