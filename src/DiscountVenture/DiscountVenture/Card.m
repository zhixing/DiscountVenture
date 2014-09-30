//
//  Card.m
//  DiscountVenture
//
//  Created by Zhixing Yang on 30/9/14.
//  Copyright (c) 2014 DiscountVenture. All rights reserved.
//

#import "Card.h"

@implementation Card

- (id) initWithCardName: (NSString*) cardName
             andIconURL: (NSString*) iconURL{
    
    self = [super init];
    if (self) {
        
        self.iconURL = iconURL;
        self.cardName = cardName;
    
    }
    return self;
}

@end
