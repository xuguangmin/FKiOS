//
//  main.m
//  IsKindTest
//
//  Created by xgm on 15/12/16.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSObject* hello = [[NSString alloc] init];
        NSLog(@"字符串是否是NSObject类的实例:%d", ([hello isKindOfClass:[NSObject class]]));

        NSLog(@"字符串是否是NSObject类的实例:%d", ([hello isKindOfClass:[NSString class]]));
        NSLog(@"字符串是否是NSDate类的实例:%d", ([hello isKindOfClass:[NSDate class]]));
        
    }
    return 0;
}
