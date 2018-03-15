//
//  BWBubbleSorting.m
//  SortingAlgorithm
//
//  Created by Candy on 2018/3/15.
//  Copyright © 2018年 Candy. All rights reserved.
//

#import "BWBubbleSorting.h"

@implementation BWBubbleSorting

- (NSArray *)sortingByAscendingWithArray:(NSArray *)array {
    NSMutableArray *ascendingArr = [array mutableCopy];
    for (NSUInteger i = 0; i < ascendingArr.count; i++) {
        for (NSUInteger j = 0; j < ascendingArr.count - 1 - i; j++) {
            if ([ascendingArr[j + 1] integerValue] < [ascendingArr[j] integerValue]) {
                [ascendingArr exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
            }
        }
    }
    return [ascendingArr copy];
}

- (NSArray *)sortingByDescendingWithArray:(NSArray *)array {
    NSMutableArray *mutableArray = [array mutableCopy];
    for (NSUInteger i = 0; i < [mutableArray count]; i++) {
        for (NSUInteger j = 0; j < mutableArray.count - 1 - i; j++) {
            if ([mutableArray[j] integerValue] < [mutableArray[j + 1] integerValue]) {
                [mutableArray exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
            }
        }
    }
    return [mutableArray copy];
}

@end
