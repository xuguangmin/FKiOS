
//
//  NSCopying.h
//  FKDogTest
//
//  Created by xgm on 15/12/28.
//  Copyright © 2015年 xgm. All rights reserved.
//

#ifndef NSCopying_h
#define NSCopying_h
#import <Foundation/Foundation.h>

@protocol NSCopying <NSObject>
- (id) copyWithZone:(NSZone*) zone;
@end

#endif /* NSCopying_h */
