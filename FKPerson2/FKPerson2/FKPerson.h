//
//  FKPerson.h
//  FKPerson2
//
//  Created by xgm on 15/12/9.
//  Copyright © 2015年 xgm. All rights reserved.
//

#ifndef FKPerson_h
#define FKPerson_h

@interface FKPerson : NSObject
{
    @private
    NSString* _name;
    int _age;
}
- (void) setName : (NSString*) name;
- (NSString*) name;
- (void) setAge : (int) age;
- (int) age;
@end


#endif /* FKPerson_h */
