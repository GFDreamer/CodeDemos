//
//  TestItem.m
//  CodeDemos
//
//  Created by Simple on 2017/7/11.
//  Copyright © 2017年 lvguifeng. All rights reserved.
//

#import "TestItem.h"
#import <Masonry/Masonry.h>
#import "Item.h"
@interface TestItem ()

@property(nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *icon;
@property (nonatomic, strong) UIView *line;

@property (nonatomic, strong) UIView *containter;


@end

@implementation TestItem

- (instancetype)initWithTitle:(NSString *)title icon:(NSString *)icon
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        self.titleLabel.text = title;
        [self addSubview:self.titleLabel];
        [self addSubview:self.icon];
        [self addSubview:self.line];
        [self addSubview:self.containter];
        [self createConstraints];
    }
    return self;
}

- (void)createConstraints
{
    [self.icon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(15);
        make.top.equalTo(self).offset(10);
        make.width.height.greaterThanOrEqualTo(@20);
    }];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.icon);
        make.left.equalTo(self.icon.mas_right).offset(10);
        make.top.equalTo(self).offset(10);
    }];
    
    [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self);
        make.top.equalTo(self.icon.mas_bottom).offset(10);
        make.height.equalTo(@0.5);
    }];
    
    [self.containter mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(self);
        make.top.equalTo(self.line.mas_bottom).offset(15);
    }];
    
    
}

#pragma mark - setter

- (void)setDataAry:(NSArray *)dataAry
{
    _dataAry = dataAry;
    
    for (NSString *content in _dataAry) {
        Item *item = [[Item alloc] initWithContent:content];
        [ self.containter addSubview:item];
    }
    
    UIView *topView = self.containter;
    for (int i = 0; i < self.containter.subviews.count; i++) {
        Item *item = self.containter.subviews[i];
        if (i == 0) {
            [item mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.right.equalTo(self.containter);
                make.top.equalTo(topView.mas_top);
            }];
        } else {
            [item mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(topView.mas_bottom);
                make.left.right.equalTo(self.containter);
            }];
            
            if (i == self.containter.subviews.count - 1) {
                [item mas_updateConstraints:^(MASConstraintMaker *make) {
                    make.bottom.equalTo(self.containter);
                }];
            }
        }
        topView = item;
    }
    
}

#pragma mark - getter

- (UIView *)containter
{
    if (_containter == nil) {
        _containter = [[UIView alloc] init];
        
    }
    return _containter;
}

- (UIImageView *)icon
{
    if (_icon == nil) {
        _icon = [[UIImageView alloc] init];
        _icon.backgroundColor = [UIColor yellowColor];
    }
    return _icon;
}

- (UILabel *)titleLabel
{
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] init];
    }
    return _titleLabel;
}

- (UIView *)line
{
    if (_line == nil) {
        _line = [[UIView alloc] init];
        _line.backgroundColor = [UIColor yellowColor];
    }
    return _line;
}

@end
