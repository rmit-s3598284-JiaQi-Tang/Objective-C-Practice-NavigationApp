//
//  Person.h
//  Objective-C_NavigationPractice
//
//  Created by Jacky Tang on 10/10/18.
//  Copyright © 2018 Jacky Tang. All rights reserved.
//

#ifndef Person_h
#define Person_h


#endif /* Person_h */

@interface Person : NSObject

@property NSString *name;
@property int age;
@property NSMutableArray *pets;
- (instancetype) initWithName: (NSString *)name age:(int)age pets:(NSMutableArray *)pets;
- (NSString *) sayHello;
+ (Person *)sharedInstance;
@end
