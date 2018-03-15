//
//  BWInsertSorting.m
//  SortingAlgorithm
//
//  Created by Candy on 2018/3/15.
//  Copyright © 2018年 Candy. All rights reserved.
//

#import "BWInsertSorting.h"

@implementation BWInsertSorting

- (NSArray *)sortingByAscendingWithArray:(NSArray *)array {
    NSMutableArray *ascendingArr = [array mutableCopy];
    for (NSInteger i = 1; i < ascendingArr.count; i++) {
        NSInteger temp = [ascendingArr[i] integerValue];
        NSInteger j = i - 1;
        for (; j >= 0 && temp < [ascendingArr[j] integerValue]; j--) {
            ascendingArr[j + 1] = ascendingArr[j];
        }
        ascendingArr[j + 1] = @(temp);
    }
    return [ascendingArr copy];
}

- (NSArray *)sortingByDescendingWithArray:(NSArray *)array {
    NSMutableArray *descendingArr = [array mutableCopy];
    for (NSInteger i = 1; i < descendingArr.count; i++) {
        NSInteger temp = [descendingArr[i] integerValue];
        NSInteger j = i - 1;
        for (; j >= 0 && temp > [descendingArr[j] integerValue]; j--) {
            descendingArr[j + 1] = descendingArr[j];
        }
        descendingArr[j + 1] = @(temp);
    }
    return [descendingArr copy];
}

@end
