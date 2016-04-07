//
//  ViewController.m
//  UITextView3
//
//  Created by xgm on 16/3/18.
//  Copyright © 2016年 xgm. All rights reserved.
//  自定义选择内容后的菜单

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textField;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建两个菜单项
    UIMenuItem* mailShare = [[UIMenuItem alloc] initWithTitle:@"邮件分享" action:@selector(mailShare:)];
    UIMenuItem* weiboShare = [[UIMenuItem alloc] initWithTitle:@"微博分享" action:@selector(weiboShare:)];
    //创建UIMenuController控制器
    UIMenuController* menu = [UIMenuController sharedMenuController];
    //为UIMenuController控制器添加两个菜单项
    [menu setMenuItems:[NSArray arrayWithObjects:mailShare, weiboShare, nil]];
    // Do any additional setup after loading the view, typically from a nib.
}
//重写UIResponder的canPerformAction: withSender:方法
//当该方法返回YES时，该界面将会显示改Action对应的控件
- (BOOL) canPerformAction:(SEL)action withSender:(id)sender
{
    //如果Action是mailShare:或weiboShare:方法
    if(action == @selector(mailShare:) || action == @selector(weiboShare:)) {
        //如果textView选中的长度大于0，返回yes
        if(self.textField.selectedRange.length > 0) {
            return YES;
        }
    }
    return NO;
}
- (void) mailShare:(id) sender
{
    NSLog(@"模拟通过邮件分享!");
}
- (void) weiboShare: (id) sender
{
    NSLog(@"模拟通过微博分享！");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
