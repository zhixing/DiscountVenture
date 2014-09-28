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

@property (strong, nonatomic) NSString* description;

@property (strong, nonatomic) NSString* validPeriod;

- (id) initWithIconURL: (NSString*) u
              andTitle: (NSString*) s
        andDescription: (NSString*) d
        andValidPeriod: (NSString*) v;

@end
