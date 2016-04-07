//
//  main.m
//  NSDateTest.m
//
//  Created by xgm on 15/12/24.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //获取代表当前日期时间的NSDate
        NSDate* date1 = [NSDate date];
        NSLog(@"%@", date1);
        //获取从当前时间开始，一天之后的日期
        NSDate* date2 = [[NSDate alloc] initWithTimeIntervalSinceNow:3600*24];
        NSLog(@"%@", date2);
        //获取从当前日期开始，3天之前的日期
        NSDate* date3 = [[NSDate alloc] initWithTimeIntervalSinceNow:-3*3600*24];
        NSLog(@"%@", date3);
        NSDate* date4 = [[NSDate alloc] initWithTimeIntervalSince1970:3600*24*366*20];
        NSLog(@"%@", date4);
        NSLocale* cn = [NSLocale currentLocale];
        //获取NSDate在当前locale下对应的字符串
        NSLog(@"%@", [date1 descriptionWithLocale:cn]);
        //获取两个日期之间较早的日期
        NSDate* earlier = [date1 earlierDate:date2];
        //获取两个日期之间较晚的日期
        NSDate* later = [date1 laterDate:date2];
        
        switch ([date1 compare:date3]) {
            case NSOrderedAscending:
                NSLog(@"之前");
                break;
            case    NSOrderedSame:
                NSLog(@"相同");
                break;
            case NSOrderedDescending:
                NSLog(@"之后");
                break;
                
            default:
                break;
        }
        
        //获取两个日期之间的时间差
        NSLog(@"%g", [date1 timeIntervalSinceDate:date3]);
        NSLog(@"%g", [date2 timeIntervalSinceNow]);
    }
    return 0;
}
