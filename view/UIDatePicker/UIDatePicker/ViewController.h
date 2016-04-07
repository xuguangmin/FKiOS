//
//  ViewController.h
//  UIDatePicker
//
//  Created by xgm on 16/4/3.
//  Copyright © 2016年 xgm. All rights reserved.
//  日期选择器

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIDatePicker* datePicker;

- (IBAction) clicked:(id)sender;
- (IBAction)datePicker:(id)sender;

@end

