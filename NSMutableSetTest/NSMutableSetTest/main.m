//
//  main.m
//  NSMutableSetTest
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
        //创建一个初始容量为10的set集合
        NSMutableSet* set = [NSMutableSet setWithCapacity:10];
        [set addObject:@"疯狂IOS讲义"];
        NSLog(@"%@", NSCollectionToString(set));
        [set addObjectsFromArray:[NSArray arrayWithObjects:
                                  @"疯狂Android讲义", @"疯狂Ajax讲义", @"疯狂XML讲义", nil]];
        NSLog(@"%@", NSCollectionToString(set));
        [set removeObject:@"疯狂XML讲义"];
        NSLog(@"%@", NSCollectionToString(set));
        //再次创建一个set集合
        NSSet* set2 = [NSSet setWithObjects:@"孙悟空", @"疯狂IOS讲义", nil];
        //计算两个集合的并集,直接改变set集合的元素
        [set unionSet:set2];
        //计算两个集合的差集
       // [set minusSet:set2];
        //计算两个集合的交集
       // [set intersectSet:set2];
        //用set2的集合元素替换set的集合元素
       // [set setSet:set2];
        NSLog(@"%@", NSCollectionToString(set));
        
        
    }
    return 0;
}
