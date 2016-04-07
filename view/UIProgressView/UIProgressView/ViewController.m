//
//  ViewController.m
//  UIProgressView
//
//  Created by xgm on 16/3/20.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize prog1;
@synthesize prog2;
@synthesize prog3;

NSTimer *timer;
//定义一个变量，记录当前的进度值
CGFloat progVal;

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建可拉伸图片，指定对no.gif图片整体进行平铺
    UIImage* trackImage = [[UIImage imageNamed:@"no.gif"] resizableImageWithCapInsets:UIEdgeInsetsZero resizingMode:UIImageResizingModeTile];
    //创建可拉伸图片，指定对ok.gif图片整体进行平铺
    UIImage* progressImage = [[UIImage imageNamed:@"ok.gif"] resizableImageWithCapInsets:UIEdgeInsetsZero resizingMode:UIImageResizingModeTile];
    //自定义第三个进度条的外观
    self.prog3.trackImage = trackImage;
    self.prog3.progressImage = progressImage;
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)clicked:(id)sender
{
    progVal = 0;
    //启动定时器，控制每隔0.2s调用一次changeProgress方法
    timer = [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(changeProgress) userInfo:nil repeats:YES];
}

- (void) changeProgress
{
    //进度值增加0.01
    progVal += 0.01;
    if (progVal >= 1.0) {
        //停用计时器
        [timer invalidate];
    } else {
        //同时改变三个进度条的进度值
        [self.prog1 setProgress:progVal animated:YES];
        [self.prog2 setProgress:progVal animated:YES];
        [self.prog3 setProgress:progVal animated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
