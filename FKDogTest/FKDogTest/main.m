//
//  main.m
//  FKDogTest
//
//  Created by xgm on 15/12/28.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKDog.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKDog* dog1 = [FKDog new];
        dog1.name = [NSMutableString stringWithString:@"旺财"];
        dog1.age = 20;
        FKDog* dog2 = [dog1 copy];
        dog2.name = [NSMutableString stringWithString:@"snocopy"];
        dog2.age = 12;
        NSLog(@"dog1的名字为:%@", dog1.name);
        NSLog(@"dog1的年龄为:%d", dog1.age);
        NSLog(@"dog2的名字为:%@", dog2.name);
        NSLog(@"dog2的年龄为:%d", dog2.age);
        
    }
    return 0;
}
