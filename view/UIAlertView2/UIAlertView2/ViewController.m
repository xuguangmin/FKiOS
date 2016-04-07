//
//  ViewController.m
//  UIAlertView2
//
//  Created by xgm on 16/4/3.
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
- (IBAction)clicked:(id)sender
{
    UIAlertView* alert = [[UIAlertView alloc]
                          initWithTitle:@"登陆"
                          message:@"请输入用户名和密码登录系统"
                          delegate:self
                          cancelButtonTitle:@"取消"
                          otherButtonTitles:@"确定", nil];
    //设置该警告框显示输入用户名和密码的输入框
    alert.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    //设置第2个文本框关联的键盘知识数字键盘
    [alert textFieldAtIndex:1].keyboardType=UIKeyboardTypeNumberPad;
    [alert show];
}

- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    //如果用户单击了第一个按钮
    if(buttonIndex == 1) {
        //获取UIAlertView中第1个输入框
        UITextField* nameField = [alertView textFieldAtIndex:0];
        //获取UIAlertView中第2个输入框
        UITextField* passField = [alertView textFieldAtIndex:1];
        //显示用户输入的用户名和密码
        NSString* msg = [NSString stringWithFormat:@"您输入的用户名为:%@,密码为:%@", nameField.text, passField.text];
        UIAlertView* alert = [[UIAlertView alloc]
                              initWithTitle:@"提示"
                              message:msg
                              delegate:nil
                              cancelButtonTitle:@"确定"
                              otherButtonTitles:nil];
        [alert show];
    }
}

//当警告框将要显示出来时激发该方法
- (void) willPresentAlertView:(UIAlertView *)alertView
{
    //遍历UIAlertView包含的全部子控件
    for(UIView* view in alertView.subviews) {
        //如果该子控件是UILabel控件
        if([view isKindOfClass:[UILabel class]]){
            UILabel* label = (UILabel*)view ;
            //将UILabel的文字对齐方式设置为左对齐
            label.textAlignment = UITextAlignmentLeft;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
