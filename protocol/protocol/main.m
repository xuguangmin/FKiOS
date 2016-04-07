//
//  main.m
//  protocol
//
//  Created by xgm on 15/12/20.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPrinter.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPrinter* printer = [[FKPrinter alloc] init];
        [printer addData:@"疯狂IOS讲义"];
        [printer addData:@"疯狂XML讲义"];
        [printer output];
        [printer addData:@"疯狂android讲义"];
        [printer addData:@"Ajax讲义"];
        [printer output];
        NSObject<FKPrinttable>* p = [[FKPrinter alloc] init];
        NSLog(@"%@", p.getProduceTime);
        id<FKOutput> out = [[FKPrinter alloc] init];
        [out addData:@"孙悟空"];
        [out addData:@"猪八戒"];
        [out output];
    }
    return 0;
}
