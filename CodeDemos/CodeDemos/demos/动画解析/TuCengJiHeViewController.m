//
//  TuCengJiHeViewController.m
//  CodeDemos
//
//  Created by qddios2 on 17/3/24.
//  Copyright © 2017年 lvguifeng. All rights reserved.
//

#import "TuCengJiHeViewController.h"

@interface TuCengJiHeViewController ()
@property (nonatomic, strong) UIView *layerView;

@property (nonatomic, strong) UIView *redView;
@end

@implementation TuCengJiHeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 100, 100)];
    view2.backgroundColor = [UIColor redColor];
    [self.view addSubview:view2];
    
    //可以让view1 显示在view2前面  最实用的功能就是改变图层的显示顺序了
    view1.layer.zPosition = 1;
    self.layerView = view1;
    self.redView = view2;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint point = [[touches anyObject] locationInView:self.view];
    
    //转换点的坐标系
    CGPoint aPoint = [self.layerView.layer convertPoint:point fromLayer:self.view.layer];
    
    if ([self.layerView.layer containsPoint:aPoint]) {
       UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"insdid greenView" message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
    }
    
    //第二种检测方法
    /**
     注意当调用图层的 -hitTest: 
     -hitTest: 方法同样接受一个 CGPoint 类型参数,而不是 BOOL 类型,它返回 图层本身,或者包含这个坐标点的叶子节点图层
     该方法,测算的顺序严格依赖于图层树当中的图层 顺序(和UIView处理事件类似)。
     之前提到的 zPosition 属性可以明显改变屏幕 上图层的顺序,但不能改变事件传递的顺序。
     */
    CALayer *layer = [self.redView.layer hitTest:point];
    if (layer == self.redView.layer) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"insdid redView" message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
