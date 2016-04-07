//
//  FKUser.h
//  FKuser2
//
//  Created by xgm on 15/12/9.
//  Copyright © 2015年 xgm. All rights reserved.
//  合成存取方法

#ifndef FKUser_h
#define FKUser_h

@interface FKUser : NSObject
@property (nonatomic) NSString* name;
@property NSString* pass;
@property NSDate* birth;
- (void) setName:(NSString *)name;
@end

#endif /* FKUser_h */
