//
//  main.m
//  NSPathUtilitiesTest
//
//  Created by xgm on 16/3/1.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //  测试NSPathUtilities.h扩展的NSString的功能和用法
        NSLog(@"当前用户名为：%@", NSUserName());
        NSLog(@"当前用户的完整用户名为: %@", NSFullUserName());
        NSLog(@"当前用户的home目录为：%@", NSHomeDirectory());
        NSLog(@"root用户的home目录为：%@", NSHomeDirectoryForUser(@"root"));
        NSLog(@"系统临时目录为：%@", NSTemporaryDirectory());
        NSString* path = @"~root";
        //将～root解析为root用户的home目录
        NSLog(@"解析～root的结果：%@", [path stringByExpandingTildeInPath]);
        NSString* path2 = @"/Users/xgm/publish";
        NSLog(@"替换成～/publish的形式：%@", [path2 stringByAbbreviatingWithTildeInPath]);
        NSArray* array = [path2 pathComponents];
        //遍历该路径中各路径组建
        for(NSString* item in array) {
            NSLog(@"%@", item);
        }
        
        //在path2路径后追加一个路径
        NSString* path3 = [path2 stringByAppendingPathComponent:@"test.m"];
        NSLog(@"path3为：%@", path3);
        //获取路径的最后部分
        NSString* last = [path3 lastPathComponent];
        NSLog(@"path3的最后一个路径组件为:%@", last);
        NSLog(@"path3的最后一个路径扩展名为:%@", [path3 pathExtension]);
        NSLog(@"Hello, World!");
    }
    return 0;
}
