//
//  main.m
//  DeepCopyTest
//
//  Created by xgm on 16/3/3.
//  Copyright © 2016年 xgm. All rights reserved.
//  使用归档实现深复制

#import <Foundation/Foundation.h>
#import "FKApple.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 直接使用多个value，key的形式创建NSDictionary对象
        NSDictionary* dict=[NSDictionary dictionaryWithObjectsAndKeys:
                            [[FKApple alloc] initWithColor:@"红色" weight:3.4 size:20],@"one",
                            [[FKApple alloc] initWithColor:@"绿色" weight:2.8 size:14],@"two", nil];
        //归档对象,将归档对象的数据写入NSData中
        NSData* data = [NSKeyedArchiver archivedDataWithRootObject:dict];
        //从NSData中恢复对象，这样即可完成深复制
        NSDictionary* dict2 = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        //获取复制的NSDictionary对象中key为one对应的FKApple对象
        FKApple* apple = [dict2 objectForKey:@"one"];
        //修改改FKApple对象的color
        [dict2 setColor:@"紫色"];
        //获取原始的NSDictionary对象中key为one对应的FKAple对象
        FKApple* oneapp = [dict objectForKey:@"one"];
        //访问改FKApple的颜色，将会发现颜色没有任何改变
        NSLog(@"%@", oneapp.color);
        NSLog(@"Hello, World!");
    }
    return 0;
}
