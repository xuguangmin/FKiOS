//
//  main.m
//  FKItemTest
//
//  Created by xgm on 15/12/9.
//  Copyright © 2015年 xgm. All rights reserved.
//  测试修改getter、setter方法，见.h文件

#import <Foundation/Foundation.h>
#import "FKOrder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        FKOrder* order = [[FKOrder alloc] init];
        [order setValue:@"12" forKey:@"amount"];
        [order setValue:[[FKItem alloc] init] forKey:@"item"];
        //使用setValue:forKeyPath设置item属性的name属性
        [order setValue:@"鼠标" forKeyPath:@"item.price"];
        //使用valueForKeyPath来获取复合属性的值
        [order setValue:[NSNumber numberWithInt:20] forKeyPath:@"item.price"];
        NSLog(@"%@  %@   %@", [order valueForKey:@"amount"],
            [order valueForKeyPath:@"item.price"],
            [order valueForKey:@"totalPrice"]);
    }
    return 0;
}
