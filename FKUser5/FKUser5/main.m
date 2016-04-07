//
//  main.m
//  FKUser5
//
//  Created by xgm on 15/12/30.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray* array = [NSArray arrayWithObjects:
                          [[FKUser alloc] initWithName:@"sun" pass:@"123"],
                          [[FKUser alloc] initWithName:@"bai" pass:@"345"],
                          [[FKUser alloc] initWithName:@"zhu" pass:@"654"],
                          [[FKUser alloc] initWithName:@"tang" pass:@"178"],
                          [[FKUser alloc] initWithName:@"niu" pass:@"155"],
                          nil];
        //对集合元素整体调用方法
        [array makeObjectsPerformSelector:@selector(say:) withObject:@"下午好，NSArray真强大"];
        NSString* content = @"疯狂IOS讲义";
        //迭代集合内指定范围内的元素，也使用该元素执行代码块
        [array enumerateObjectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2,2)] options:NSEnumerationReverse
                              usingBlock:^(id obj, NSUInteger idx, BOOL *stop)
                                {
                                    NSLog(@"正在处理第%ld个元素：%@", idx, obj);
                                    [obj say:content];
                                }
         ];
        
        
    }
    return 0;
}
