//
//  main.m
//  NSURLTest
//
//  Created by xgm on 16/3/2.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建NSURL
        NSURL* url = [NSURL URLWithString:@"http://www.baidu.com/inde.php"];
        NSLog(@"url的scheme:  %@", [url scheme]);
        NSLog(@"url的host为: %@", [url host]);
        NSLog(@"url的port为: %@", [url port]);
        NSLog(@"url额path为: %@", [url path]);
        //使用URL对应的资源来初始化NSString对象
        NSString* homePage = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@", homePage);
        NSLog(@"Hello, World!");
    }
    return 0;
}
