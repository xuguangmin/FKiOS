//
//  main.m
//  FKApple
//
//  Created by xgm on 15/12/9.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKApple.h"

@implementation FKApple
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKApple* apple = [[FKApple alloc] init];
        apple->_weight = 60;
        
        NSLog(@"%g", apple->_weight);
    }
    return 0;
}
