//
//  CardTableViewController.h
//  DiscountVenture
//
//  Created by Zhixing Yang on 26/5/14.
//  Copyright (c) 2014 DiscountVenture. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "Card.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface CardTableViewController : UITableViewController

@property (strong, nonatomic) NSMutableArray* cards;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButtonPressed;

@end
