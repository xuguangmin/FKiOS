//
//  main.m
//  NSFileHandleTest
//
//  Created by xgm on 16/3/2.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 打开一份文件准备读取
        NSFileHandle* fh = [NSFileHandle fileHandleForReadingAtPath:@"a.txt"];
        NSData* data;
        //读取NSFileHandle中的256字节
        while([(data = [fh readDataOfLength:512]) length] > 0) {
            NSLog(@"%ld", [data length]);
            //直接将NSData的数据用UTF－8的格式转换字符串
            NSString* content = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"---输出读取的512字节----");
            NSLog(@"%@", content);
        }
        //关闭文件
        [fh closeFile];
        NSFileHandle* fh2 = [NSFileHandle fileHandleForWritingAtPath:@"abc.txt"];
        if(!fh2){
            //创建一个NSFileManger对象
            NSFileManager* fm = [NSFileManager defaultManager];
            //创建一份空的文件
            [fm createFileAtPath:@"abc.txt" contents:nil attributes:nil];
            
        }
        NSString* mybook = @"疯狂IOS讲义";
        [fh2 writeData:[mybook dataUsingEncoding:NSUTF8StringEncoding]];
        [fh2 closeFile];
        NSLog(@"Hello, World!");
    }
    return 0;
}
