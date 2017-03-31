//
//  BufferAnimalViewController.m
//  CodeDemos
//
//  Created by qddios2 on 17/3/28.
//  Copyright © 2017年 lvguifeng. All rights reserved.
//

#import "BufferAnimalViewController.h"
#import "MyImageView.h"
@interface BufferAnimalViewController ()
@property (nonatomic, strong) CALayer *colorLayer;
@end

@implementation BufferAnimalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.colorLayer = [CALayer layer];
    self.colorLayer.frame = CGRectMake(0, 0, 100, 100);
    self.colorLayer.position = CGPointMake(self.view.bounds.size.width, 100);
    self.colorLayer.backgroundColor = [UIColor redColor].CGColor;
    [self.view.layer addSublayer:self.colorLayer];
    
    MyImageView *iamge = [[MyImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    //iamge.image = [UIImage imageNamed:@"1.jpeg"];
    [self.view addSubview:iamge];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [CATransaction begin];
    [CATransaction setAnimationDuration:1.0];
    [CATransaction setAnimationTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    self.colorLayer.position = [[touches anyObject] locationInView:self.view];
    [CATransaction commit];
    
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
