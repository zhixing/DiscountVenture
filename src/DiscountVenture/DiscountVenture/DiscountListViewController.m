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
    [self loadDateFromServer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Load Data

- (void) loadDateFromServer{
    
    self.discounts = [[NSMutableArray alloc] init];
    
    PFQuery *query = [PFQuery queryWithClassName:@"Discount"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            NSLog(@"Successfully retrieved %d discounts.", objects.count);

            for (PFObject *object in objects) {
                NSLog(@"%@", object);
                Discount* discount = [[Discount alloc] initWithIconURL:object[@"iconURL"]
                                                              andTitle:object[@"title"]
                                                        andDescription:object[@"discountDescription"]
                                                          andValidFrom: (int)object[@"validFrom"]
                                                            andValidTo: (int)object[@"validFrom"]];
                [self.discounts addObject: discount];
            }
            
            [self.tableView reloadData];
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
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
    cell.descriptionsLabel.text = discount.discountDescription;
    cell.validPeriodLabel.text = @"Valid till 12 Dec 2014";
    
    [cell.iconImageView setImageWithURL:[NSURL URLWithString:discount.iconURL]
                       placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    
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
