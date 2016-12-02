//
//  LGFMultiselectPickerViewController.m
//  CodeDemos
//
//  Created by qddios2 on 16/12/1.
//  Copyright © 2016年 lvguifeng. All rights reserved.
//

#import "LGFMultiselectPickerViewController.h"

#import "MLSelectPhotoPickerViewController.h"
@interface LGFMultiselectPickerViewController ()

@end

@implementation LGFMultiselectPickerViewController

+ (NSString *)URLProtocol
{
    return [CodeDemoProtocolDef pImageMultiselect];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
#if __IPHONE_5_0 <= __IPHONE_OS_VERSION_MAX_ALLOWED
    
#endif
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    MLSelectPhotoPickerViewController *pickerVc = [[MLSelectPhotoPickerViewController alloc] init];
    pickerVc.status = PickerViewShowStatusCameraRoll;
    pickerVc.minCount = 12;
    pickerVc.callBack = ^(NSArray *assets)
    {
        
    };
    
    [self presentViewController:pickerVc animated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
