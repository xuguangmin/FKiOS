//
//  main.m
//  FKMyException
//
//  Created by xgm on 15/12/21.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKMyException.h"
#import "FKDog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKDog* dog = [[FKDog alloc]init];
        dog.age = 20;
        NSLog(@"狗的年龄为%d", dog.age);
        dog.age = 80;
    
    }
    return 0;
}
