//
//  NSArray+Ex.m
//  TestCategory
//
//  Created by Alexander on 23.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "NSArray+Ex.h"

@implementation NSArray (Ex)

- (NSInteger)sum
{
    NSInteger result = 0;
    for (NSNumber *val in self) {
        if ([val respondsToSelector:@selector(integerValue)])
            result += [val integerValue];
    }
    return result;
}

- (void)fsdfsd:(int)l sdfsdfs:(int)dfsdfgd
{
    
}

@end
