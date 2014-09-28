//
//  DiscountTableViewCell.h
//  DiscountVenture
//
//  Created by Zhixing Yang on 26/5/14.
//  Copyright (c) 2014 DiscountVenture. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DiscountTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionsLabel;
@property (weak, nonatomic) IBOutlet UILabel *validPeriodLabel;


@end
