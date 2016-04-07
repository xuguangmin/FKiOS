//
//  ViewController.m
//  CountDown
//
//  Created by xgm on 16/4/3.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize countDown;
@synthesize startBn;

NSTimer* timer;
NSInteger leftSecond;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //设置使用Count Down Timer模式
    self.countDown.datePickerMode = UIDatePickerModeCountDownTimer;
}

- (IBAction)clicked:(id)sender
{
    //获取该倒计时器的剩余时间
    leftSecond = self.countDown.countDownDuration;
    //禁用UIDatePicker控件和按钮
    self.countDown.enabled = NO;
    [sender setEnabled:NO];
    //初始化一个字符串
    NSString* message = [NSString stringWithFormat:@"开始倒计时？您还剩下［%d］秒", leftSecond];
    //创建一个UIAlertview
    UIAlertView* alert = [[UIAlertView alloc]
                          initWithTitle:@"开始倒计时"
                          message:message
                          delegate:nil
                          cancelButtonTitle:@"确定"
                          otherButtonTitles:nil];
    [alert show];
    //启用定时器，控制每隔60s执行一次tickDown方法
    timer = [NSTimer scheduledTimerWithTimeInterval:60 target:self selector:@selector(tickDown) userInfo:nil repeats:YES];
}
- (void) tickDown
{
    leftSecond -= 60;
    self.countDown.countDownDuration = leftSecond;
    if(leftSecond <= 0) {
        //取消定时器
        [timer invalidate];
        //启用UIDatePicker控件和按钮
        self.countDown.enabled = YES;
        self.startBn.enabled = YES;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
