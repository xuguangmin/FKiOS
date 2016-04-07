//
//  FKOutput.h
//  protocol
//
//  Created by xgm on 15/12/20.
//  Copyright © 2015年 xgm. All rights reserved.
//

#ifndef FKOutput_h
#define FKOutput_h
#import <Foundation/Foundation.h>
@protocol FKOutput
- (void) output;
- (void) addData: (NSString*) msg;
@end
#endif /* FKOutput_h */
