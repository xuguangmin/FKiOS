//
//  main.m
//  StringCompareTest
//
//  Created by xgm on 15/12/17.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* str1 = @"疯狂ios";
        NSString* str2 = @"疯狂ios";
        NSLog(@"s1:%p, s2:%p", str1, str2);
        NSLog(@"s1和s2是否相等?:%d", (str1==str2));
        NSString* str3 = [NSString stringWithFormat:@"疯狂ios"];
        NSLog(@"s3:%p", str3);
        NSLog(@"s1和s3是否相等?:%d", (str3 == str1));
        NSLog(@"Hello, World!");
    }
    return 0;
}
