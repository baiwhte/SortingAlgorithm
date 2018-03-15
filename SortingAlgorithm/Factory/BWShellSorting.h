//
//  BWShellSorting.h
//  SortingAlgorithm
//
//  Created by Candy on 2018/3/15.
//  Copyright © 2018年 Candy. All rights reserved.
//

#import "BWSortingAlgorithm.h"

// 希尔排序 又称 缩小增量排序 

// 原理： 希尔排序是对插入排序的一种改进。它的基本思想是，先将整个待排记录序列分割成为若干子序列，
//    分别进行直接插入排序，待整个序列中的记录“基本有序”时，再对全体记录进行一次直接插入排序。

// 原理说明： 取一个增量d1<n，使得距离为d1的元素分在一组，每组进行直接插入排序，然后再取d2<d1，
//          进行排序，直到所有元素都在一组，即增量为1。
@interface BWShellSorting : BWSortingAlgorithm

@end
