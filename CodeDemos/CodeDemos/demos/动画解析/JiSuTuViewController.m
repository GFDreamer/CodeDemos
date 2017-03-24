//
//  JiSuTuViewController.m
//  CodeDemos
//
//  Created by qddios2 on 17/3/24.
//  Copyright © 2017年 lvguifeng. All rights reserved.
//

#import "JiSuTuViewController.h"

@interface JiSuTuViewController ()
@property (nonatomic, strong) UIView *layerView;

@end

@implementation JiSuTuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = @"寄宿图";
    
    CGRect frame = CGRectMake(10, 10, 100, 100);
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor redColor];
    self.layerView = view;
    [self.view addSubview:view];
    
    UIImage *image = [UIImage imageNamed:@"sufei.jpeg"];
    self.layerView.layer.contents = (__bridge id _Nullable)(image.CGImage);
    self.layerView.layer.contentsGravity = kCAGravityResizeAspectFill;
    //此时图片有点拉伸
    self.layerView.layer.contentsGravity = kCAGravityCenter;
//    self.layerView.layer.contentsScale = image.scale;
    self.layerView.layer.contentsScale = [UIScreen mainScreen].scale;
//    self.layerView.layer.masksToBounds = YES;
    self.layerView.layer.contentsRect = CGRectMake(0, 0, 0.5, 0.5);
    [self pictureJoin];
    
    //contentsCenter 应用
    UIView *contentsCenterView = [[UIView alloc] initWithFrame:CGRectMake(120, 10, 100, 100)];
    contentsCenterView.layer.contents = (__bridge id _Nullable)(image.CGImage);
    contentsCenterView.layer.contentsGravity = kCAGravityResize;
    contentsCenterView.layer.contentsCenter = CGRectMake(0.5, 0.1, 0.8, 0.8);
    [self.view addSubview:contentsCenterView];
    
    
    
    
}

- (void)pictureJoin
{
    CGFloat width = ([UIScreen mainScreen].bounds.size.width - 40) / 3;
    CGFloat itemSpace = 20;
    CGFloat yOrigin = 150;
    CGFloat contentsW = 1 / 3.0;
    UIImage *image = [UIImage imageNamed:@"sufei.jpeg"];
    for (int i = 0; i < 9; i++) {
        int tem = i % 3;
        int row = i / 3;
        CGFloat x = tem * width + itemSpace *tem;
        CGFloat y = yOrigin + row * width + row * itemSpace;
        CGRect frame = CGRectMake(x, y, width, width);
        UIView * view = [[UIView alloc] initWithFrame:frame];
        view.backgroundColor = [UIColor darkGrayColor];
        view.layer.contents = (__bridge id _Nullable)(image.CGImage);
        view.layer.contentsGravity = kCAGravityResize;
        CGFloat contentsX = tem / 3.0;
        CGFloat contentsY = row / 3.0;
        view.layer.contentsRect = CGRectMake(contentsX, contentsY, contentsW, contentsW);
        [self.view addSubview:view];
    }
}

- (void)explain
{
    /**
     寄宿图 : CALayer的寄宿图, 即图层中包含的图
     属性: contents
     这个属性的类型被定义为id,意味着它可以 是任何类型的对象.但是,在实践中,如果你给   赋的不是CGImage, 那么你得到的图层是空白的。
     事实上,你真正要赋值的类型应该是 CGImageRef,它是一个指向CGImage结构的指针。UIImage有一个CGImage属 性,它返回一个"CGImageRef",如果你想把这个值直接赋值给CALayer
     的 contents ,那你将会得到一个编译错误。因为CGImageRef并不是一个真正的 Cocoa对象,而是一个Core Foundation类型。
     
     属性: contentsGravity  NSString 类型
     UIView  的属性contentModel 对应的是对图层进行操作
     CALayer 的contentModel对应的属性叫做 contentsGravity, 是决定内容在图层中怎么对齐
     
     属性: contentsScale  可以使用图片[拼合
     属性定义了寄宿图的像素尺寸和视图大小的比例,默认情况下它 是一个值为1.0的浮点数
     contentsScale 属性其实属于支持高分辨率(又称Hi-DPI或Retina)屏幕机制的 一部分。
     它用来判断在绘制图层的时候应该为寄宿图创建的空间大小,和需要显示 的图片的拉伸度(假设并没有设置属性)。
     UIView有一个类似 功能但是非常少用到的属性
     如果 contentsScale 设置为1.0,将会以每个点1个像素绘制图片,如果设置为 2.0,则会以每个点2个像素绘制图片,
     这就是我们熟知的Retina屏幕
     
     contentsScale ✋属性contentsGravity的影响 如果 kCAGravityResizeAspect 或者kCAGravityResizeAspectFill 
     图片进行了拉伸, 那么contentsScale的影响将会不明显
     
     属性: maskToBounds
     UIView有一个叫做 的属性可以用来决定是否显示超出边界的内容,CALayer对应的属性叫做,把它设置为YES, 可以裁剪超出图层的内容
     
     属性: contentsRect
     CALayer的 contentsRect 属性允许我们在图层边框里显示寄宿图的一个子域
     和 bounds , frame 不同, contentsRect 不是按点来计算的,它使用了单位 坐标,单位坐标指定在0到1之间,是一个相对值(像素
     和点就是绝对值)。所以他 们是相对与寄宿图的尺寸的
     默认的 contentsRect 是{0, 0, 1, 1},这意味着整个寄宿图默认都是可见的,如果 我们指定一个小一点的矩形,图片就会被裁剪
     
     
     属性: contentsCenter
     
     */
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
