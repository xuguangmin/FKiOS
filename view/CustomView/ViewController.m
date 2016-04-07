//
//  FKViewController.m
//  HelloiOS
//
//  Created by xgm on 16/3/6.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@implementation FKViewController

//重写该方法，当该控制器关联的视图加载完成之后系统将会调用该方法
- (void) viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"nib文件加载完成");
}
//重写该方法，当系统内存紧张时将调用该方法
- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    //此处可考虑释放那些以后可重建的资源
}

@end
