//
//  ViewController.m
//  UITextView2
//
//  Created by xgm on 16/3/16.
//  Copyright © 2016年 xgm. All rights reserved.
//  自定义键盘的附件关闭虚拟键盘

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textView;


- (void)viewDidLoad {
    [super viewDidLoad];
    //创建一个UIToolBar工具条
    UIToolbar* topView = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 30)];
    //设置工具条风格
    [topView setBarStyle:UIBarStyleDefault];
    
    //为工具条创建第一个按钮
    UIBarButtonItem* myBn = [[UIBarButtonItem alloc] initWithTitle:@"无动作" style:UIBarButtonItemStylePlain target:self action:nil];
    
    //为工具条创建第二个按钮,该按钮知识一片可伸缩的空白区
    UIBarButtonItem* spaceBn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    UIBarButtonItem* spaceBn2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    //为工具条创建第三个按钮，单击该按钮会激发editFinash方法
    UIBarButtonItem* doneBn = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStyleDone target:self action:@selector(editFinash)];
    
    UIBarButtonItem* testBn = [[UIBarButtonItem alloc] initWithTitle:@"test" style:UIBarButtonItemStyleDone target:self action:@selector(editFinash)];
    
    //以以上3个按钮创建NSArray集合
    NSArray* buttonsArray = [NSArray arrayWithObjects:myBn, spaceBn, testBn, spaceBn2, doneBn, nil];
    //为UIToolBar设置按钮
    [topView setItems:buttonsArray];
    // 为textView关联的虚拟键盘设置附件
    [self.textView setInputAccessoryView:topView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) editFinash
{
    [self.textView resignFirstResponder];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
