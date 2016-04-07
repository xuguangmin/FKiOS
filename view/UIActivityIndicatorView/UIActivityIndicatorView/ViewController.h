//
//  ViewController.h
//  UIActivityIndicatorView
//
//  Created by xgm on 16/3/20.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, strong) IBOutletCollection(UIActivityIndicatorView) NSArray* indicators;
- (IBAction) start:(id)sender;
- (IBAction)stop:(id)sender;

@end

