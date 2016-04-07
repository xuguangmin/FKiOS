//
//  FKApple.h
//  ArchiverApple
//
//  Created by xgm on 16/3/2.
//  Copyright © 2016年 xgm. All rights reserved.
//

#ifndef FKApple_h
#define FKApple_h
#import <Foundation/Foundation.h>

//定义FKApple类，实现NSCoding协议
@interface FKApple: NSObject <NSCoding>
@property (nonatomic, copy) NSString* color;
@property (nonatomic, assign) double weight;
@property (nonatomic, assign) int size;
- (id) initWithColor: (NSString*) color weight:(double) weight size:(int) size;
@end

#endif /* FKApple_h */
