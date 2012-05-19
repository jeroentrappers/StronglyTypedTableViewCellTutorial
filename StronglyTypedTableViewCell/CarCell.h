//
//  CarCell.h
//  StronglyTypedTableViewCell
//
//  Created by Jeroen Trappers on 18/05/12.
//  Copyright (c) 2012 iCapps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *makeLabel;

@property (weak, nonatomic) IBOutlet UILabel *typeLabel;

@end
