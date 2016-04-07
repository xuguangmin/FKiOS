//
//  main.m
//  FKWin
//
//  Created by xgm on 15/12/9.
//  Copyright © 2015年 xgm. All rights reserved.
//  程序无法编译通过，需要关闭ARC功能

#import <Foundation/Foundation.h>
#import "FKwin.h"

@implementation FKWin
@synthesize date;
@end
int main(int argc, const char * argv[]) {
    // insert code here...
    FKWin* win = [[FKWin alloc] init];
    NSDate* date = [[NSDate alloc] init];
        
    NSLog(@"第一次赋值时date的引用计数%ld", date.retainCount);
    return 0;
}
