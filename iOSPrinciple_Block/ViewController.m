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

    [self blockFunc1];
    [self blockFunc2];
    [self blockFunc3];
    [self blockFunc4];
}

- (void)blockFunc1 {
    int num = 100;
    void (^block)() = ^{
        NSLog(@"num equal %d", num);
    };
    num = 200;
    block();
}
- (void)blockFunc2 {
    __block int num = 100;
    void (^block)() = ^{
        NSLog(@"num equal %d", num);
    };
    num = 200;
    block();
}

// 全局变量
int num = 100;
- (void)blockFunc3 {
    void (^block)() = ^{
        NSLog(@"num equal %d", num);
    };
    num = 200;
    block();
}

- (void)blockFunc4 {
    static int num = 100;
    void (^block)() = ^{
        NSLog(@"num equal %d", num);
    };
    num = 200;
    block();
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
