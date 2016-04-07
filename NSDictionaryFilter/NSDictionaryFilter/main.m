//
//  main.m
//  NSDictionaryFilter
//
//  Created by xgm on 16/1/7.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+print.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //直接使用多个value，key的形式创建NSDictionart对象
        NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys:
                              [NSNumber numberWithInt:89], @"Object-C",
                              [NSNumber numberWithInt:69], @"Ruby",
                              [NSNumber numberWithInt:75], @"Python",
                              [NSNumber numberWithInt:109], @"Perl",nil];
        [dict print];
        //对NSDictionary的所有key进行过滤
        NSSet* keySet = [dict keysOfEntriesPassingTest:
                         ^(id key, id value, BOOL* stop){
                             //当value的值大于80时返回YES
                             //这意味着只有value的值大于80的key才会保留下来
                             return (BOOL)([value intValue] > 80);
                         }];
        NSLog(@"%@", keySet);
        
    }
    return 0;
}
