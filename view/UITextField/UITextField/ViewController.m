//
//  ViewController.m
//  UITextField
//
//  Created by xgm on 16/3/15.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize passField;
@synthesize nameField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)finashEdit:(id)sender
{
    [sender resignFirstResponder];
}
- (IBAction)backTap:(id)sender
{
    //让pass控件放弃第一响应者
    [self.passField resignFirstResponder];
    //让name控件放弃第一响应者
    [self.nameField resignFirstResponder];
}


@end
