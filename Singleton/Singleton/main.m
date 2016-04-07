//
//  main.m
//  Singleton
//
//  Created by xgm on 15/12/8.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

static id instance = nil;
@implementation Singleton
+ (id) instance
{
    //如果instance为nil
    if(!instance){
        //创建一个Singleton实例，并将该实例赋给instance全局变量
        instance = [[super alloc] init];
    }
    return instance;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d", [Singleton instance] == [Singleton instance]);
    }
    return 0;
}
