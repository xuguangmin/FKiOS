//
//  ViewController.m
//  UISwitch
//
//  Created by xgm on 16/3/19.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)backChange:(id)sender
{
    if ([sender isOn] == YES) {
        self.view.backgroundColor = [UIColor whiteColor];
    } else {
        self.view.backgroundColor = [UIColor blackColor];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
