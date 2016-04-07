//
//  main.m
//  FKCard
//
//  Created by xgm on 15/12/9.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKCard.h"

@implementation FKCard
@synthesize flower;
@synthesize value;
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        FKCard* card = [[FKCard alloc] init];
        //通过点语法访问属性
        card.flower = @"^";
        card.value  = @"A";
    
        NSLog(@"扑克牌为:%@%@", card.flower, card.value);
    }
    return 0;
}
