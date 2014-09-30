//
//  Card.h
//  DiscountVenture
//
//  Created by Zhixing Yang on 30/9/14.
//  Copyright (c) 2014 DiscountVenture. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString* cardName;
@property (strong, nonatomic) NSString* iconURL;

- (id) initWithCardName: (NSString*) cardName
             andIconURL: (NSString*) iconURL;


@end
