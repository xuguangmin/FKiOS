//
//  ViewController.m
//  UISegmentControl
//
//  Created by xgm on 16/3/19.
//  Copyright © 2016年 xgm. All rights reserved.
//  动态增加、删除分段

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)add:(id)sender
{
    NSUInteger count = self.segment.numberOfSegments;
    //获取该文本框内输入的字符串
    NSString* title = self.tv.text;
    //如果用户输入的字符串长度大于0
    if ([title length] > 0) {
        //以用户输入的内容插入一个分段
        [self.segment insertSegmentWithTitle:title atIndex:count animated:YES];
        //清空文本框内容
        self.tv.text = @"";
    }
}
- (IBAction)remove:(id)sender
{
    NSUInteger count = self.segment.numberOfSegments;
    //删除UISegmentControl控件最后一个分段
    [self.segment removeSegmentAtIndex:count-1 animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
