//
//  ViewController.h
//  MultiPickerView
//
//  Created by xgm on 16/4/4.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, strong) IBOutlet UIPickerView* picker;

@end

