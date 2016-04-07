//
//  FKApple3.m
//  FKApple3
//
//  Created by xgm on 15/12/17.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKApple3.h"

@implementation FKApple3
@synthesize color = _color;
@synthesize weight = _weight;
- (id) initWithColor:(NSString *)color weight:(double)weight
{
    if(self =[super init]) {
        self.color = color;
        self.weight = weight;
    }
    return self;
}
//重写父类的description方法
- (NSString*) description
{
    return [NSString stringWithFormat:@"<FKApple [_color=%@,_weight=%g]>", self.color, self.weight];
}
@end