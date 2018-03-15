//
//  BWSortingFactory.h
//  SortingAlgorithm
//
//  Created by Candy on 2018/3/15.
//  Copyright © 2018年 Candy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BWSortingAlgorithm.h"

typedef NS_ENUM(NSUInteger, BWSorting) {
    BWSortingByInsert = 0, //插入排序
    BWSortingByBubble, //冒泡排序
    BWSortingByShell,  //希尔排序
    BWSortingByQuick,  //快速排序
};

@interface BWSortingFactory : NSObject

+ (__kindof BWSortingAlgorithm *)createSortingAlgorithm:(BWSorting)sorting;

@end
