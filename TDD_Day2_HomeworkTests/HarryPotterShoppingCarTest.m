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
#import "HarryPotterShoppingCar.h"

@interface HarryPotterShoppingCarTest : XCTestCase
{
    HarryPotterShoppingCar* sut;
    NSMutableArray *payItems;
}
@end

@implementation HarryPotterShoppingCarTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    sut = [HarryPotterShoppingCar new];
    payItems = [NSMutableArray new];
    
    //第一集貨品編號 = BOOK01
    //第二集貨品編號 = BOOK02
    //第三集貨品編號 = BOOK03
    //第四集貨品編號 = BOOK04
    //第五集貨品編號 = BOOK05
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    
    sut = nil;
    payItems = nil;
}

- (void)test_第一集買了一本其他都沒買價格應為100乘1等於100元 {
    //given
    [payItems addObject:@"BOOK01"];
    
    //when
    int price = [sut checkoutWithPayItems:payItems];
    
    //then
    assertThatInt(price, equalToInt(100));
}

- (void)test_第一集買了一本第二集也買了一本價格應為100乘2打95折等於190 {
    //given
    [payItems addObject:@"BOOK01"];
    [payItems addObject:@"BOOK02"];
    
    //when
    int price = [sut checkoutWithPayItems:payItems];
    
    //then
    assertThatInt(price, equalToInt(190));
}

- (void)test_一二三集各買了一本價格應為100乘3打九折等於270 {
    //given
    [payItems addObject:@"BOOK01"];
    [payItems addObject:@"BOOK02"];
    [payItems addObject:@"BOOK03"];
    
    //when
    int price = [sut checkoutWithPayItems:payItems];
    
    //then
    assertThatInt(price, equalToInt(270));
}

- (void)test_一二三四集各買了一本價格應為100乘4打八折等於320 {
    //given
    [payItems addObject:@"BOOK01"];
    [payItems addObject:@"BOOK02"];
    [payItems addObject:@"BOOK03"];
    [payItems addObject:@"BOOK04"];
    
    //when
    int price = [sut checkoutWithPayItems:payItems];
    
    //then
    assertThatInt(price, equalToInt(320));
}

- (void)test_一次買了整套一二三四五集各買了一本價格應為100乘5打75折等於375 {
    //given
    [payItems addObject:@"BOOK01"];
    [payItems addObject:@"BOOK02"];
    [payItems addObject:@"BOOK03"];
    [payItems addObject:@"BOOK04"];
    [payItems addObject:@"BOOK05"];
    
    //when
    int price = [sut checkoutWithPayItems:payItems];
    
    //then
    assertThatInt(price, equalToInt(375));
}

- (void)test_一二集各買了一本第三集買了兩本價格應為100乘3打9折加上100等於370 {
    //given
    //when
    //then
}

- (void)test_第一集買了一本第二三集各買了兩本價格應為100乘3打9折加上100乘2打95折等於460 {
    //given
    //when
    //then
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
