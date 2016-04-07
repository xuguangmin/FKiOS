//
//  ViewController.h
//  UIImageView
//
//  Created by xgm on 16/3/19.
//  Copyright © 2016年 xgm. All rights reserved.
//  图像控件

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, strong) IBOutlet UIImageView* iv1;
@property (nonatomic, strong) IBOutlet UIImageView* iv2;

- (IBAction) plus:(id)sender;
- (IBAction)minus:(id)sender;
- (IBAction)next:(id)sender;
@end

