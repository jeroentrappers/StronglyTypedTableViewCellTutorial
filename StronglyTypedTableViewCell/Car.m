//
//  Car.m
//  StronglyTypedTableViewCell
//
//  Created by Jeroen Trappers on 18/05/12.
//  Copyright (c) 2012 iCapps. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize make = _make;
@synthesize type = _type;

- (id) initWithMake:(NSString*) make
               type:(NSString*) type
{
    self = [super init];
    if (self)
    {
        self.make = make;
        self.type = type;
    }
    return self;
}

@end
