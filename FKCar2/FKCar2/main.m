//
//  main.m
//  FKCar2
//
//  Created by xgm on 15/12/15.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKCar2.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建并初始化FKCar对象
        FKCar2* car1 = [[FKCar2 alloc] init];
        //访问Car对象的属性
        NSLog(@"Car1的brand:%@", car1.brand);
        NSLog(@"car1的model:%@", car1.model);
        NSLog(@"car1的color:%@", car1.color);
        
        FKCar2* car2 = [[FKCar2 alloc] initWithBrand:@"奔驰" model:@"ML350"];
        NSLog(@"Car2的brand:%@", car2.brand);
        NSLog(@"car2的model:%@", car2.model);
        NSLog(@"car2的color:%@", car2.color);
        
        
    }
    return 0;
}
