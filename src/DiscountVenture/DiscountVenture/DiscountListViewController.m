//
//  DiscountListViewController.m
//  DiscountVenture
//
//  Created by Zhixing Yang on 26/5/14.
//  Copyright (c) 2014 DiscountVenture. All rights reserved.
//

#import "DiscountListViewController.h"

@interface DiscountListViewController ()

@end

@implementation DiscountListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    Discount* d1 = [[Discount alloc] initWithIconURL:@"cocacola"
                                            andTitle:@"Coca Cola"
                                      andDescription:@"With every purchase of $100, $15 is refunded"
                                        andValidFrom:20140412
                                          andValidTo:20140412];
    Discount* d2 = [[Discount alloc] initWithIconURL:@"ikea"
                                            andTitle:@"Ikea Family Care"
                                      andDescription:@"Enjoy 10% discount at our new retail store at Vivo City"
                                        andValidFrom:20140412
                                          andValidTo:20140412];
    Discount* d3 = [[Discount alloc] initWithIconURL:@"sumsung"
                                            andTitle:@"Sumsung"
                                      andDescription:@"All items sell at 15% discount"
                                        andValidFrom:20140412
                                          andValidTo:20140412];
    
    self.discounts = [NSArray arrayWithObjects:d1, d2, d3, nil];
    
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.discounts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DiscountCell";
    DiscountTableViewCell *cell = (DiscountTableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    Discount* discount = [self.discounts objectAtIndex:indexPath.row];
    
    cell.titleLabel.text = discount.title;
    cell.descriptionsLabel.text = discount.description;
    cell.validPeriodLabel.text = @"ffff";
    
    UIImage* image = [UIImage imageNamed:discount.iconURL];
    cell.iconImageView.image = image;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.0;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


 #pragma mark - Navigation
 
 // In a story board-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
     DiscountDetailViewController *destinationVC = (DiscountDetailViewController*)[segue destinationViewController];
     NSIndexPath *path = [self.tableView indexPathForSelectedRow];
     
     self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
     
     destinationVC.discount = [self.discounts objectAtIndex:path.row];
 }
 


- (IBAction)menuButtonPressed:(id)sender {
    [self.slidingViewController anchorTopViewToRightAnimated:YES];
}
@end
