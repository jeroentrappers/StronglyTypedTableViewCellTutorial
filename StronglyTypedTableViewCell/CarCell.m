//
//  CarCell.m
//  StronglyTypedTableViewCell
//
//  Created by Jeroen Trappers on 18/05/12.
//  Copyright (c) 2012 iCapps. All rights reserved.
//

#import "CarCell.h"

@implementation CarCell
@synthesize makeLabel;
@synthesize typeLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
