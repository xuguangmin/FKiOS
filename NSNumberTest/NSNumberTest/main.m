//
//  main.m
//  NSNumberTest
//
//  Created by xgm on 15/12/17.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //调用类方法将int类型的值包装成NSNumber对象
        NSNumber* num = [NSNumber numberWithInt:20];
        //调用类方法将double类型的值包装成NSNumber对象
        NSNumber* de = [NSNumber numberWithDouble:3.4];
        NSLog(@"%d", [num intValue]);
        NSLog(@"%g", [de doubleValue]);
        NSNumber* ch = [[NSNumber alloc] initWithChar: 'J'];
        NSLog(@"%@", ch);
        NSLog(@"Hello, World!");
    }
    return 0;
}
