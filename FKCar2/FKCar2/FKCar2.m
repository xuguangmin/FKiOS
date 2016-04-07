
//
//  FKCar2.m
//  FKCar2
//
//  Created by xgm on 15/12/15.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKCar2.h"

@implementation FKCar2
@synthesize brand = _brand;
@synthesize model = _model;
@synthesize color = _color;
//重写init方法完成自定义初始化
- (id) init
{
    //调用父类的init方法执行初始化，将初始化得到的对象赋给self
    //如果self不为nil，表明父类的init方法初始化成功
    if(self = [super init]) {
        self.brand = @"奥迪";
        self.model = @"Q5";
        self.color = @"黑色";
    }
    return self;
}
//实现initWithBrand:model
- (id) initWithBrand:(NSString *)brand model:(NSString *)model
{
    if(self = [super init]) {
        self.brand = brand;
        self.model = model;
        self.color = @"黑色";
    }
    return self;
}
//实现initWithBrand:model:color
- (id) initWithBrand:(NSString *)brand model:(NSString *)model color:(NSString *)color
{
    //调用本类的initWithBrand:model方法执行初始化
    if(self = [self initWithBrand:brand model:model]) {
        self.color = color;
    }
    return self;
}
@end