//
//  FKApple.m
//  ArchiverApple
//
//  Created by xgm on 16/3/2.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKApple.h"

@implementation FKApple

@synthesize color = _color;
@synthesize weight = _weight;
@synthesize size = _size;

- (id) initWithColor:(NSString *)color weight:(double)weight size:(int)size
{
    if(self = [super init]) {
        self.color = color;
        self.weight = weight;
        self.size = size;
    }
    return self;
}
//重写父类的description方法
- (NSString*) description
{
    //返回一个字符串
    return  [NSString stringWithFormat:@"<FKApple[_color=%@, _weight=%g, _size=%d]>", self.color, self.weight, self.size];
}
- (void) encodeWithCoder:(NSCoder *) coder
{
    //调用NSCoder的方法，归档该对象的每个实例变量
    [coder encodeObject:_color forKey:@"color"];
    [coder encodeDouble:_weight forKey:@"weight"];
    [coder encodeInt:_size forKey:@"size"];
    
}
- (id) initWithCoder:(NSCoder *)aDecoder
{
    //使用NSCoder依次恢复color,weight,size这3个key
    //所对应的value，并将恢复的value赋给当前对象的3个实例变量
    _color = [aDecoder decodeObjectForKey:@"color"];
    _weight = [aDecoder decodeDoubleForKey:@"weight"];
    _size = [aDecoder decodeIntForKey:@"size"];
    return self;
}
@end