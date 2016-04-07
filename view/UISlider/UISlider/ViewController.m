//
//  ViewController.m
//  UISlider
//
//  Created by xgm on 16/3/20.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize iv;
@synthesize slider;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //创建可拉伸图片，指定对heart.gif图片整体进行平铺
    UIImage* minImage = [[UIImage imageNamed:@"heart.gif"] resizableImageWithCapInsets:UIEdgeInsetsZero resizingMode:UIImageResizingModeTile];
    //创建可拉伸图片，指定对grow.gif图片进行整体平铺
    UIImage* maxImage = [[UIImage imageNamed:@"grow.gif"] resizableImageWithCapInsets:UIEdgeInsetsZero resizingMode:UIImageResizingModeTile];
    
    //设置滚动条已完成部分的轨道图片
    [self.slider setMinimumTrackImage:minImage forState:UIControlStateNormal];
    //设置滚动条未完成部分的图片
    [self.slider setMaximumTrackImage:maxImage forState:UIControlStateNormal];
    //设置滚动条滑块的图片
    [self.slider setThumbImage:[UIImage imageNamed:@"ic_launcher.png"] forState:UIControlStateNormal];
    
}
- (IBAction)changed:(UISlider*)sender
{
    //根据滚动条的值改变iv空间的透明度
    [self.iv setAlpha:1.0 - sender.value];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
