//
//  main.m
//  FKItemView
//
//  Created by xgm on 15/12/14.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKItemView.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //创建FKItem对象
        FKItem* item = [[FKItem alloc] init];
        //设置Item的属性
        item.name = @"疯狂IOS讲义";
        item.price = 109;
        //创建FKItemView对象
        FKItemView* itemview = [[FKItemView alloc] init];
        itemview.item = item;
        [itemview showItemInfo];
        //再次更改item对象的属性，将会激发监听器方法
        item.name = @"疯狂XML讲义";
        item.price = 69;
    }
    return 0;
}
