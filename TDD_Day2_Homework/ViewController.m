//
//  ViewController.m
//  TDD_Day2_Homework
//
//  Created by newegg on 2016/3/14.
//  Copyright © 2016年 mOMo Studio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray* arr = [[NSArray alloc] initWithObjects:@"A", @"B", @"C", nil];
    NSArray* arr2 = [[NSArray alloc] initWithObjects:@"A", nil];
    
    NSArray *newArray=[arr arrayByAddingObjectsFromArray:arr2];

    NSLog(@"888- %@", newArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
