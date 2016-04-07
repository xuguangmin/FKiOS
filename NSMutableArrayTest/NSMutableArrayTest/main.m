//
//  main.m
//  NSMutableArrayTest
//
//  Created by xgm on 15/12/31.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
//定义一个函数，该函数用于把NSArray集合转换为字符串
NSString* NSCollectionToString(NSArray* array)
{
    NSMutableString* result = [NSMutableString stringWithString:@"["];
    for(id obj in array) {
        [result appendString:[obj description]];
        [result appendString:@", "];
    }
    NSUInteger len = [result length];
    //去掉字符串最后的两个字符
    [result deleteCharactersInRange:NSMakeRange(len-2, 2)];
    [result appendString:@"]"];
    
    return  result;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //读取前面写入磁盘的文件，用文件内容来初始化NSMutableArray集合
        NSMutableArray* array = [NSMutableArray arrayWithContentsOfFile:@"myFile.txt"];
        [array addObject:@"疯狂IOS讲义"];//向集合秀后添加一个元素
        
        
        
    }
    return 0;
}
