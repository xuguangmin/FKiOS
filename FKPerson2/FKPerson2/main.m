//
//  main.m
//  FKPerson2
//
//  Created by xgm on 15/12/9.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"

@implementation FKPerson
- (void) setName : (NSString*) name
{
    if([name length] > 6 ||[name length] < 2){
        NSLog(@"您设置的人名不符合要求");
        return ;
    }
    else {
        _name = name;
    }
}
- (NSString*) name
{
    return _name;
}
- (void) setAge:(int)age
{
    if(age != _age){
        if(age > 100 || age < 0){
            NSLog(@"您输入的年龄不符合要求");
            return ;
        }
        else {
            _age = age;
        }
    }
}
- (int) age
{
    return _age;
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPerson* p = [[FKPerson alloc] init];
        [p setAge:30];
        NSLog(@"p的年龄是%d", [p age]);
        [p setName:@"李刚"];
        NSLog(@"%@", [p name]);
    }
    return 0;
}
