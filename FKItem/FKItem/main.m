//
//  main.m
//  FKItem
//
//  Created by xgm on 15/12/28.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKItem* item = [FKItem new];
        item.name = [NSMutableString
                      stringWithString:@"疯狂IOS讲义"];
        [item.name appendString:@"fkit"];
        
    }
    return 0;
}
