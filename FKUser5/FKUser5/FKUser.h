
//
//  FKUser.h
//  FKUser5
//
//  Created by xgm on 15/12/30.
//  Copyright © 2015年 xgm. All rights reserved.
//

#ifndef FKUser_h
#define FKUser_h
@interface FKUser : NSObject
@property (nonatomic, copy) NSString* name;
@property (nonatomic, copy) NSString* pass;
- (id) initWithName:(NSString*) aName pass:(NSString*)aPass;
- (void) say:(NSString*) content;
- (id) copyWithZone:(NSZone*) zone;
- (NSUInteger) hash;
@end
#endif /* FKUser_h */
