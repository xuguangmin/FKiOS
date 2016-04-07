//
//  main.m
//  FKApple2
//
//  Created by xgm on 15/12/10.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKApple2.h"

@implementation FKApple2
- (void)setValue:(id)value forKey:(NSString *)key
{
    NSLog(@"您尝试设置的 key:%@ 不存在", key);
    NSLog(@"您尝试设置的 value为 %@ ", value);
}
- (void) valueForUndefinedKey:(id)key
{
    NSLog(@"您尝试访问的key:%@ 不存在", key);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        FKApple2* app = [[FKApple2 alloc] init];
        [app setValue:@"大苹果" forKey:@"name"];
        [app valueForKey:@"name"];
    }
    return 0;
}
