//
//  ViewController.m
//  SortingAlgorithm
//
//  Created by Candy on 2018/3/15.
//  Copyright © 2018年 Candy. All rights reserved.
//

#import "BWViewController.h"
#import "BWSortingFactory.h"

@interface BWViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *sortingArray;
@property (nonatomic, strong) NSArray *sortings;

@end

@implementation BWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sortingArray = @[@49, @38, @65, @97, @76, @13, @27, @49, @55, @4]; //, @55, @4
    self.sortings = @[@"插入排序", @"冒泡排序", @"希尔排序", @"快速排序"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.sortings count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = self.sortings[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    BWSortingAlgorithm *sorting = [BWSortingFactory createSortingAlgorithm:(BWSorting)indexPath.row];
    NSArray *after = [sorting sortingByAscendingWithArray:self.sortingArray];
    NSLog(@"%@后：%@", self.sortings[indexPath.row], after);
}

@end
