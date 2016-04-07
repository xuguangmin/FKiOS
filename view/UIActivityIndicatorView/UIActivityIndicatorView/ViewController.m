//
//  ViewController.m
//  UIActivityIndicatorView
//
//  Created by xgm on 16/3/20.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize indicators;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction) start:(id)sender
{
    //控制4个进度环开始转动
    for (int i = 0; i < self.indicators.count; i++) {
        [[self.indicators objectAtIndex:i] startAnimating];
    }
}

- (IBAction)stop:(id)sender
{
    //停止4个进度环的转动
    for (int i = 0; i < self.indicators.count; i++) {
        [[self.indicators objectAtIndex:i] stopAnimating];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
