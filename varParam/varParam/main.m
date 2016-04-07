//
//  main.m
//  varParam
//
//  Created by xgm on 15/12/8.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Varargs.h"

@implementation VarArgs
- (void)test: (NSString *) name, ...
{
	//使用va_list定义一个argList指针变量，该指针变量指向可变参数列表
	va_list argList;
	//如果第一个name参数存在，才需要处理后面的参数 
	if (name) {
		//由于name参数并不在可变参数列表中，因此先处理name参数
        	NSLog(@"%@", name);
		//让argList指向可变参数参数列表的第一个参数,开始提取可变参数列表的参数
		va_start(argList, name);
		//va_arg用于提取argList指针当前指向的参数，并将指针移动到指向下一个参数
		//arg变量用于保存当前获取的参数，如果该参数不为nil,进入循环体
		NSString* arg = va_arg(argList, id);
		while(arg) {
			//打印出每一个参数
			NSLog(@"%@", arg);
			//再次提取下一个参数，并将指针移动到下一个参数
			arg = va_arg(argList, id);
		}
		//释放argList指针，结束提取
		va_end(argList);
	}
}
@end

int main(int argc, char **argv) {
	@autoreleasepool{
		VarArgs* va = [[VarArgs alloc] init];
		[va test:@"疯狂IOS讲义"
			, @"疯狂Android讲义", @"疯狂Ajax讲义", nil];
	}
}
