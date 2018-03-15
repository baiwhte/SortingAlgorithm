//
//  BWSortingAlgorithm.m
//  SortingAlgorithm
//
//  Created by Candy on 2018/3/15.
//  Copyright © 2018年 Candy. All rights reserved.
//

#import "BWSortingAlgorithm.h"

@implementation BWSortingAlgorithm

- (NSArray *)sortingByAscendingWithArray:(NSArray *)array {
    NSString *reason = [NSString stringWithFormat:@"%@ must be overridden by subclasses", NSStringFromSelector(_cmd)];
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:reason userInfo:nil];
}

- (NSArray *)sortingByDescendingWithArray:(NSArray *)array {
    NSString *reason = [NSString stringWithFormat:@"%@ must be overridden by subclasses", NSStringFromSelector(_cmd)];
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:reason userInfo:nil];
}

@end
