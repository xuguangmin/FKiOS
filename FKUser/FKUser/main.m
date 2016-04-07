//
//  main.m
//  FKUser
//
//  Created by xgm on 15/12/8.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface FKUser: NSObject
+ (NSString*) nation;
+ (void) setNation:(NSString*) newNation;
@end

static NSString * nation = nil;
@implementation FKUser
+ (NSString*) nation
{
    return nation;
}
+ (void) setNation: (NSString*) newNation
{
    nation = newNation;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [FKUser setNation:@"中国"];
        NSLog(@"FKUser的nation变量值为%@", [FKUser nation]);
    }
    return 0;
}
