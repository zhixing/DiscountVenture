//
//  DiscountDetailViewController.h
//  DiscountVenture
//
//  Created by Zhixing Yang on 26/5/14.
//  Copyright (c) 2014 DiscountVenture. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Discount.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface DiscountDetailViewController : UIViewController

@property (strong, nonatomic) Discount* discount;

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *validPeriodLabel;

@property (weak, nonatomic) IBOutlet UILabel *descriptionsLabel;


@end
