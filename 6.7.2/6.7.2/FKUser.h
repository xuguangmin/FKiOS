
//
//  FKUser.h
//  6.7.2
//
//  Created by xgm on 15/12/22.
//  Copyright © 2015年 xgm. All rights reserved.
//

#ifndef FKUser_h
#define FKUser_h
#import <Foundation/Foundation.h>
#import "FKItemTest.h"

@interface FKUser : NSObject
{
    FKItem* _item;
}
- (void) setItem: (FKItem*) item;
- (FKItem*) item;
@end
#endif /* FKUser_h */
