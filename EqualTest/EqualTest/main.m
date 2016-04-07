//
//  main.m
//  EqualTest
//
//  Created by xgm on 15/12/17.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int it = 65;
        float fl = 65.0f;
        NSLog(@"65和65.0是否相等?:%d", (it == fl));
        char ch = 'A';
        NSLog(@"65和A是否相等?:%d", (it == ch));
        NSString* str1 = [NSString stringWithFormat:@"heldlo"];
        NSString* str2 = [NSString stringWithFormat:@"hello"];
        
        NSLog(@"str1和str2是否相等？:%d", (str1 == str2));
        NSLog(@"str1 isEqual str2?:%d", [str1 isEqual:str2]);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
