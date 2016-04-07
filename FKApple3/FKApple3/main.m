//
//  main.m
//  FKApple3
//
//  Created by xgm on 15/12/17.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKApple3.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKApple3* a = [[FKApple3 alloc] initWithColor:@"红色" weight:5.68];
        
        NSLog(@"%@", a);
    }
    return 0;
}
