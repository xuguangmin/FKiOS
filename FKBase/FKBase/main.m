//
//  main.m
//  FKBase
//
//  Created by xgm on 15/12/16.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKSubclass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKBase* bc = [[FKBase alloc] init];
        [bc base];
        [bc test];
        //下面编译时类型和运行时类型一样，因此不存在多态
        FKSubclass* sc = [[FKSubclass alloc] init];
        [sc base];
        [sc test];
        [sc sub];
        //下面编译时类型和运行时类型不一样，多态发生
        FKBase* ploymophBc = [[FKSubclass alloc] init];
        [ploymophBc base];
        [ploymophBc test];
        //[ploymophBc sub];
        id dyna = ploymophBc;
        [dyna sub];
    }
    return 0;
}
