//
//  TuCengViewController.m
//  CodeDemos
//
//  Created by qddios2 on 17/3/24.
//  Copyright © 2017年 lvguifeng. All rights reserved.
//

#import "TuCengViewController.h"

@interface TuCengViewController ()
@property (nonatomic, strong) UIView *layerView;

@end

@implementation TuCengViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = @"图层树";
    
    CGRect frame = CGRectMake(100, 100, 200, 200);
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor redColor];
    self.layerView = view;
    [self.view addSubview:view];
    
    CALayer *blueLayer = [CALayer layer];
    blueLayer.frame = CGRectMake(50, 50, 100, 100);
    blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    
    [self.layerView.layer addSublayer:blueLayer];
    
}

- (void)explain
{
    /**
    1. UIView 和 CALayer 提供两个平行的层级关系呢?为什 么不用一个简单的层级来处理所有事情呢?
     在iOS和Mac OS两个平台上,事件和用户交互有很多地方的不同, 基于多点触控的用户界面和基于鼠标键盘有着本质的区别,这就是为iOS有 UIKit和 UIView ,但是Mac OS有AppKit和 NSView 的原因
     2. 视图不能做CALayer 可以做 : 
        阴影,圆角,带颜色的边框
        3D变换
        非矩形范围
        透明遮罩
        多级非线性动画
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
