//
//  BWQuickSorting.m
//  SortingAlgorithm
//
//  Created by Candy on 2018/3/15.
//  Copyright © 2018年 Candy. All rights reserved.
//

#import "BWQuickSorting.h"

@implementation BWQuickSorting

- (NSArray *)sortingByAscendingWithArray:(NSArray *)array {
    NSMutableArray *ascendingArr = [array mutableCopy];
    [self quickSorting_:ascendingArr low:0 high:[array count] - 1];
    return [ascendingArr copy];
}

- (void)quickSorting_:(NSMutableArray *)array low:(NSInteger)low high:(NSInteger)high {
    if (low < high) {
        NSInteger privoLoc = [self partition_:array low:low high:high];
        [self quickSorting_:array low:low high:privoLoc - 1];
        [self quickSorting_:array low:privoLoc + 1 high:high];
    }
}

- (NSInteger)partition_:(NSMutableArray *)array low:(NSInteger)low high:(NSInteger)high {
//    NSAssert([[array class] isKindOfClass:[NSMutableArray class]], @"array must be a NSMutableArray");
    NSInteger privotKey = [array[low] integerValue];
    while (low < high) {
        while (low < high && [array[high] integerValue] >= privotKey) {
            high--;
        }
        array[low] = array[high];
        while (low < high && [array[low] integerValue] <= privotKey) {
            low++;
        }
        array[high] = array[low];
    }
    array[low] = @(privotKey);
    
    return low;
}

@end
