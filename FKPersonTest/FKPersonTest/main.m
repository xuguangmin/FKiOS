//
//  main.m
//  FKPersonTest
//
//  Created by xgm on 15/12/8.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FKPerson: NSObject
{
    @public
    NSString* _name;
    int _age;
}
@end

@implementation FKPerson
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPerson* p = [[FKPerson alloc] init];
        
        NSLog(@"p变量_name的值是%@, p变量_age的值是%d", p->_name, p->_age);
        p->_name = @"孙悟空";
        p->_age = 100;
        NSLog(@"p变量_name的值是%@, p变量_age的值是%d", p->_name, p->_age);
    }
    return 0;
}
