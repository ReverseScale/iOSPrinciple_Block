//
//  ViewController.m
//  iOSPrinciple_Block
//
//  Created by WhatsXie on 2018/5/7.
//  Copyright © 2018年 WhatsXie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    void (^block)(void) = ^{
        NSLog(@"1");
    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
