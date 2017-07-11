//
//  TestItem.h
//  CodeDemos
//
//  Created by Simple on 2017/7/11.
//  Copyright © 2017年 lvguifeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestItem : UIView

@property (nonatomic, strong) NSArray *dataAry;

- (instancetype)initWithTitle:(NSString *)title icon:(NSString *)icon;



@end
