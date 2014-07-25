//
//  main.m
//  RandomItems
//
//  Created by Krzysztof Kula on 25.07.2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        [items insertObject:@"Zero" atIndex:0];
        
//        for (int i = 0; i < [items count]; i++) {
//            NSString *item = [items objectAtIndex:i];
//            NSLog(@"%@", item);
//        }
        
        for (NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
                                           valueInDollars:100
                                             serialNumber:@"A1B2C"];
        NSLog(@"%@", item);
        
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);
        
        BNRItem *itemWithNoName = [[BNRItem alloc] init];
        NSLog(@"%@", itemWithNoName);
        
        items = nil;
    }
    return 0;
}

