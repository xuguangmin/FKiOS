//
//  main.m
//  NSKeyedUnarchiverTest
//
//  Created by xgm on 16/3/2.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //  从mydict.archiver文件中恢复对象
        NSDictionary* dict = [NSKeyedUnarchiver unarchiveObjectWithFile:@"mydict.archiver"];
        //下面代码只是获取NSDictionary中的key-value数据
        NSLog(@"Object-C对应的value：%@", [dict valueForKey:@"Object-C"]);
        NSLog(@"Ruby对应的value:%@", [dict valueForKey:@"Ruby"]);
        NSLog(@"Hello, World!");
    }
    return 0;
}
