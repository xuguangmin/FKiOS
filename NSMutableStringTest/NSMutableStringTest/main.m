//
//  main.m
//  NSMutableStringTest
//
//  Created by xgm on 15/12/24.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* book = @"<<疯狂IOS讲义>>";
        //创建一个NSMutableString对象
        NSMutableString* str = [NSMutableString stringWithString:@"Hello"];
        //追加固定字符串
        //字符串所包含的字符序列本身发生了改变，因此无需重新赋值
        [str appendString:@", IOS"];
        NSLog(@"%@", str);
        //追加带变量的字符串
        [str appendFormat:@"%@是i 本不错的书", book];
        NSLog(@"%@", str);
        //在制定位置插入字符串
        [str insertString:@"fkit.org" atIndex:6];
        NSLog(@"%@", str);
        [str deleteCharactersInRange:NSMakeRange(6, 12)];
        NSLog(@"%@", str);
        
    }
    return 0;
}
