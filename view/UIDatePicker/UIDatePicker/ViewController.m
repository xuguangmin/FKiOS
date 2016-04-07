//
//  ViewController.m
//  UIDatePicker
//
//  Created by xgm on 16/4/3.
//  Copyright © 2016年 xgm. All rights reserved.
//  日期选择器

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize datePicker;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)clicked:(id)sender
{
    //获取用户UIDatePicker设置的日期时间
    NSDate* selected = [self.datePicker date];
    //创建一个日期格式器
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    //为日期格式器设置格式字符串
    [dateFormatter setDateFormat:@"yyyy年MM月dd日 HH:mm +0800"];
    //使用日期格式器格式化日期，时间
    NSString* destDateString = [dateFormatter stringFromDate:selected];
    NSString* message = [NSString stringWithFormat:@"您选择的日期和时间是:%@", destDateString];
    //创建一个UIAlertView对象，并通过警告框显示用户选择的日期，时间
    UIAlertView* alert = [[UIAlertView alloc]
                          initWithTitle:@"日期和时间"
                          message:message
                          delegate:nil
                          cancelButtonTitle:@"确定"
                          otherButtonTitles:nil];
    [alert show];
}

- (IBAction)datePicker:(id)sender
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
