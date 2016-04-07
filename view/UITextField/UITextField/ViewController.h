//
//  ViewController.h
//  UITextField
//
//  Created by xgm on 16/3/15.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UITextField* passField;
    UITextField* nameField;
}

@property (nonatomic, retain) IBOutlet UITextField* passField;
@property (nonatomic, retain) IBOutlet UITextField* nameField;
@end

