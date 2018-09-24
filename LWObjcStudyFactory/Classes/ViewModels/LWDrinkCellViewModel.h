//
//  LWDrinkCellViewModel.h
//  LWObjcStudyFactory
//
//  Created by wuleslie on 2018/9/24.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LWDrinkCellViewModel : NSObject

@property (nonatomic, assign) NSInteger num;
@property (nonatomic, copy) NSString *accountUnit;
@property (nonatomic, strong) NSString *specDetailName;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *memo;

@end
