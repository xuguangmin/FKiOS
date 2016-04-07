//
//  main.m
//  NSFileManagerTest
//
//  Created by xgm on 16/3/1.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //  访问文件属性和内容
        NSFileManager* fm = [NSFileManager defaultManager];
        //将会输出代表真的1
        NSLog(@"NSFileManagerTest.m是否存在: %d", [fm fileExistsAtPath:@"main.m"]);
        NSString* dir = [fm currentDirectoryPath];
        NSLog(@"%@", dir);
        
    }
    return 0;
}
