//
//  ViewController.m
//  StronglyTypedTableViewCell
//
//  Created by Jeroen Trappers on 18/05/12.
//  Copyright (c) 2012 iCapps. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *cars;

@end

@implementation ViewController

@synthesize carCellTemplate = _carCellTemplate;

@synthesize cars = _cars;

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.cars = [[NSMutableArray alloc]initWithCapacity:14];
    
    [self.cars addObject:[[Car alloc]initWithMake:@"Volkswagen" type:@"Polo"]];
    [self.cars addObject:[[Car alloc]initWithMake:@"Ford" type:@"Mondeo"]];
    [self.cars addObject:[[Car alloc]initWithMake:@"Mini" type:@"Cooper"]];
    [self.cars addObject:[[Car alloc]initWithMake:@"BMW" type:@"X3"]];
    [self.cars addObject:[[Car alloc]initWithMake:@"Audi" type:@"Q5"]];
    [self.cars addObject:[[Car alloc]initWithMake:@"Renault" type:@"Wind"]];
    [self.cars addObject:[[Car alloc]initWithMake:@"Chevrolet" type:@"Impala"]];
    [self.cars addObject:[[Car alloc]initWithMake:@"Porsche" type:@"928"]];
    [self.cars addObject:[[Car alloc]initWithMake:@"Lamborghini" type:@"Murchielago"]];
    [self.cars addObject:[[Car alloc]initWithMake:@"Fisker" type:@"Karma"]];
    [self.cars addObject:[[Car alloc]initWithMake:@"Nissan" type:@"Leaf"]];
    [self.cars addObject:[[Car alloc]initWithMake:@"Toyota" type:@"Auris"]];
    [self.cars addObject:[[Car alloc]initWithMake:@"Citroen" type:@"DS5"]];
    [self.cars addObject:[[Car alloc]initWithMake:@"Peugeot" type:@"205"]];
    
    
}

- (void)viewDidUnload
{
    [self setCarCellTemplate:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section
{
    return self.cars.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // static string is only initialized once for this method.
    static NSString *reuseId = @"carCell";
    
    // try to reuse an existing table view cell.
    CarCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId]; 
    
    if(nil == cell)
    {
        // if no cell is available for reuse, we create it, with the same reuseId.
        // instead of using a standard UITableViewCell style, we create our custom CarCell
        
        // load the objects in the nib, and setup the "file owner" to self
        [[NSBundle mainBundle] loadNibNamed:@"CarCell" owner:self options:nil];
        
        // at this point, self.carCellTemplate points to the CarCell that 
        // was defined in the Xib.
        
        // so now we have a reference to it.
        cell = self.carCellTemplate;
    }
    
    // next we customize the content of the TableViewCell
    
    // get the object we want to show:
    Car *car = [self.cars objectAtIndex:indexPath.row];
    
    // we now have a typed api to customize our cell:
    cell.makeLabel.text = car.make;
    cell.typeLabel.text = car.type;
    
    // return the customized cell
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView 
    heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}

@end
