//
//  ViewController.m
//  CodeView
//
//  Created by xgm on 16/3/13.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//定义一个属性来记录所有动态添加的UILabel控件
@property (nonatomic, strong) NSMutableArray* labels;
@end

@implementation ViewController
//定义一个变量来记录下一个将要添加的UILabel的位置
int nextY = 80;

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置改view的背景色
    self.view.backgroundColor = [UIColor grayColor];
    //初始化labels数组
    self.labels = [NSMutableArray array];
    //创建UIButtonTypeRoundedRect类型的UIButton对象
    UIButton* addBn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //设置addBn的大小和位置
    addBn.frame = CGRectMake(30, 30, 60, 40);
    //为UIButton设置按钮文本
    [addBn setTitle:@"确定" forState:UIControlStateNormal];
    //为addBn的Touch Up Inside事件绑定处理方法
    [addBn addTarget:self action:@selector(add:) forControlEvents:UIControlEventTouchUpInside];
    //创建UIButtonTypeRoundedRect类型的UIButton对象
    UIButton* removeBn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //设置removeBn的大小和位置
    removeBn.frame = CGRectMake(230, 30, 60, 40);
    //为UIButton按钮设置文本
    [removeBn setTitle:@"删除" forState:UIControlStateNormal];
    //为removeBn的Touch Up Inside事件绑定事件处理方法
    [removeBn addTarget:self action:@selector(remove:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:addBn];
    [self.view addSubview:removeBn];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void) add:(id) sender
{
    //创建一个UILabel控件
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(80, nextY, 160, 30)];
    label.text = @"疯狂IOs讲义";
    [self.labels addObject:label];
    [self.view addSubview:label];
    nextY += 50;
}
- (void) remove:(id) sender
{
    //如果labels数组中元素的个数大于0，表明有UILabel可删除
    if([self.labels count] > 0) {
        //将最后一个UILabel从界面删除
        [[self.labels lastObject] removeFromSuperview];
        [self.labels removeLastObject];
        nextY -= 50;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
