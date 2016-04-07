//
//  main.m
//  ArchiverMutiTest
//
//  Created by xgm on 16/3/2.
//  Copyright © 2016年 xgm. All rights reserved.
//  程序示范了一次性归档多个对象

#import <Foundation/Foundation.h>
#import "FKApple.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //  直接使用多个value，key的形式创建NSDictionary对象
        NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys:
                              [NSNumber numberWithInt:89],@"OC",
                              [NSNumber numberWithInt:69],@"Ruby",
                              [NSNumber numberWithInt:75],@"Python",
                              [NSNumber numberWithInt:109], @"Perl",nil];
        //创建一个NSSet对象
        NSSet* set = [NSSet setWithObjects:
                      @"疯狂IOS讲义",
                      @"疯狂Android讲义",
                      @"疯狂Ajax讲义",nil];
        FKApple* apple = [[FKApple alloc] initWithColor:@"红色" weight:3.4 size:20];
        //创建一个NSMutableData对象，用语保存归档数据
        NSMutableData* data = [NSMutableData data];
        NSKeyedArchiver* arch = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
        [arch encodeObject:dict forKey:@"MyDict"];
        [arch encodeObject:set forKey:@"sett"];
        [arch encodeObject:apple forKey:@"myApp"];
        //结束归档
        [arch finishEncoding];
        //程序将NSData缓存区保存的数据写入文件
        if([data writeToFile:@"multi.archive" atomically:YES] == NO) {
            NSLog(@"归档失败");
        }
        
        //从一个文件中恢复多个归档的对象
        //创建一个NSData对象,用语读取指定文件中的归档数据
        NSData* data2 = [NSData dataWithContentsOfFile:@"multi.archive"];
        //以NSData对象作为参数，创建NSKeyedUnarchive对象
        NSKeyedUnarchiver* unarch = [[NSKeyedUnarchiver alloc] initForReadingWithData:data2];
        NSDictionary* dict2 = [unarch decodeObjectForKey:@"MyDict"];
        NSSet* set2 = [unarch decodeObjectForKey:@"sett"];
        FKApple* apple2 = [unarch decodeObjectForKey:@"myApp"];
        //结束恢复
        [unarch finishDecoding];
        NSLog(@"%@", dict2);
        NSLog(@"%@", set2);
        NSLog(@"%@", apple2);
        
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
