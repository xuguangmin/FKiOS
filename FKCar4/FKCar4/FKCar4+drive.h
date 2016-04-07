//
//  FKCar4+drive.h
//  FKCar4
//
//  Created by xgm on 15/12/19.
//  Copyright © 2015年 xgm. All rights reserved.
//

#ifndef FKCar4_drive_h
#define FKCar4_drive_h
#import "FKCar4.h"

//定义Car的扩展
@interface FKCar4 ()
@property (nonatomic, copy) NSString* color;
- (void) drive : (NSString*) owner;
@end
#endif /* FKCar4_drive_h */
