//
//  Car.h
//  StronglyTypedTableViewCell
//
//  Created by Jeroen Trappers on 18/05/12.
//  Copyright (c) 2012 iCapps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (nonatomic, strong) NSString *make;
@property (nonatomic, strong) NSString *type;

- (id) initWithMake:(NSString*) make
               type:(NSString*) type;

@end
