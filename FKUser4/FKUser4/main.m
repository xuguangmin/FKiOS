//
//  main.m
//  FKUser4
//
//  Created by xgm on 15/12/15.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKUser4.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        FKUser4* user = [[FKUser4 alloc] init];
        NSLog(@"name:%@", user.name);
        NSLog(@"age:%d", user.age);
        NSLog(@"address:%@", user.address);
    }
    return 0;
}
