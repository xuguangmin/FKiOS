//
//  ViewController.h
//  UIPickerViewMulCol
//
//  Created by xgm on 16/4/4.
//  Copyright © 2016年 xgm. All rights reserved.
//  多列选择器

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (nonatomic, strong) IBOutlet UIPickerView* picker;

@end

