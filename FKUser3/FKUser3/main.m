//
//  main.m
//  FKUser3
//
//  Created by xgm on 15/12/10.
//  Copyright © 2015年 xgm. All rights reserved.
//  键值编码

#import <Foundation/Foundation.h>
#import "FKUser3.h"

@implementation FKUser3
@synthesize name;
@synthesize pass;
@synthesize birth;
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        FKUser3* user = [[FKUser3 alloc] init];
        //使用KVC方式为name属性设置值
        [user setValue:@"孙悟空" forKey:@"name"];
        //使用KVC方式为pass属性设置值
        [user setValue:@"12234" forKey:@"pass"];
        //使用KVC方式为birth属性设置值
        [user setValue:[[NSDate alloc] init] forKey:@"birth"];
        //使用KVC获取name属性的值
        NSLog(@"user的name：%@", [user valueForKey:@"name"]);
        //使用KVC方式获取pass属性的值
        NSLog(@"user的pass:%@", [user valueForKey:@"pass"]);
        NSLog(@"userdbirth：%@", [user valueForKey:@"birth"]);
    }
    return 0;
}
