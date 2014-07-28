//
//  BNRItem.h
//  RandomItems
//
//  Created by Krzysztof Kula on 25.07.2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

@import Foundation;

@interface BNRItem : NSObject

@property BNRItem *_containedItem;
@property BNRItem *_container;

@property NSString *itemName;
@property NSString *serialNumber;
@property int valueInDollars;
@property NSDate *dateCreated;

+ (instancetype)randomItem;

//designated initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;
- (instancetype)initWithItemName:(NSString *)name
                    serialNumber:(NSString *)sNumber;
- (instancetype)initWithItemName:(NSString *)name;

@end
