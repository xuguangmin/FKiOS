//
//  ViewController.h
//  UIImageView2
//
//  Created by xgm on 16/3/19.
//  Copyright © 2016年 xgm. All rights reserved.
//  用UIImageView以动画方式显示多张图片，只要为该UIImageView
//  animationImages属性赋一个集合，接下来设置与动画相关的一些属性，
//  再调用UIImageView的startAnimating方法开始播放动画即可

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, strong) IBOutlet UIImageView* iv;

@end

