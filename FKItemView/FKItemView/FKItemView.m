//
//  FKItemView.m
//  FKItemView
//
//  Created by xgm on 15/12/14.
//  Copyright © 2015年 xgm. All rights reserved.
//  键值监听

#import <Foundation/Foundation.h>
#import "FKItemView.h"

@implementation FKItemView
@synthesize item = _item;
- (void) showItemInfo
{
    NSLog(@"物品名为:%@, 物品价格为:%d", self.item.name, self.item.price);
}
- (void) setItem: (FKItem*) item
{
    self->_item = item;
    //为item添加监听器，监听item的name属性的改变
    [self.item addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    [self.item addObserver:self forKeyPath:@"price" options:NSKeyValueObservingOptionNew context:nil];
}
//重写该方法，当被监听的数据模型发生改变时，就会回调监听器的该方法
- (void) observeValueForKeyPath:(NSString *)keyPath
                    ofObject:(id)object
                    change:(NSDictionary<NSString *,id> *)change
                    context:(void *)context
{
    NSLog(@"-- observeValueForKeyPat方法被调用 --");
    //获取修改时所获取的数据
    NSLog(@"被修改的KeyPath:%@", keyPath);
    NSLog(@"被修改的对象为:%@", object);
    NSLog(@"新被修改的属性值为%@", [change objectForKey:@"new"]);
    NSLog(@"新被修改的上下文为%@", context);
}
- (void) dealloc
{
    //删除监听器
    [self.item removeObserver:self forKeyPath:@"name"];
    [self.item removeObserver:self forKeyPath:@"price"];
}
@end