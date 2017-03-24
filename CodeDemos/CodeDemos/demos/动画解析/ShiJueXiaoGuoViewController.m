//
//  ShiJueXiaoGuoViewController.m
//  CodeDemos
//
//  Created by qddios2 on 17/3/24.
//  Copyright © 2017年 lvguifeng. All rights reserved.
//

#import "ShiJueXiaoGuoViewController.h"

@interface ShiJueXiaoGuoViewController ()
@property (weak, nonatomic) IBOutlet UIView *layerView1;
@property (weak, nonatomic) IBOutlet UIView *layerView2;

@property (weak, nonatomic) IBOutlet UIView *shadowView;
@property (weak, nonatomic) IBOutlet UIView *layerView3;
@property (weak, nonatomic) IBOutlet UIImageView *imageOne;
@property (weak, nonatomic) IBOutlet UIImageView *imageTwo;
@property (weak, nonatomic) IBOutlet UIImageView *imageThree;
@end

@implementation ShiJueXiaoGuoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.layerView1.layer.cornerRadius = 20;
    self.layerView2.layer.cornerRadius = 20;
    //裁剪
    self.layerView1.clipsToBounds = NO;
    self.layerView2.clipsToBounds = YES;
    
    //边框 颜色 边框是绘制在图层边界里面的,而且在所有子内容之前,也在子图层之 前。
    /**
     仔细观察会发现边框并不会把寄宿图或子图层的形状计算进来,如果图层 
     的子图层超过了边界,或者是寄宿图在透明区域有一个透明蒙板,边框仍然会沿着 图层的边界绘制出来
     */
    UIImage *image = [UIImage imageNamed:@"sufei.jpeg"];
    self.layerView1.layer.contents = (__bridge id _Nullable)(image.CGImage);
    self.layerView1.layer.contentsScale = [UIScreen mainScreen].scale;
    
    self.layerView2.layer.contents = (__bridge id _Nullable)(image.CGImage);
    self.layerView2.layer.contentsScale = [UIScreen mainScreen].scale;
    
    self.layerView3.layer.contents = (__bridge id _Nullable)(image.CGImage);
    self.layerView3.layer.contentsScale = [UIScreen mainScreen].scale;
    
    
    self.layerView1.layer.borderColor = [UIColor blackColor].CGColor;
    self.layerView1.layer.borderWidth = 5;
    self.layerView2.layer.borderColor = [UIColor blackColor].CGColor;
    self.layerView2.layer.borderWidth = 5;
    
    self.layerView3.layer.contents = (__bridge id _Nullable)(image.CGImage);
    self.layerView3.layer.contentsScale = [UIScreen mainScreen].scale;
    
    /** 阴影   
     shadowOpacity value 0.0~ 1.0
     shadowColor 类型CGColorRef
     shadowOffset CGSize 默认 (0, -3) (width, height) 宽度横向偏移. 高度上下偏移
     shadowRadius 阴影的模糊° 当它的值是0的时候,阴影就和视图 一样有一个非常确定的边界线。
                    当值越来越大的时候,边界线看上去就会越来越模 糊和自然
     
     和图层边框不同,图层的阴影继承自内容的外形,而不是根据边界和角半 径来确定
     当阴影和裁剪扯上关系的时候就有一个头疼的限制:阴影通常就是在 Layer的边界之外,
     如果你开启了 masksToBounds 属性,所有从图层中突出来的 内容都会被才剪掉
     */
    
    self.layerView1.layer.shadowColor = [UIColor blackColor].CGColor;
    //横向向右偏移10 向下偏移 10
    self.layerView1.layer.shadowOffset = CGSizeMake(10, 10);
    self.layerView1.layer.shadowOpacity = 0.5;
    self.layerView1.layer.shadowRadius = 10;
    
    self.layerView2.layer.shadowColor = [UIColor blackColor].CGColor;
    //横向向右偏移10 向下偏移 10
    self.layerView2.layer.shadowOffset = CGSizeMake(10, 10);
    self.layerView2.layer.shadowOpacity = 0.5;
    self.layerView2.layer.shadowRadius = 10;
    
    
    //用一个图层做阴影图层另一个做内容图层 就可以避免 裁剪掉阴影效果
    self.shadowView.layer.shadowColor = [UIColor blackColor].CGColor;
    //横向向右偏移10 向下偏移 10
    self.shadowView.layer.shadowOffset = CGSizeMake(10, 10);
    self.shadowView.layer.shadowOpacity = 0.5;
    self.shadowView.layer.shadowRadius = 10;
    self.layerView3.layer.masksToBounds = YES;

    
    /**
     shadowPath 
     
     */
    
    self.imageTwo.layer.shadowOpacity = 0.5;
    CGMutablePathRef suqarePath = CGPathCreateMutable();
    CGPathAddRect(suqarePath, NULL, self.imageTwo.bounds);
    self.imageTwo.layer.shadowPath = suqarePath;
    CGPathRelease(suqarePath);
    
    
    /**
     图层蒙板 使用一个32位有alpha通道的png图片通常是创建一个无矩形视图最方便的方法
     CALayer有一个属性叫做 mask 可以解决这个问题
      mask 图层定义了父图层的部分可见区域
     */
    
    /**
    CALayer *maskLayer = [CALayer layer];
    maskLayer.frame = self.layerView2.bounds;
    UIImage *maskImage = [UIImage imageNamed:@"qr_msg_pirvate@2x.png"];
    maskLayer.contents = (__bridge id _Nullable)(maskImage.CGImage);
    self.layerView2.layer.mask = maskLayer;
     */
    
    /** 
     minificationFilter magnificationFilter
     拉伸过滤
     kCAFilterLinear
     kCAFilterNearest
     kCAFilterTrilinear
     
     minification(缩小图片)和magnification(放大图片)默认的过滤器都
     是 kCAFilterLinear ,这个过滤器采用双线性滤波算法,它在大多数情况下都表 现良好。
     双线性滤波算法通过对多个像素取样最终生成新的值,得到一个平滑的表 现不错的拉伸。
     但是当放大倍数比较大的时候图片就模糊不清了
     
     kCAFilterTrilinear 和 kCAFilterLinear 非常相似,大部分情况下二者都 看不出来有什么差别。
     但是,较双线性滤波算法而言,三线性滤波算法存储了多个 大小情况下的图片(也叫多重贴图),并三维取样,
     同时结合大图和小图的存储进 而得到最后的结果。
     
     kCAFilterNearest 是一种比较武断的方法。从名字不难看出,这个算法(也 
     叫最近过滤)就是取样最近的单像素点而不管其他的颜色。这样做非常快,也不会 使图片模糊。
     但是,最明显的效果就是,会使得压缩图片更糟,图片放大之后也显 得块状或是马赛克严重
     
     总的来说,对于比较小的图或者是差异特别明显,极少斜线的大图,最近过滤算
     法会保留这种差异明显的特质以呈现更好的结果。但是对于大多数的图尤其是有很
     多斜线或是曲线轮廓的图片来说,最近过滤算法会导致更差的结果。换句话说,线
     性过滤保留了形状,最近过滤则保留了像素的差异
     */
    
    /**
      shouldRasterize 组透明
     
     */
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
