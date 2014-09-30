//
//  DiscountListViewController.h
//  DiscountVenture
//
//  Created by Zhixing Yang on 26/5/14.
//  Copyright (c) 2014 DiscountVenture. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ECSlidingViewController/UIViewController+ECSlidingViewController.h>
#import "Discount.h"
#import "DiscountTableViewCell.h"
#import "DiscountDetailViewController.h"
#import <Parse/Parse.h>
#import <SDWebImage/UIImageView+WebCache.h>

enum discountListType{
    TYPE_DEFAULT,
    TYPE_NEARBY,
    TYPE_CATEGORY,
    TYPE_FAVOURITES,
    TYPE_ADVANCED_SEARCH
};

@interface DiscountListViewController : UIViewController

@property (nonatomic) enum discountListType disCountType;
@property (strong, nonatomic) NSMutableArray* discounts;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


- (IBAction)menuButtonPressed:(id)sender;

@end
