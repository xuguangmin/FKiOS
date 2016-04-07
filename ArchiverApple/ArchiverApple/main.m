//
//  main.m
//  ArchiverApple
//
//  Created by xgm on 16/3/2.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKApple.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //  创建FKApple对象
        FKApple* apple = [[FKApple alloc] initWithColor:@"红色" weight:3.4 size:20];
        //对apple对象进行归档
        [NSKeyedArchiver archiveRootObject:apple toFile:@"apple.archive"];
        
        // 从归档文件中恢复对象
        FKApple* apple2 = [NSKeyedUnarchiver unarchiveObjectWithFile:@"apple.archive"];
        //获取对象的属性
        NSLog(@"苹果的颜色为:%@", apple2.color);
        NSLog(@"苹果的重量为:%g", apple2.weight);
        NSLog(@"苹果的大小为:%d", apple2.size);
        NSLog(@"Hello, World!");
    }
    return 0;
}
