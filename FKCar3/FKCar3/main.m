//
//  main.m
//  FKCar3
//
//  Created by xgm on 15/12/19.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKCar3.h"

@interface FKItem (fk)
- (double) callDiscount:(double) discount;
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKItem* item= [[FKItem alloc] init];
        item.price = 109;
        [item info];
        NSLog(@"物品打折的价格为:%g", [item callDiscount:.75]);
    }
    return 0;
}
