//
//  Transform3DViewController.m
//  CodeDemos
//
//  Created by qddios2 on 17/3/24.
//  Copyright © 2017年 lvguifeng. All rights reserved.
//

#import "Transform3DViewController.h"

@interface Transform3DViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIImageView *image2;

@end

@implementation Transform3DViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //3D 变换
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = -1 / 500.0;
    self.view.layer.sublayerTransform = transform;
    CATransform3D transform1  = CATransform3DMakeRotation(M_PI_4, 0, 1, 0);
    self.image.layer.transform = transform1;
    
    CATransform3D transform2  = CATransform3DMakeRotation(-M_PI_4, 1, 1, 1);
    self.image2.layer.transform = transform2;
    
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
