//
//  ViewController.m
//  UIActionSheet
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
    //创建一个UIActionSheet
    UIActionSheet* sheet = [[UIActionSheet alloc]
                            initWithTitle:@"请确认是否删除"
                            delegate:self
                            cancelButtonTitle:@"取消"
                            destructiveButtonTitle:@"确定"
                            otherButtonTitles:@"按钮1", @"按钮二", nil];
    //设置UIActionSheet风格
    sheet.actionSheetStyle = UIActionSheetStyleAutomatic;
    [sheet showInView:self.view];
}
- (void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    //使用UIAlertViewf来显示用户单击了第几个按钮
    UIAlertView* alert = [[UIAlertView alloc]
                          initWithTitle:@"提示"
                          message:[NSString stringWithFormat:@"您单击了第%d个按钮", buttonIndex]
                          delegate:nil
                          cancelButtonTitle:@"确定f"
                          otherButtonTitles:nil];
    [alert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
