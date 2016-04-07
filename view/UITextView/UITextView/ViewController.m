//
//  ViewController.m
//  UITextView
//
//  Created by xgm on 16/3/16.
//  Copyright © 2016年 xgm. All rights reserved.
//  通过导航条关闭UITextView的虚拟键盘

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UINavigationItem* navItem;
@end

@implementation ViewController
@synthesize textView;
UIBarButtonItem* done;

- (void)viewDidLoad {
    [super viewDidLoad];
    //将该控制器本身设置为textView空间的委托对象
    self.textView.delegate = self;
    //创建并添加导航条
    UINavigationBar* navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 20, 320, 44)];
    [self.view addSubview:navBar];
    //创建导航项，并设置导航项的标题
    self.navItem = [[UINavigationItem alloc] initWithTitle:@"导航条"];
    //将导航项添加到导航条中
    navBar.items = [NSArray arrayWithObject:self.navItem];
    //创建一个UIBarButtonItem对象，并赋给done属性
    done = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(finashEdit)];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void) finashEdit
{
    [self.textView resignFirstResponder];
}
- (void) textViewDidBeginEditing:(UITextView *)textView
{
    self.navItem.rightBarButtonItem = done;
}
- (void) textViewDidEndEditing:(UITextView *)textView
{
    //为导航条设置右边的按钮
    self.navItem.rightBarButtonItem = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
