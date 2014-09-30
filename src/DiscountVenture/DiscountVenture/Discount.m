//
//  Discount.m
//  DiscountVenture
//
//  Created by Zhixing Yang on 26/5/14.
//  Copyright (c) 2014 DiscountVenture. All rights reserved.
//

#import "Discount.h"

@implementation Discount


- (id) initWithIconURL: (NSString*) u
              andTitle: (NSString*) s
        andDescription: (NSString*) d
          andValidFrom:(int)vf
            andValidTo:(int)vt{
    self = [super init];
    if (self) {
        
        self.iconURL = u;
        self.title = s;
        self.discountDescription = d;
        self.validFrom = vf;
        self.validFrom = vt;
    }
    return self;
}


@end
