//
//  ViewController.h
//  CountDown
//
//  Created by xgm on 16/4/3.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIDatePicker* countDown;
@property (nonatomic, strong) IBOutlet UIButton* startBn;

- (IBAction)clicked:(id)sender;


@end

