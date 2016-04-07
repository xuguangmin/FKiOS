//
//  main.m
//  NSCalendarTest
//
//  Created by xgm on 15/12/26.
//  Copyright © 2015年 xgm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //获取代表公历的Calendar对象
        NSCalendar* gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        //获取当前日期
        NSDate* dt = [NSDate date];
        //定义一个时间字段的旗标，制定获取制定年、月、日、时、分、秒的信息
        unsigned unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
        //获取不同时间字段的信息
        NSDateComponents* comp = [gregorian components:unitFlags fromDate:dt];
        NSLog(@"现在是%ld年", comp.year);
        NSLog(@"现在是%ld月", comp.month);
        NSLog(@"现在是%ld日", comp.day);
        NSLog(@"现在是%ld时", comp.hour);
        NSLog(@"现在是%ld分", comp.minute);
        NSLog(@"现在是%ld秒", comp.second);
        NSLog(@"现在是星期%ld", comp.weekday);
        
        //再次创建一个NSDatecomponents对象
        NSDateComponents* comp2 = [[NSDateComponents alloc] init];
        //设置各时间字段的数值
        comp2.year = 2013;
        comp2.month = 10;
        comp2.day = 15;
        comp2.hour = 12;
        comp2.minute = 30;
        //通过NSDateComponents所包含的时间字段的数值来恢复NSDAte
        NSDate* date = [gregorian dateFromComponents:comp2];
        NSLog(@"%@", date);
        
    }
    return 0;
}
