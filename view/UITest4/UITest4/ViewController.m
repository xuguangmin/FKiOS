//
//  ViewController.m
//  UITest4
//
//  Created by xgm on 16/3/8.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController
@synthesize txtField;
@synthesize loginBn;
- (IBAction)onClickButton:(id)sender
{
    txtField.text = @"bt1";
}
- (IBAction)onClickButton2:(id)sender
{
    txtField.text = @"bt2！";
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"nib文件加载完成");
    //如果程序需要在nib视图文件加载完成后执行某些额外的处理，可在此处编写代码
    //借助ViewWithTag方法即可通过UI控件的Tag属性获取该控件
    UILabel* myLb = (UILabel*) [self.view viewWithTag:12];
    //设置myLb的文本内容
    [myLb setText:@"欢迎学习IOS开发"];
    //直接通过IBOutLet属性来访问第一个UILabel控件
    [self.txtField setText:@"IOS真有趣"];
    // Do any additional setup after loading the view, typically from a nib.
    //手动为控件绑定事件
    [self.loginBn addTarget:self action:@selector(loginBnAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) dealloc
{
}
- (IBAction)loginBnAction:(UIButton *)sender
{
    //txtField.text = @"bt3";
    [self.txtField setText:@"通过代码绑定事件处理方法"];
}
@end
