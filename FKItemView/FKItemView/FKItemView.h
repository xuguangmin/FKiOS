//
//  FKItemView.h
//  FKItemView
//
//  Created by xgm on 15/12/14.
//  Copyright © 2015年 xgm. All rights reserved.
//

#ifndef FKItemView_h
#define FKItemView_h
#import <Foundation/Foundation.h>
#import "FKItem.h"

@interface FKItemView : NSObject
@property (nonatomic, weak) FKItem* item;
- (void) showItemInfo;

@end

#endif /* FKItemView_h */
