//
//  FKDog.h
//  FKDogTest
//
//  Created by xgm on 15/12/28.
//  Copyright © 2015年 xgm. All rights reserved.
//

#ifndef FKDog_h
#define FKDog_h
#import <Foundation/Foundation.h>
#import "NSCopying.h"

@interface FKDog : NSObject <NSCopying>
@property (nonatomic, strong) NSMutableString* name;
@property (nonatomic, assign) int age;
@end

#endif /* FKDog_h */
