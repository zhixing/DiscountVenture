//
//  MenuTableViewController.m
//  DiscountVenture
//
//  Created by Zhixing Yang on 26/5/14.
//  Copyright (c) 2014 DiscountVenture. All rights reserved.
//

#import "MenuTableViewController.h"
#import <ECSlidingViewController/UIViewController+ECSlidingViewController.h>

@interface MenuTableViewController (){
    NSArray *iconImages;
    NSArray *titles;
}

@end

@implementation MenuTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    iconImages = [NSArray arrayWithObjects:@"nearby", @"category", @"cards", @"favourites", @"search", @"account", nil];
    titles = [NSArray arrayWithObjects:@"Nearby", @"Category", @"Cards", @"My Favourites", @"Advanced Search", @"Account", nil];
    
    // Select the first row, because the default vc to load is the major mc.
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView selectRowAtIndexPath:indexPath animated:NO scrollPosition:UITableViewScrollPositionNone];
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
    return [titles count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MenuCell";
    MenuTableViewCell *cell = (MenuTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell.nameLabel.text = [titles objectAtIndex:indexPath.row];
    
    UIImage* image = [UIImage imageNamed:[iconImages objectAtIndex:indexPath.row]];
    cell.iconImageView.image = image;
        
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *title = titles[indexPath.row];
    
//    if ([title isEqualToString:@"万门课程"] || [title isEqualToString:@"我的课程"]) {
//        
//        UINavigationController *vc = (UINavigationController*)[self.storyboard instantiateViewControllerWithIdentifier:@"NVBeforeMajorTableVC"];
//        
//        MajorsTableViewController* majorsTableViewController = (MajorsTableViewController*)[vc.viewControllers objectAtIndex:0];
//        
//        if ([title isEqualToString:@"万门课程"]) {
//            majorsTableViewController.majorType = TYPE_WANMEN;
//        } else if ([title isEqualToString:@"我的课程"]){
//            majorsTableViewController.majorType = TYPE_MINE;
//        }
//        [self.slidingViewController setTopViewController:vc];
//        [self.slidingViewController resetTopViewAnimated:YES];
//        
//    } else if ([title isEqualToString:@"系统设置"]) {
//        
//        NSLog(@"系统设置 pressed");
//        // TODO NOT implemented yet
//        
//    }
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

/*
 #pragma mark - Navigation
 
 // In a story board-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 
 */

@end
