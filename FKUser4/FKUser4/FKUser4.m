//
//  FKUser4.m
//  FKUser4
//
//  Created by xgm on 15/12/15.
//  Copyright © 2015年 xgm. All rights reserved.
//  初始化方法与对象初始化

#import <Foundation/Foundation.h>
#import "FKUser4.h"

@implementation FKUser4
@synthesize name;
@synthesize age;
@synthesize address;
//重写init方法，完成自定义初始化
- (id) init
{
    //调用父类的init方法执行初始化，将初始化得到的对象赋给self对象，
    //如果self不为nil，表明父类init方法初始化成功
    if(self = [super init]) {
        //对该对象的name，age，address赋值
        self.name = @"孙悟空";
        self.age = 69;
        self.address = @"花果山，水帘洞";
    }
    return self;
}
@end