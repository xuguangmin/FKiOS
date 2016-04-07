//
//  main.m
//  NSPredicateTest
//
//  Created by xgm on 16/2/28.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // `创建谓词，要求name的以s开头
        NSPredicate* pred = [NSPredicate predicateWithFormat:@"name like 's*'"];
        FKUser* user1 = [[FKUser alloc] initWithName:@"sun" pass:@"123"];
        //对user对象使用谓词尽心个判断
        BOOL result = [pred evaluateWithObject:user1];
        NSLog(@"user1的name是否以S开头:%d", result);
        FKUser* user2 = [[FKUser alloc] initWithName:@"bai" pass:@"563"];
        //对user2对象使用谓词进行判断
        BOOL result2 = [pred evaluateWithObject:user2];
        NSLog(@"user2的name是否以s开头:%d", result2);
    }
    return 0;
}
