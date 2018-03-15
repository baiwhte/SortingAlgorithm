//
//  BWShellSorting.m
//  SortingAlgorithm
//
//  Created by Candy on 2018/3/15.
//  Copyright © 2018年 Candy. All rights reserved.
//

#import "BWShellSorting.h"

@implementation BWShellSorting

- (NSArray *)sortingByAscendingWithArray:(NSArray *)array {
    NSMutableArray *ascendingArr = [array mutableCopy];
    for (NSInteger len = [ascendingArr count], d = len >> 1; d > 0; d /= 2) {
        for (NSInteger i = d; i < len; i = i + d) {
            NSInteger temp = [ascendingArr[i] integerValue];
            NSInteger j;
            for (j = i; j >= d && temp < [ascendingArr[j - d] integerValue]; j -= d){
                ascendingArr[j] = ascendingArr[j - d];
            }
            ascendingArr[j] = @(temp);
        }
        
    }
    return [ascendingArr copy];
}

- (NSArray *)sortingByDescendingWithArray:(NSArray *)array {
    NSMutableArray *descendingArr = [array mutableCopy];
    for (NSInteger len = [descendingArr count], d = len >> 1; d > 0; d /= 2) {
        for (NSInteger i = d; i < len; i = i + d) {
            NSInteger temp = [descendingArr[i] integerValue];
            NSInteger j;
            for (j = i; j >= d && temp > [descendingArr[j - d] integerValue]; j -= d){
                descendingArr[j] = descendingArr[j - d];
            }
            descendingArr[j] = @(temp);
        }
        
    }
    return [descendingArr copy];
}

@end
