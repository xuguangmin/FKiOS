//
//  FKCar4.m
//  FKCar4
//
//  Created by xgm on 15/12/19.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKCar4+drive.h"

@implementation FKCar4
@synthesize brand;
@synthesize color;
@synthesize model;
- (void) drive
{
    NSLog(@"%@汽车正在路上奔驰", self);
}
- (void) drive:(NSString*) owner
{
    NSLog(@"%@正在驾驶%@汽车在路上奔驰", owner, self);
}
- (NSString*) description
{
    return [NSString stringWithFormat:@"<FK[brand=%@,model=%@,color=%@]>", self.brand, self.model, self.color];
}
@end