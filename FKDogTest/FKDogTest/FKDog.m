//
//  FKDog.m
//  FKDogTest
//
//  Created by xgm on 15/12/28.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKDog.h"

@implementation FKDog
@synthesize name;
@synthesize age;
- (id) copyWithZone:(NSZone *)zone
{
    NSLog(@"-- 执行copyWithZone  --");
    //使用zone参数创建FKDog对象
    FKDog* dog = [[[self class] allocWithZone:zone] init];
    dog.name = self.name;
    dog.age = self.age;
    return dog;
}
@end
