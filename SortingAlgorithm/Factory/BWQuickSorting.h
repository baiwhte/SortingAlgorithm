//
//  BWQuickSorting.h
//  SortingAlgorithm
//
//  Created by Candy on 2018/3/15.
//  Copyright © 2018年 Candy. All rights reserved.
//

#import "BWSortingAlgorithm.h"

// 快速排序

// 原理： 快速排序是对冒泡排序的一种改进。它的基本思想是，通过一趟排序将待排记录分割成独立的两部分，
//    其中一部分记录的关键字均比另一部分记录的关键字小，则可分别对这两部分记录继续进行快速排序，
//    以达到整个序列有序。
// 原理说明： 选择一个基数(关键字)，一般我们选择第一个数，然后把大于该数的放右边，小于该数的放左边，
//        然后分别对左右两边用同样的方法处理，直到排序结束。

// 示例
//    原始序列：49, 38, 65, 97, 76, 13, 27, 49
//
//
//-→
//
//-➞
//
//
//−-⟶
//
//
//
//
//
//
@interface BWQuickSorting : BWSortingAlgorithm

@end
