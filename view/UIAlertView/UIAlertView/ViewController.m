//
//  ViewController.m
//  UIAlertView
//
//  Created by xgm on 16/4/1.
//  Copyright © 2016年 xgm. All rights reserved.
//  UIAlertView的基本用法

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}
- (IBAction)clicked:(id)sender {
    // 创建UIAlertView控件
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"提示" // 指定标题
                          message:@"警告框用法真的很简单！"  // 指定消息
                          delegate:self // 指定委托对象
                          cancelButtonTitle:@"确定" // 为底部的取消按钮设置标题
                          // 另外设置3个按钮
                          otherButtonTitles:@"按钮一",@"按钮二",@"按钮三",nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString* msg = [NSString stringWithFormat:@"您点击了第%d个按钮"
                     , buttonIndex];
    // 创建UIAlertView控件
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"提示" // 指定标题
                          message:msg  // 指定消息
                          delegate:nil
                          cancelButtonTitle:@"确定" // 为底部的取消按钮设置标题
                          // 不设置其他按钮
                          otherButtonTitles:nil];
    [alert show];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
