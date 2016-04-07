//
//  NSNumber+fk.m
//  NSNumberfk
//
//  Created by xgm on 15/12/19.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSNumber+fk.h"

@implementation NSNumber (fk)
- (NSNumber*) add:(double)num2
{
    return [NSNumber numberWithDouble:([self doubleValue] + num2)];
}
- (NSNumber*) substract:(double)num2
{
    return [NSNumber numberWithDouble:([self doubleValue] - num2)];
}
- (NSNumber*) multiply:(double)num2
{
    return [NSNumber numberWithDouble:([self doubleValue] * num2)];
}
- (NSNumber*) divide:(double)num2
{
    return [NSNumber numberWithDouble:([self doubleValue] / num2)];
}
@end