//
//  main.m
//  NSStringTest
//
//  Created by xgm on 15/12/23.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unichar data[6] = {97, 98, 99, 100, 101, 102};
        //使用unicode数值数组初始化字符串
        NSString * str = [[NSString alloc]
                          initWithCharacters:data length:6];
        NSLog(@"%@", str);
        char* cstr = "Hello, IOS";
        //将C风格的字符串转换为NSString对象
        NSString* str2 = [NSString stringWithUTF8String:cstr];
        NSLog(@"%@", str2);
        [str2 writeToFile:@"myFile.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
        //读取文件内容，用文件内容初始化字符串
        NSString* str3 = [NSString  stringWithContentsOfFile:@"myFile.txt" encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@", str3);
    }
    return 0;
}
