//
//  HarryPotterShoppingCar.m
//  TDD_Day2_Homework
//
//  Created by 毛俊傑 on 2016/3/16.
//  Copyright © 2016年 mOMo Studio. All rights reserved.
//

#import "HarryPotterShoppingCar.h"
#import "LinqToObjectiveC.h"

@implementation HarryPotterShoppingCar

- (int)checkoutWithPayItems:(NSMutableArray*) items
{
    //只有一筆，直接回傳原本價格
    if (items.count == 1) return 100;
    
    NSArray* uniqueItems = [items linq_distinct];
    
    double total = (uniqueItems.count * 100) * [self getDiscountWithCount:uniqueItems.count];
    
    return total;
}

- (double)getDiscountWithCount : (int) cnt
{
    switch (cnt)
    {
        case 2:
            return 0.95;
            break;
        case 3:
            return 0.9;
            break;
        case 4:
            return 0.8;
            break;
        case 5:
            return 0.75;
            break;
        default:
            return 1;
            break;
    }
}

@end
