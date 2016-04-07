//
//  FKCar2.h
//  FKCar2
//
//  Created by xgm on 15/12/15.
//  Copyright © 2015年 xgm. All rights reserved.
//  便利的初始化方法

#ifndef FKCar2_h
#define FKCar2_h

@interface  FKCar2 : NSObject
@property (nonatomic, copy) NSString* brand;
@property (nonatomic, copy) NSString* model;
@property (nonatomic, copy) NSString* color;
//定义initWithBrand:model方法完成初始化
- (id) initWithBrand:(NSString*) brand model:(NSString*) model;
- (id) initWithBrand:(NSString*) brand model:(NSString*) model
               color:(NSString*) color;
@end


#endif /* FKCar2_h */
