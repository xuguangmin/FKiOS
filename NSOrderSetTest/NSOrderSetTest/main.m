//
//  main.m
//  NSOrderSetTest
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
    return  result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建NSOrderSet集合，故意使用重复元素
        //可以看到程序只会保留一个元素
        NSOrderedSet* set = [NSOrderedSet orderedSetWithObjects:
                           [NSNumber numberWithInt:40],
                           [NSNumber numberWithInt:12],
                           [NSNumber numberWithInt:-9],
                           [NSNumber numberWithInt:28],
                           [NSNumber numberWithInt:12],
                           [NSNumber numberWithInt:17],
                             nil];
        NSLog(@"%@", NSCollectionToString(set));
        //下面方法都是根据索引来操作集合元素
        NSLog(@"set集合的第一个元素:%@", [set firstObject]);
        NSLog(@"set集合的最后一个元素%@", [set lastObject]);
        //获取指定索引处的元素
        NSLog(@"set集合中索引为2的元素:%@", [set objectAtIndex:2]);
        NSLog(@"28在集合中的索引为:%ld", [set indexOfObject:[NSNumber numberWithInt:28]]);
        //对集合进行过滤，获取元素值大于20的集合元素的索引
        NSIndexSet* indexSet = [set indexesOfObjectsPassingTest:
                                ^(id obj, NSUInteger idx, BOOL *stop){return (BOOL)([obj intValue]>20);}];
        NSLog(@"set集合中元素大于20的元素的索引为:%@", indexSet);
        
        
        
    }
    return 0;
}
