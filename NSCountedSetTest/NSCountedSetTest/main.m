//
//  main.m
//  NSCountedSetTest
//
//  Created by xgm on 16/1/6.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
NSString* NSCollectionToString(id collection)
{
    NSMutableString* result = [NSMutableString stringWithString:@"["];
    for(id obj in collection) {
        [result appendString:[obj description]];
        [result appendString:@", "];
    }
    NSUInteger len = [result length];
    [result deleteCharactersInRange:NSMakeRange(len-2, 2)];
    [result appendString:@"]"];
    return  result;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSCountedSet* set = [NSCountedSet setWithObjects:@"疯狂IOS讲义", @"疯狂Android讲义", @"疯狂Ajax讲义", nil];
        [set addObject:@"疯狂IOS讲义"];
        [set addObject:@"疯狂IOS讲义"];
        //输出集合元素
        NSLog(@"%@", NSCollectionToString(set));
       //获取指定元素的添加顺序
        NSLog(@"疯狂IOS讲义的添加顺序为%ld", [set countForObject:@"疯狂IOS讲义"]);
        //删除元素
        [set removeObject:@"疯狂IOS讲义"];
        NSLog(@"%ld", [set countForObject:@"疯狂IOS讲义"]);
        NSLog(@"%@", NSCollectionToString(set));
        [set removeObject:@"疯狂IOS讲义"];
        [set removeObject:@"疯狂IOS讲义"];
        NSLog(@"%@", NSCollectionToString(set));

        
    }
    return 0;
}
