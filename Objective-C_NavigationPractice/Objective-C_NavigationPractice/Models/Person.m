//
//  Person.m
//  Objective-C_NavigationPractice
//
//  Created by Jacky Tang on 10/10/18.
//  Copyright © 2018 Jacky Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@implementation Person

- (instancetype) initWithName:(NSString *)name age:(int)age pets:(NSMutableArray *)pets {
    self = [super init];
    if (self != nil) {
        _name = name;
        _age = age;
        _pets = pets;
    }
    return self;
}
- (instancetype) init {
    self = [self initWithName: @"Jacky" age: 23 pets:[NSMutableArray arrayWithObjects:@"PangPang dog", @"PiPi cat", @"DanHuang cat", @"Angela cat", @" Leon cat", nil]];
    return self;
}
- (NSString *) sayHello {
    return @"Hello, world !";
}
#pragma mark - singleton method

+ (Person *)sharedInstance
{
    static dispatch_once_t predicate = 0;
    __strong static id sharedObject = nil;
        //static id sharedObject = nil;  //if you're not using ARC
    dispatch_once(&predicate, ^{
        sharedObject = [[self alloc] init];
            //sharedObject = [[[self alloc] init] retain]; // if you're not using ARC
    });
    return sharedObject;
}

@end
