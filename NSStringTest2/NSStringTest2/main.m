//
//  main.m
//  NSStringTest2
//
//  Created by xgm on 15/12/23.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* str = @"Hello";
        NSString* book = @"<<疯狂IOS讲义>>";
        //在str后面追加固定的字符串
        //原来的字符串对象不变，只是将新生成的字符串对象重新赋给str指针变量
        str = [str stringByAppendingString:@", IOS"];
        NSLog(@"%@", str);
        //获取字符串对应的C风格字符串
        const char* cstr = [str UTF8String];
        NSLog(@"获取后的C字符串: %s", cstr);
        //在str后追加带变量的字符串
        //原来的字符串对象并不改变，只是将新生成的字符串重新赋给变量
        str = [str stringByAppendingFormat:@"%@是一本非常不错的书", book];
        NSLog(@"%@", str);
        NSLog(@"str字符的个数为:%lu", [str length]);
        NSLog(@"str按UTF－8字符解码后的字节为:%lu", [str lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
        //获取str的前10个字符组成的字符串
        NSString* s1 = [str substringToIndex:10];
        NSLog(@"%@", s1);
        //获取str从第5个字符开始和后面的字符组成的字符串
        NSString* s2 = [str substringFromIndex:5];
        NSLog(@"%@", s2);
        //获取从第5个字符开始到第15个字符组成的字符串
        NSString* s3 = [str substringWithRange:(NSMakeRange(5, 15)) ];
        NSLog(@"%@", s3);
        NSRange pos = [str rangeOfString:@"IOS"];
        NSLog(@"IOS在str中出现的开始位置:%ld, 长度为:%ld", pos.location, pos.length);
        //将str的所有字符转化为大些
        NSLog(@"%@", [str uppercaseString]);
    }
    return 0;
}
