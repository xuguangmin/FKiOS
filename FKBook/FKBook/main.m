//
//  main.m
//  FKBook
//
//  Created by xgm on 15/12/9.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKBook.h"

@implementation FKBook
@synthesize name;
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        FKBook* book = [[FKBook alloc] init];
        NSMutableString* str = [NSMutableString stringWithString:@"疯狂IOS讲义"];
        [book setName: str];
        NSLog(@"book的name为：%@", [book name]);
        [str appendString:@"这是一本很好的IOS学习图书"];
        
        NSLog(@"book的name为：%@", [book name]);
    }
    return 0;
}
