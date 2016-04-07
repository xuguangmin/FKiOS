//
//  main.m
//  NSDictionarySort
//
//  Created by xgm on 16/1/7.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+print.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //直接食用多个value,key的形式创建NSDictionary对象
        NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys:
                              @"Object-C", @"one",
                              @"Ruby", @"two",
                              @"Python", @"three",
                              @"Perl", @"four",nil];
        //打印dict集合的所有元素
        [dict print];
        //获取所有直接调用value的compare:方法对所有的key进行排序
        //返回排好序的所有key组成的NSArray
        NSArray* keyArr1 = [dict keysSortedByValueUsingSelector:@selector(compare:)];
        NSLog(@"%@", keyArr1);
        NSArray* keyArr2 = [dict keysSortedByValueUsingComparator:
                            ^(id value1, id value2){
                                //下面定义比较大小的标准，字符串越长，即可认为字符串越大
                                if([value1 length] > [value2 length]) {
                                    return NSOrderedDescending;
                                } else if([value1 length] < [value2 length]) {
                                    return NSOrderedAscending;
                                } else {
                                    return NSOrderedSame;
                                }
                                return NSOrderedSame;
                            }];
        NSLog(@"%@", keyArr2);
        //将NSDictionary的内容输出到指定文件中
        [dict writeToFile:@"mydict.txt" atomically:YES];
    }
    return 0;
}
