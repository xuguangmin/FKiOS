//
//  FKPerson3.m
//  FKPerson3
//
//  Created by xgm on 15/12/17.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPerson3.h"

@implementation FKPerson3
@synthesize name = _name;
- (id) initWithName:(NSString*) name
{
    if(self = [super init]) {
        self.name = name;
    }
    return self;
}
- (void) info
{
    NSLog(@"此人名为:%@", self.name);
}
@end