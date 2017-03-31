//
//  YinShiAnimalViewController.m
//  CodeDemos
//
//  Created by qddios2 on 17/3/27.
//  Copyright © 2017年 lvguifeng. All rights reserved.
//

#import "YinShiAnimalViewController.h"

@interface YinShiAnimalViewController ()
@property (weak, nonatomic) IBOutlet UIView *baseView;
@property (nonatomic, strong) CALayer *layerView;

@end

@implementation YinShiAnimalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(10, 10, 100, 100);
    layer.backgroundColor = [UIColor blueColor].CGColor;
    self.layerView = layer;
    [self.baseView.layer addSublayer:layer];
    //这个方法当调用 方法一二三的时候注释掉
    [self methodFour];
    
}
- (IBAction)changeColorAction:(UIButton *)sender
{
    /**
     Core Animation在每个run loop周期中自动开始一次新的事务(run loop是iOS负责 
     收集用户输入,处理定时器或者网络事件并且重新绘制屏幕的东西),即使你不显 
     式的用 [CATransaction begin] 开始一次事务,任何在一次run loop循环中属性 
     的改变都会被集中起来,然后做一次0.25秒的动画
     */
    //方法一和方法二对 baseView 的图层layerView 进行操作 动画的颜色有个平滑过渡的动画
    //[self methodOne];
    //[self methodTwo];
    
    //动画的颜色立即改变
    //[self menthodThree];
    
    //
   
    
}

- (void)methodOne
{
    [CATransaction begin];
    [CATransaction setAnimationDuration:1.0];
    CGFloat red = arc4random() / (CGFloat)INT_MAX;
    CGFloat blue = arc4random() / (CGFloat)INT_MAX;
    CGFloat gree = arc4random() / (CGFloat)INT_MAX;
    self.layerView.backgroundColor = [UIColor colorWithRed:red green:gree blue:blue alpha:1].CGColor;
    [CATransaction commit];
    
}

- (void)methodTwo
{
    [CATransaction begin];
    [CATransaction setAnimationDuration:1.0];
    //结束之后 注意旋转动画要比颜色渐变快得多,这是因为完成块是在颜色渐变的事务提交并出 栈之后才被执行,于是,用默认的事务做变换,默认的时间也就变成了0.25秒。
    [CATransaction setCompletionBlock:^{
        CGAffineTransform transform = self.layerView.affineTransform;
        transform = CGAffineTransformRotate(transform, M_PI_4);
        self.layerView.affineTransform = transform;
    }];
    CGFloat red = arc4random() / (CGFloat)INT_MAX;
    CGFloat blue = arc4random() / (CGFloat)INT_MAX;
    CGFloat gree = arc4random() / (CGFloat)INT_MAX;
    self.layerView.backgroundColor = [UIColor colorWithRed:red green:gree blue:blue alpha:1].CGColor;
    [CATransaction commit];
}

- (void)menthodThree
{
    /** 当属性在动画块之外发生改变, UIView 直接通过返
    回 nil 来禁用隐式动画。但如果在动画块范围之内,根据动画具体类型返回相应 的属性
     */
    [CATransaction begin];
    [CATransaction setAnimationDuration:1.0];
    CGFloat red = arc4random() / (CGFloat)INT_MAX;
    CGFloat blue = arc4random() / (CGFloat)INT_MAX;
    CGFloat gree = arc4random() / (CGFloat)INT_MAX;
    self.baseView.layer.backgroundColor = [UIColor colorWithRed:red green:gree blue:blue alpha:1].CGColor;
    [CATransaction commit];
}


- (void)methodFour
{
    //推进过渡色值变化
    
    CATransition *transition = [CATransition animation];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromLeft;
    self.layerView.actions = @{@"backgroundColor":transition};
    
}
- (IBAction)catransitionAction:(UIButton *)sender {
    
    CGFloat red = arc4random() / (CGFloat)INT_MAX;
    CGFloat blue = arc4random() / (CGFloat)INT_MAX;
    CGFloat gree = arc4random() / (CGFloat)INT_MAX;
    self.layerView.backgroundColor = [UIColor colorWithRed:red green:gree blue:blue alpha:1].CGColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
