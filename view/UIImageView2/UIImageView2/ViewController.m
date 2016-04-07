//
//  ViewController.m
//  UIImageView2
//
//  Created by xgm on 16/3/19.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSArray* images;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个NSArray集合，其中集合元素都是UIImage对象
    images = [NSArray arrayWithObjects:
              //[UIImage imageNamed:@"a.jpg"],
              //[UIImage imageNamed:@"b.jpg"],
              //[UIImage imageNamed:@"c.jpg"],
              //[UIImage imageNamed:@"d.jpg"],
              //[UIImage imageNamed:@"e.jpg"],
              [UIImage imageNamed:@"f.jpg"],
              [UIImage imageNamed:@"g.jpg"],
              [UIImage imageNamed:@"h.jpg"],
              [UIImage imageNamed:@"i.jpg"],
              [UIImage imageNamed:@"j.jpg"],
              [UIImage imageNamed:@"k.jpg"],
              [UIImage imageNamed:@"l.jpg"],
              [UIImage imageNamed:@"m.jpg"],
              [UIImage imageNamed:@"n.jpg"],
              nil];
    //设置iv控件需要动画显示的图片为images集合元素
    self.iv.animationImages = images;
    self.iv.animationDuration = 12;  //设置动画持续时间
    self.iv.animationRepeatCount = 999999; //设置动画重复次数
    [self.iv startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
