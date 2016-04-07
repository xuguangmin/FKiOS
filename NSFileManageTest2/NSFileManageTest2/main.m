//
//  main.m
//  NSFileManageTest2
//
//  Created by xgm on 16/3/1.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //  创建目录和文件并复制文件
        NSFileManager* fm = [NSFileManager defaultManager];
        //创建目录
        [fm createDirectoryAtPath:@"abc" withIntermediateDirectories:YES attributes:nil error:nil];
        NSString* content = @"<疯狂IOS>， 好书 ";
        //创建文件
        [fm createFileAtPath:@"aaa.txt" contents:[content dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
        //复制一份文件
        [fm copyItemAtPath:@"aaa.txt" toPath:@"xgm.txt" error:nil];
        //获取指定目录下的所有文件和文件夹
        NSArray* array = [fm contentsOfDirectoryAtPath:@"." error:nil];
        for(NSString* item in array) {
            NSLog(@"%@", item);
        }
        //获取指定目录下所有文件和文件夹对应的枚举器
        NSDirectoryEnumerator* dirEnum = [fm enumeratorAtPath:@"."];
        NSString* file;
        //枚举dirEnum中包含的每个文件
        while((file = [dirEnum nextObject])){
            //如果该文件的文件名以.m结尾
            if([[file pathExtension] isEqualToString:@"m"]){
                //直接获取文件内容
                NSData* data = [fm contentsAtPath:file];
                //直接将NSData的数据用UTF－8的格式转换字符串
                NSString* content = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                NSLog(@"－－－－输出文件内容－－－－－－");
                NSLog(@"%@", content);
            }
        }
        
        //获取当前目录下的所有子目录
        NSArray* subDir = [fm subpathsAtPath:@"."];
        for(NSString* item in subDir) {
            NSLog(@"%@", item);
        }
        NSLog(@"Hello, World!");
    }
    return 0;
}
