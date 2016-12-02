//
//  MLPhotoTipsView.m
//  cheniu
//
//  Created by Zane on 15/8/19.
//  Copyright (c) 2015年 葛亮. All rights reserved.
//

#import "MLPhotoTipsView.h"
#import <Masonry/Masonry.h>

@interface MLPhotoTipsView ()

@property (nonatomic, strong) UIImageView *tipsImage;

@end

@implementation MLPhotoTipsView

- (instancetype)init
{
    if (self = [super init])
    {
        [self setFrame:CGRectMake(0, 64, CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetHeight([UIScreen mainScreen].bounds))];
        [self setBackgroundColor:[UIColor colorWithWhite:0.000 alpha:0.500]];
        [self addSubview:self.tipsImage];
        [self initialConstarints];
    }
    return self;
}

#pragma mark - Constratins Method
- (void)initialConstarints
{
    [self.tipsImage mas_makeConstraints:^(MASConstraintMaker *make)
    {
        make.top.left.right.equalTo(self);
        make.height.equalTo(self.mas_width).multipliedBy(11/16.0);
    }];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self removeFromSuperview];
    if (_block)
    {
        _block();
    }
}

#pragma mark - Getter Methods
- (UIImageView *)tipsImage
{
    if (!_tipsImage)
    {
        _tipsImage = [[UIImageView alloc] init];
        [_tipsImage setContentMode:UIViewContentModeScaleAspectFit];
        [_tipsImage setImage:[UIImage imageNamed:@"dropdown"]];
    }
    return _tipsImage;
}

@end
