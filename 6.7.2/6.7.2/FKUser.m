//
//  FKUser.m
//  6.7.2
//
//  Created by xgm on 15/12/22.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"

@implementation FKUser
- (void) setItem:(FKItem*)item
{
    if(_item != item){
        [item retain];
        _item = item;
    }
}
- (FKItem*) item
{
    return _item;
}
- (void) dealloc
{
    [_item release];
    [super dealloc];
}
@end