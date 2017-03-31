//
//  XianShiAnimalViewController.m
//  CodeDemos
//
//  Created by qddios2 on 17/3/27.
//  Copyright © 2017年 lvguifeng. All rights reserved.
//

#import "XianShiAnimalViewController.h"

@interface XianShiAnimalViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, copy) NSArray *images;

@end

@implementation XianShiAnimalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.images = @[[UIImage imageNamed:@"1.jpeg"],
                    [UIImage imageNamed:@"2.jpeg"],
                    [UIImage imageNamed:@"3.jpeg"],
                    [UIImage imageNamed:@"sufei.jpeg"]];
    self.imageView.image = self.images.lastObject;
    
}
- (IBAction)switchImageAction:(id)sender {
    
    [UIView transitionWithView:self.imageView duration:1.0 options:UIViewAnimationOptionTransitionFlipFromTop animations:^{
        UIImage *currentImage = self.imageView.image;
        NSUInteger index = [self.images indexOfObject:currentImage];
        index = (index + 1) % self.images.count;
        self.imageView.image = self.images[index];
    } completion:^(BOOL finished) {
        
    }];
}
- (IBAction)performTransionAction:(id)sender
{
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, YES, 0.6);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *coverImage = UIGraphicsGetImageFromCurrentImageContext();
    UIView *converView  = [[UIImageView alloc] initWithImage:coverImage];
    converView.frame = self.view.bounds;
    [self.view addSubview:converView];
    
    CGFloat red = arc4random() / (CGFloat)INT_MAX;
    CGFloat blue = arc4random() / (CGFloat)INT_MAX;
    CGFloat gree = arc4random() / (CGFloat)INT_MAX;
    self.view.backgroundColor = [UIColor colorWithRed:red green:gree blue:blue alpha:1];
    [UIView animateWithDuration:1.0 animations:^{
        CGAffineTransform transform = CGAffineTransformMakeScale(0.5, 0.5);
        transform = CGAffineTransformRotate(transform, M_PI_2);
        converView.transform = transform;
        converView.alpha = 0.0;
    } completion:^(BOOL finished) {
        [converView removeFromSuperview];
        [self switchImageAction:nil];
    }];
    
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
