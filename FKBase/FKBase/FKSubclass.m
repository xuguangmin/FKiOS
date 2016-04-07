//
//  FKSubclass.m
//  FKBase
//
//  Created by xgm on 15/12/16.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKSubclass.h"

@implementation FKSubclass
- (void) test
{
    NSLog(@"子类覆盖父类的test方法");
}
- (void) sub
{
    NSLog(@"子类的sub方法");
}
@end