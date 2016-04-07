//
//  FKDog.m
//  FKMyException
//
//  Created by xgm on 15/12/21.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKDog.h"
#import "FKMyException.h"

@implementation FKDog
@synthesize age = _age;
- (void) setAge:(int)age
{
    if(self.age != age) {
        //检查年龄是否在0-50岁之间
        if(age > 50 || age < 0) {
            //手动抛出异常
            @throw [[FKMyException alloc] initWithName:@"IllegeArguementException" reason:@"狗的年龄必须在0-50岁之间" userInfo:nil];
        }
        _age = age;
    }
}
@end
