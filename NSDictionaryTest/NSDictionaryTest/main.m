//
//  main.m
//  NSDictionaryTest
//
//  Created by xgm on 16/1/6.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+print.h"
#import "FKUser.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //直接使用多个value,key的形式创建NSDictionary对象
        NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys:
                              [[FKUser alloc] initWithName:@"sun" pass:@"123"],@"one",
                              [[FKUser alloc] initWithName:@"bai" pass:@"345"],@"two",
                              [[FKUser alloc] initWithName:@"sun" pass:@"123"],@"three",
                              [[FKUser alloc] initWithName:@"tang" pass:@"178"],@"four",
                              [[FKUser alloc] initWithName:@"niu" pass:@"155"],@"five",
                              nil];
        [dict print];
        NSLog(@"dict包含%ld个key-val对", [dict count]);
        NSLog(@"dict的所有key为:%@", [dict allKeys]);
        NSLog(@"<FKUser[name=sun, pass=123]>对应的所有key为:  %@", [dict allKeysForObject:
                                                              [[FKUser alloc] initWithName:@"sun" pass:@"123"]]);
        
        //获取遍历所有dict所有value的枚举器
        NSEnumerator* en = [dict objectEnumerator];
        NSObject* value;
        //使用枚举器来遍历dict中所有value
        while(value = [en nextObject]){
            NSLog(@"    %@", value);
        }
        //使用枚举器来迭代执行该集合中所有key-value对
        [dict enumerateKeysAndObjectsUsingBlock:
         //该集合包含多个key-value对，就执行相应的次数
         ^(id key, id value, BOOL* stop){
             NSLog(@"key的值为:%@", key);
             [value say:@"疯狂IOS"];
         }];
    }
    return 0;
}
