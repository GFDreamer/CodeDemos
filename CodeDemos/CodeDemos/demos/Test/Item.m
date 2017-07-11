//
//  Item.m
//  CodeDemos
//
//  Created by Simple on 2017/7/11.
//  Copyright © 2017年 lvguifeng. All rights reserved.
//

#import "Item.h"

@interface Item   ()

@property (nonatomic, strong) UIView *circle;
@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation Item

- (instancetype)initWithContent:(NSString *)content
{
    self = [super init];
    if (self) {
        self.contentLabel.text = content;
        [self addSubview:self.circle ];
        [self addSubview:self.contentLabel];
        [self createConstraints];
    }
    return self;
}

- (void)createConstraints
{
    [self.circle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(15);
        make.top.equalTo(self).offset(17);
        make.width.height.equalTo(@6);
    }];
    
    [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.circle.mas_right).offset(10);
        make.top.equalTo(self.mas_top).offset(10);
        make.right.equalTo(self.mas_right).offset(-15);
        make.height.greaterThanOrEqualTo(@14);
        make.bottom.equalTo(self);
    }];
}

- (UIView *)circle
{
    if (_circle == nil) {
        _circle = [[UIView alloc] init];
        _circle.layer.cornerRadius = 3;
        _circle.layer.masksToBounds = YES;
        _circle.backgroundColor = [UIColor blackColor];
    }
    return _circle;
}

- (UILabel *)contentLabel
{
    if (_contentLabel == nil) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor blueColor];
        _contentLabel.numberOfLines = 0;
    }
    return _contentLabel;
}

@end
