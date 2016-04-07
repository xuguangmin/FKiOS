
//
//  main.m
//  NSSetTest
//
//  Created by xgm on 16/1/2.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
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
        //用4个元素初始化NSSet集合
        //故意传入两个相等的元素，NSSet只会保留一个元素
        NSSet* set1 = [NSSet setWithObjects:@"疯狂IOS讲义", @"疯狂Android讲义", @"疯狂Ajax讲义", @"疯狂IOS讲义", nil];
        //程序输出NSSet集合中元素个数为3
        NSLog(@"%ld", set1.count);
        NSLog(@"s1集合:%@", NSCollectionToString(set1));
        NSSet* set2 = [NSSet setWithObjects:@"孙悟空", @"疯狂Android讲义", @"猪八戒", nil];
        NSLog(@"%@", NSCollectionToString(set2));
        //向set1集合中添加单个元素，将添加新元素后生成的新集合赋给set1
        set1 = [set1 setByAddingObject:@"Struct 2.1权威指南"];
        NSLog(@"%@", NSCollectionToString(set1));
        //使用NSSET集合向set1集合添加多个元素，相当于计算两个集合的并集
        NSSet* s = [set1 setByAddingObjectsFromSet:set2];
        NSLog(@"%@", NSCollectionToString(s));
        BOOL b = [set1 intersectsSet:set2];
        NSLog(@"set1 set2是否有交集:%d", b);
        BOOL bo = [set2 isSubsetOfSet:set1];
        NSLog(@"set2是否是set1的子集:%d", bo);
        //判断NSSet集合是否包含指定元素
        BOOL bb = [set1 containsObject:@"疯狂Ajax讲义"];
        NSLog(@"%d", bb);
        //下面两行代码将输出相同的元素， 但取出哪个元素是不确定的
        NSLog(@"set1取出一个元素: %@", [set1 anyObject]);
        NSLog(@"set2取出一个元素: %@", [set2 anyObject]);
        
        //使用代码块对集合元素进行过滤
        NSSet* filteredSet = [set1 objectsPassingTest:^(id obj, BOOL* stop){return (BOOL)([obj length]>8);}];
        NSLog(@"set1中集合元素大于8的集合元素有:%@", NSCollectionToString(filteredSet));
        

    }
    return 0;
}
