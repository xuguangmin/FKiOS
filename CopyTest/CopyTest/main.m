//
//  main.m
//  CopyTest
//
//  Created by xgm on 15/12/27.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString* book = [NSMutableString
                                 stringWithString:@"疯狂IOS讲义"];
        //复制book字符串的可变副本
        NSMutableString* bookcopy = [book mutableCopy];
        //修改副本，对原字符串没有任何影响
        [bookcopy replaceCharactersInRange:NSMakeRange(2, 3) withString:@"Android"];
        //此处看到原字符串的值并没有改变
        NSLog(@"book 的值为:%@", book);
        //字符串副本发生了改变
        NSLog(@"bookcopy的值为:%@", bookcopy);
        NSString* str = @"fkit";
        //复制str的可变副本
        NSMutableString* strcopy = [str mutableCopy];
        //向可变字符串后面追加字符
        [strcopy appendString:@".org"];
        NSLog(@"%@", strcopy);
        
    }
    return 0;
}
