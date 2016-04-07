//
//  main.m
//  FKuser2
//
//  Created by xgm on 15/12/9.
//  Copyright © 2015年 xgm. All rights reserved.
//  合成存取

#import <Foundation/Foundation.h>
#import "FKUser.h"
@implementation FKUser
@synthesize name = _name;
@synthesize pass;
@synthesize birth;
- (void) setName:(NSString *)name
{
    self->_name = [NSString stringWithFormat:@"+++++%@",name];
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKUser* user = [[FKUser alloc] init];
        [user setName: @"admin"];
        [user setPass: @"1234"];
        [user setBirth:[NSDate date]];
        
        NSLog(@"管理员账号为：%@, 密码为：%@, 生日为：%@",
                [user name], [user pass], [user birth]);
    }
    return 0;
}
