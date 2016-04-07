//
//  NSDictionary+print.m
//  NSDictionaryTest
//
//  Created by xgm on 16/1/6.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+print.h"

@implementation NSDictionary (print)
- (void) print
{
    NSMutableString* result = [NSMutableString stringWithString:@"{"];
    //使用快速枚举语法来遍历NSDictionary,
    //循环计数器将依次等于该NSDictionary的每个key
    for(id key in self) {
        [result appendString:[key description]];
        [result appendString:@"="];
        [result appendString:[self[key] description]];
        [result appendString:@", "];
    }
    //获取字符串长度
    NSUInteger len = [result length];
    [result deleteCharactersInRange:NSMakeRange(len-2, 2)];
    [result appendString:@"}"];
    NSLog(@"%@", result);
}
@end



