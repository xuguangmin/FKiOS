//
//  ViewController.h
//  CustomPicker
//
//  Created by xgm on 16/4/5.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (nonatomic, strong) IBOutlet UIPickerView* picker;
@property (nonatomic, strong) IBOutlet UIImage* image;
@property (nonatomic, strong) IBOutlet UIButton* startBn;

- (IBAction)clicked:(id)sender;

@end

