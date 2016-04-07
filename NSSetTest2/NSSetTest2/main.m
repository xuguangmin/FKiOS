//
//  main.m
//  NSSetTest2
//
//  Created by xgm on 16/1/6.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"
//定义一个函数，该函数可以把NSArray或NSSet转换为字符串
NSString* NSCollectionToString(id collection)
{
    NSMutableString* result = [NSMutableString stringWithString:@"["];
    //使用快速枚举遍历NSSet集合
    for(id obj in collection) {
        [result appendString:[obj description]];
        //NSLog(@"%@", [obj description]);
        [result appendString:@", "];
    }
    //获取字符串长度
    NSUInteger len = [result length];
    //去掉字符串最后的两个字符
    [result deleteCharactersInRange:NSMakeRange(len-2, 2)];
    [result appendString:@"]"];
    
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSSet* set = [NSSet setWithObjects:
                      [[FKUser alloc] initWithName:@"sun" pass:@"123"],
                      [[FKUser alloc] initWithName:@"bai" pass:@"345"],
                      [[FKUser alloc] initWithName:@"sun" pass:@"123"],
                      [[FKUser alloc] initWithName:@"tang" pass:@"178"],
                      [[FKUser alloc] initWithName:@"niu" pass:@"155"],
                      nil];
        NSLog(@"set集合元素的个数%ld", [set count]);
        NSLog(@"%@", NSCollectionToString(set));
    }
    return 0;
}
