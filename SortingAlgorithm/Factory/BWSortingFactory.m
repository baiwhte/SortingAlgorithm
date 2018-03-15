//
//  BWSortingFactory.m
//  SortingAlgorithm
//
//  Created by Candy on 2018/3/15.
//  Copyright © 2018年 Candy. All rights reserved.
//

#import "BWSortingFactory.h"

#import "BWInsertSorting.h"
#import "BWBubbleSorting.h"
#import "BWShellSorting.h"
#import "BWQuickSorting.h"

@implementation BWSortingFactory

+ (__kindof BWSortingAlgorithm *)createSortingAlgorithm:(BWSorting)sorting {
    BWSortingAlgorithm *sortingAlgorithm;
    switch (sorting) {
        case BWSortingByInsert:
        {
            sortingAlgorithm = [[BWInsertSorting alloc] init];
        }
            break;
        case BWSortingByBubble:
        {
            sortingAlgorithm = [[BWBubbleSorting alloc] init];
        }
            break;
        case BWSortingByShell:
        {
            sortingAlgorithm = [[BWShellSorting alloc] init];
        }
            break;
        case BWSortingByQuick:
        {
            sortingAlgorithm = [[BWQuickSorting alloc] init];
        }
            break;
        default:
            break;
    }
    return sortingAlgorithm;
}

@end
