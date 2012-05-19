//
//  ViewController.h
//  StronglyTypedTableViewCell
//
//  Created by Jeroen Trappers on 18/05/12.
//  Copyright (c) 2012 iCapps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarCell.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet CarCell *carCellTemplate;


@end
