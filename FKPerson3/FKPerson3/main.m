//
//  main.m
//  FKPerson3
//
//  Created by xgm on 15/12/17.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPerson3.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPerson3* p = [[FKPerson3 alloc] initWithName:@"孙悟空"];
        NSLog(@"%@", [p description]);
    }
    return 0;
}
