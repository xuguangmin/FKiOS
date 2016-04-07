//
//  FKAppDelegate.h
//  HelloiOS
//
//  Created by xgm on 16/3/5.
//  Copyright © 2016年 xgm. All rights reserved.
//

#ifndef FKAppDelegate_h
#define FKAppDelegate_h

#import <UIKit/UIKit.h>

@class FKViewController;

@interface FKAppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow* window;
@property (strong, nonatomic) FKViewController* viewController;
@end

#endif /* FKAppDelegate_h */
