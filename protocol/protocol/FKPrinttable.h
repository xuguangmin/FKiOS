//
//  FKPrinttable.h
//  protocol
//
//  Created by xgm on 15/12/20.
//  Copyright © 2015年 xgm. All rights reserved.
//

#ifndef FKPrinttable_h
#define FKPrinttable_h
#import <Foundation/Foundation.h>
#import "FKOutput.h"
#import "FKProductable.h"

@protocol FKPrinttable <FKOutput, FKProductable>
- (NSString*) printColor;
@end

#endif /* FKPrinttable_h */
