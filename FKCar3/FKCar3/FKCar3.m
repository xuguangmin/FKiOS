//
//  FKCar3.m
//  FKCar3
//
//  Created by xgm on 15/12/19.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKCar3.h"

@implementation FKItem
@synthesize price;
- (void) info
{
    NSLog(@"这是一个普通的方法");
}
//额外新增的方法
- (double) callDiscount: (double) discount
{
    return self.price * discount;
}
@end