//
//  LWDrinkCell.h
//  LWObjcStudyFactory
//
//  Created by wuleslie on 2018/9/24.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LWDrinkCellViewModel;

@interface LWDrinkCell : UIView

- (void)updateWithViewModel:(LWDrinkCellViewModel *)viewModel;

@end
