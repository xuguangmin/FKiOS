//
//  FKApple3.h
//  FKApple3
//
//  Created by xgm on 15/12/17.
//  Copyright © 2015年 xgm. All rights reserved.
//

#ifndef FKApple3_h
#define FKApple3_h
@interface FKApple3: NSObject
@property (nonatomic, copy) NSString* color;
@property (nonatomic, assign) double weight;
- (id) initWithColor: (NSString*) color weight:(double) weight; 
@end

#endif /* FKApple3_h */
