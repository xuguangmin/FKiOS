//
//  ViewController.h
//  UITest4
//
//  Created by xgm on 16/3/8.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextField*  txtField;
}
@property (nonatomic, retain) UITextField* txtField;
- (IBAction) onClickButton:(id)sender;
- (IBAction)onClickButton2:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *loginBn;
- (IBAction)loginBnAction:(UIButton *)sender;

@end

