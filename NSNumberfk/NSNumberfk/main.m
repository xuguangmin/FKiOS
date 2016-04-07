//
//  main.m
//  NSNumberfk
//
//  Created by xgm on 15/12/19.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSNumber+fk.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber* mynum = [NSNumber numberWithInt:3];
        
        NSNumber* add = [mynum add:2.4];
        NSLog(@"%@", add);
        NSNumber* substract = [mynum substract:2.4];
        NSLog(@"%@", substract);
        NSNumber* divide = [mynum divide:2.4];
        NSLog(@"%@", divide);
        NSLog(@"Hello, World!");
    }
    return 0;
}
