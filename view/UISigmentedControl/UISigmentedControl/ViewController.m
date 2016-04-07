//
//  ViewController.m
//  UISigmentedControl
//
//  Created by xgm on 16/3/19.
//  Copyright © 2016年 xgm. All rights reserved.
//  通过分段控件控制背景颜色

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction) segmentChanged:(id)sender
{
    //根据UISegmentedControl被选中的索引
    switch ([sender selectedSegmentIndex]) {
        case 0:  //将应用背景设为红色
            self.view.backgroundColor = [UIColor redColor];
            break;
        case 1:  //将应用背景设为绿色
            self.view.backgroundColor = [UIColor greenColor];
            break;
        case 2:  //将应用背景设为蓝色
            self.view.backgroundColor = [UIColor blueColor];
            break;
        case 3:  //将应用背景设为紫色
            self.view.backgroundColor = [UIColor purpleColor];
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
