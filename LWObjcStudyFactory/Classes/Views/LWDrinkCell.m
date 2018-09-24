//
//  LWDrinkCell.m
//  LWObjcStudyFactory
//
//  Created by wuleslie on 2018/9/24.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import "LWDrinkCell.h"
#import "LWDrinkCellViewModel.h"
#import <Masonry/Masonry.h>

@interface LWDrinkCell ()

@property (nonatomic, strong) LWDrinkCellViewModel *viewModel;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *quantityLabel;
@property (nonatomic, strong) UILabel *remarkLabel;
@property (nonatomic, strong) UIView *dotView;

@end

@implementation LWDrinkCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.nameLabel];
        [self addSubview:self.quantityLabel];
        [self addSubview:self.remarkLabel];
        [self addSubview:self.dotView];
        [self setupConstraints];
    }
    return self;
}

- (void)setupConstraints {
    [self.dotView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.width.mas_equalTo(@4);
        make.leading.equalTo(self).offset(10);
        make.top.equalTo(self).offset(10);
    }];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.dotView);
        make.leading.equalTo(self.dotView.mas_trailing).offset(4);
        make.trailing.lessThanOrEqualTo(self.quantityLabel.mas_leading).offset(-10);
    }];
    [self.quantityLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.dotView.mas_centerY);
        make.trailing.equalTo(self).offset(-10);
    }];
    [self.remarkLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.nameLabel);
        make.top.equalTo(self.nameLabel.mas_bottom).offset(6);
        make.trailing.equalTo(self.quantityLabel);
        make.bottom.equalTo(self).offset(-10);
    }];

}

#pragma mark - Public methods

- (void)updateWithViewModel:(LWDrinkCellViewModel *)viewModel {
    self.viewModel = viewModel;
    self.nameLabel.text = viewModel.name;
    self.quantityLabel.text = [NSString stringWithFormat:@"%@", @(viewModel.num)];
    self.remarkLabel.text = viewModel.memo;
}

#pragma mark - Getters && Getters

- (UILabel *)nameLabel {
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.textColor = [UIColor colorWithWhite:0.4 alpha:1.0];
        _nameLabel.font = [UIFont systemFontOfSize:14];
    }
    return _nameLabel;
}

- (UILabel *)quantityLabel {
    if (!_quantityLabel) {
        _quantityLabel = [[UILabel alloc] init];
        _quantityLabel.textColor = [UIColor colorWithWhite:0.6 alpha:1.0];
        _quantityLabel.font = [UIFont systemFontOfSize:12];
    }
    return _quantityLabel;
}

- (UILabel *)remarkLabel {
    if (!_remarkLabel) {
        _remarkLabel = [[UILabel alloc] init];
        _remarkLabel.textColor = [UIColor colorWithWhite:0.4 alpha:1.0];
        _remarkLabel.font = [UIFont systemFontOfSize:14];
    }
    return _remarkLabel;
}

- (UIView *)dotView {
    if (!_dotView) {
        _dotView = [[UIView alloc] init];
        _dotView.backgroundColor = [UIColor blackColor];
    }
    return _dotView;
}



@end
