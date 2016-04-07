//
//  main.m
//  NSKeyedArchiverTest
//
//  Created by xgm on 16/3/2.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //  直接使用多个value，key的形式创建NSDictionary对象
        NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys:
                              [NSNumber numberWithInt:89],@"Object-C",
                              [NSNumber numberWithInt:69], @"Ruby",
                              [NSNumber numberWithInt:75], @"Python",
                              [NSNumber numberWithInt:109], @"Perl"
                              , nil];
        //对dict对象进行归档
        [NSKeyedArchiver archiveRootObject:dict toFile:@"mydict.archiver"];
        
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
