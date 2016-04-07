//
//  main.m
//  CollectionFilter
//
//  Created by xgm on 16/2/28.
//  Copyright © 2016年 xgm. All rights reserved.
//  使用谓词过滤集合

#import <Foundation/Foundation.h>
#import "FKUser.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSSet* set = [NSSet setWithObjects:
                      [[FKUser alloc] initWithName:@"孙悟空" pass:@"343"],
                      [[FKUser alloc] initWithName:@"金角大王" pass:@"231"],
                      [[FKUser alloc] initWithName:@"太上老君" pass:@"743"],
                      [[FKUser alloc] initWithName:@"银角大王" pass:@"598"], nil];
        NSString* propPath = @"name";
        NSString* value = @"大王";
        // 创建谓词，该谓词中包含了两个占位符
        //后面的两个变量用语为占位符设置参数值
        NSPredicate* pred = [NSPredicate predicateWithFormat:@"%K  CONTAINS %@", propPath, value];
        //执行过滤，过滤后集合只剩下两个元素
        NSSet* newSet = [set filteredSetUsingPredicate:pred];
        NSLog(@"%@", newSet);
        
        //创建谓词，该谓词表达式中使用％K占位符，该占位符使用pass代替
        // 要求被比较的pass包含$SUBSTR子串
        NSPredicate* predTemplate = [NSPredicate predicateWithFormat:@"%K CONTAINS $SUBSTR", @"pass"];

        //使用NSDictionary制定SUBSTR的值为43
        NSPredicate* pred1 = [predTemplate predicateWithSubstitutionVariables:[NSDictionary dictionaryWithObjectsAndKeys:@"43", @"SUBSTR",  nil]];
        //执行过滤，过滤后集合只剩下两个元素
        NSSet* newSet2 = [set filteredSetUsingPredicate:pred1];
        NSLog(@"%@", newSet2);
    }
    return 0;
}
