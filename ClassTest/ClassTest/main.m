//
//  main.m
//  ClassTest
//
//  Created by xgm on 15/12/21.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Class clazz = NSClassFromString(@"NSDate");
        NSLog(@"%@", clazz);
        id date = [[clazz alloc] init];
        NSLog(@"%@", date);
        
        NSLog(@"%@", [date class]);
        NSLog(@"%d", clazz == NSDate.class);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
