//
//  Discount.h
//  DiscountVenture
//
//  Created by Zhixing Yang on 26/5/14.
//  Copyright (c) 2014 DiscountVenture. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Discount : NSObject

@property (strong, nonatomic) NSString* iconURL;
@property (strong, nonatomic) NSString* title;

@property (strong, nonatomic) NSString* discountDescription;

// Format: "yyyymmdd"
@property (nonatomic) int validFrom;
@property (nonatomic) int validTo;

- (id) initWithIconURL: (NSString*) u
              andTitle: (NSString*) s
        andDescription: (NSString*) d
        andValidFrom: (int) vf
            andValidTo: (int) vt;

@end
