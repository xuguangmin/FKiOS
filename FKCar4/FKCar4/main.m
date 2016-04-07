//
//  main.m
//  FKCar4
//
//  Created by xgm on 15/12/19.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKCar4+drive.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKCar4* car = [[FKCar4 alloc] init];
        car.brand = @"宝马";
        car.color = @"黑色";
        car.model = @"X5";
        [car drive];
        [car drive: @"孙悟空"];
    }
    return 0;
}
