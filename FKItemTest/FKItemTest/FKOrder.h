//
//  FKOrder.h
//  FKItemTest
//
//  Created by xgm on 15/12/10.
//  Copyright © 2015年 xgm. All rights reserved.
//  测试key路径

#ifndef FKOrder_h
#define FKOrder_h
#import "Foundation/Foundation.h"
#import "FKItemTest.h"

@interface FKOrder : NSObject
@property (nonatomic, strong) FKItem* item;
@property (nonatomic, assign) int amount;
- (void) totalPrice;
@end

#endif /* FKOrder_h */
