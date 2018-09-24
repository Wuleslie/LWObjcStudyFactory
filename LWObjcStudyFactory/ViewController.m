//
//  ViewController.m
//  LWObjcStudyFactory
//
//  Created by wuleslie on 2018/9/24.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import "ViewController.h"
#import "LWDrinkCell.h"
#import "LWDrinkCellViewModel.h"
#import <Masonry/Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    UIView *contentView = [[UIView alloc] init];
    contentView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:contentView];
    
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(16);
        make.trailing.equalTo(self.view).offset(-16);
        make.top.equalTo(self.view).offset(64);
    }];
    
    NSMutableArray *masonryViewArray = [NSMutableArray array];
    NSArray *viewModels = [self cellViewModelList];
    for (LWDrinkCellViewModel *viewModel in viewModels) {
        LWDrinkCell *cell = [[LWDrinkCell alloc] initWithFrame:CGRectZero];
        [cell updateWithViewModel:viewModel];
        [contentView addSubview:cell];
        [masonryViewArray addObject:cell];
    }
    
//    [masonryViewArray mas_distributeViewsAlongAxis:MASAxisTypeVertical withFixedSpacing:10 leadSpacing:0 tailSpacing:0];
//    [masonryViewArray mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.leading.trailing.equalTo(contentView);
//    }];
    
    for (int i = 0 ; i< masonryViewArray.count; ++i) {
        UIView *itemView = masonryViewArray[i];
        [itemView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(contentView.mas_left).offset(10);
            make.right.equalTo(contentView.mas_right).offset(0);
            make.centerY.equalTo(contentView.mas_centerY).offset((i*16.5) + 2);
            make.bottom.equalTo(contentView.mas_bottom).offset(-5);
        }];
    }
}

- (NSArray *)cellViewModelList {
    LWDrinkCellViewModel *viewModel1 = [[LWDrinkCellViewModel alloc] init];
    viewModel1.name = @"Gin";
    viewModel1.num = 2;
    viewModel1.memo = @"Special";
    
    LWDrinkCellViewModel *viewModel2 = [[LWDrinkCellViewModel alloc] init];
    viewModel2.name = @"Vodka";
    viewModel2.num = 1;
    viewModel2.memo = @"Very strong";
    
    LWDrinkCellViewModel *viewModel3 = [[LWDrinkCellViewModel alloc] init];
    viewModel3.name = @"Tequila";
    viewModel3.num = 3;
    
    LWDrinkCellViewModel *viewModel4 = [[LWDrinkCellViewModel alloc] init];
    viewModel4.name = @"Bloody Mary";
    viewModel4.num = 2;
    viewModel4.memo = @"Sunday only";
    
//    LWDrinkCellViewModel *viewModel1 = [[LWDrinkCellViewModel alloc] init];
//    viewModel1.name = @"";
//    viewModel1.num = 2;
//    viewModel1.memo = @"Special";
//
//    LWDrinkCellViewModel *viewModel1 = [[LWDrinkCellViewModel alloc] init];
//    viewModel1.name = @"";
//    viewModel1.num = 2;
//    viewModel1.memo = @"Special";
    return @[viewModel1, viewModel2, viewModel3, viewModel4];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
