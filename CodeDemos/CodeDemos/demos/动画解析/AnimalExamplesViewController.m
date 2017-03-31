//
//  AnimalExamplesViewController.m
//  CodeDemos
//
//  Created by qddios2 on 17/3/24.
//  Copyright © 2017年 lvguifeng. All rights reserved.
//

#import "AnimalExamplesViewController.h"
#import "TuCengViewController.h"
#import "JiSuTuViewController.h"
#import "TuCengJiHeViewController.h"
#import "ShiJueXiaoGuoViewController.h"
#import "Transform3DViewController.h"
#import "YinShiAnimalViewController.h"
#import "XianShiAnimalViewController.h"
#import "BufferAnimalViewController.h"
@interface AnimalExamplesViewController ()

@end

@implementation AnimalExamplesViewController

+ (NSString *)URLProtocol
{
    return @"动画解析";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"动画解析";
}
//图层树
- (IBAction)tucengAction:(UIButton *)sender {
    
    TuCengViewController *tuVC = [[TuCengViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:tuVC animated:YES];
    
}
//寄宿图
- (IBAction)jisushuAction:(UIButton *)sender {
    JiSuTuViewController *vc = [[JiSuTuViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
//图层几何学
- (IBAction)tucengJiHeAction:(UIButton *)sender {
    TuCengJiHeViewController *vc = [[TuCengJiHeViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
//视觉效果
- (IBAction)shijueAction:(id)sender {
    ShiJueXiaoGuoViewController *tuVC = [[ShiJueXiaoGuoViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:tuVC animated:YES];
}
//变换
- (IBAction)transimAction:(id)sender {
    
    Transform3DViewController *tuVC = [[Transform3DViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:tuVC animated:YES];
    
}
//专用图层
- (IBAction)zhuanyongTucengAction:(id)sender {
}

//隐式动画
- (IBAction)yinshiAnimalAction:(id)sender {
    
    YinShiAnimalViewController *tuVC = [[YinShiAnimalViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:tuVC animated:YES];
}

//显示动画
- (IBAction)xianshiAnimalAction:(id)sender {
    
    XianShiAnimalViewController *tuVC = [[XianShiAnimalViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:tuVC animated:YES];
    
}

//图层时间
- (IBAction)tucengTimeAction:(id)sender {
}

//缓冲
- (IBAction)huanchongAction:(id)sender
{
    BufferAnimalViewController *tuVC = [[BufferAnimalViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:tuVC animated:YES];
}

//基于定时器的动画
- (IBAction)timerAnimalAction:(id)sender {
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
