//
//  main.m
//  NSData
//
//  Created by xgm on 16/3/1.
//  Copyright © 2016年 xgm. All rights reserved.
//  NSData

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 使用NSData读取制定URL对应的数据
        NSData* data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"www.baidu.com"]];
        NSLog(@"%ld", [data length]);
        //定义一个长度100的数组
        char buffer[100];
        //将NSData制定范围的数据读入数组
        [data getBytes:buffer range:NSMakeRange(103, 100)];
        //输出数组的内容
        NSLog(@"%s", buffer);
        //直接讲NSData的数据用UTF－8的格式转换字符串
        NSString* content = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"----输出网页内容---");
        NSLog(@"%@", content);
    }
    return 0;
}
