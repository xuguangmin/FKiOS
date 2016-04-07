//
//  main.m
//  NSArrayTest
//
//  Created by xgm on 15/12/28.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray* array = [NSArray arrayWithObjects:@"疯狂IOS讲义", @"疯狂Android讲义", @"疯狂Ajax讲义", @"疯狂XML讲义", @"Structs 2.X权威指南", nil];
        NSLog(@"第一个元素:%@", [array objectAtIndex:0]);
        NSLog(@"索引为1的元素:%@", [array objectAtIndex:1]);
        NSLog(@"最后一个元素:%@", [array lastObject]);
        //获取从2-5的元素组成的新集合
        NSArray* arr1 = [array objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 3)]];
       //获取元素在集合中的位置
        NSLog(@"疯狂Android讲义的位置为:%ld", [array indexOfObject:@"疯狂Android讲义"]);
        //获取元素在集合指定范围中的位置
        NSLog(@"在2-5范围疯狂Android讲义的位置为:%ld", [array indexOfObject:@"疯狂Android讲义" inRange:NSMakeRange(2, 3)]);
        //向数组的最后追加一个元素
        //原NSArray本身并没有改变，只是将新返回的NSArray赋给array
        array = [array arrayByAddingObjectsFromArray:[NSArray arrayWithObjects:@"宝玉", @"黛玉", nil]];
        for(int i = 0; i<array.count; i++) {
            NSLog(@"%@", [array objectAtIndex:i]);
        }
        //获取集合array5-8处的所有元素
        NSArray* arr2 = [array subarrayWithRange:NSMakeRange(2, 3)];
        //写入文件
        [arr2 writeToFile:@"myFile.txt" atomically:YES];
        
    }
    return 0;
}
