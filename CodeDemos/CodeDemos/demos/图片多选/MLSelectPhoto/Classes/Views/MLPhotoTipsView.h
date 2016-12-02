//
//  MLPhotoTipsView.h
//  cheniu
//
//  Created by Zane on 15/8/19.
//  Copyright (c) 2015年 葛亮. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^clickBlock)();

@interface MLPhotoTipsView : UIControl

@property (nonatomic, copy) clickBlock block;

@end
