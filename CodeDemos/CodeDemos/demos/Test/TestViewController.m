//
//  TestViewController.m
//  CodeDemos
//
//  Created by Simple on 2017/7/11.
//  Copyright © 2017年 lvguifeng. All rights reserved.
//

#import "TestViewController.h"
#import <Masonry/Masonry.h>
#import "TestItem.h"
@interface TestViewController ()
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) TestItem *one;
@property (nonatomic, strong) TestItem *one2;
@property (nonatomic, strong) TestItem *one3;
@property (nonatomic, strong) TestItem *one4;

@property (nonatomic, strong) UIButton *button;
@end

@implementation TestViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self.view addSubview:self.scrollView];
        [self.scrollView addSubview:self.one];
        [self.scrollView addSubview:self.one2];
        [self.scrollView addSubview:self.one3];
        [self.scrollView addSubview:self.one4];
        [self.view addSubview:self.button];
        [self createConstraints];
    }
    return self;
}

+ (NSString *)URLProtocol
{
    return @"test";
}

- (void)createConstraints
{
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
        make.width.equalTo(self.view);
    }];
    
    [self.one mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.width.equalTo(self.scrollView);
        make.top.equalTo(self.scrollView).offset(10);
    }];
    
    [self.one2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.width.equalTo(self.scrollView);
        make.top.equalTo(self.one.mas_bottom).offset(10);
    }];
    [self.one3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.width.equalTo(self.scrollView);
        make.top.equalTo(self.one2.mas_bottom).offset(10);
    }];
    
    [self.one4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.width.equalTo(self.scrollView);
        make.top.equalTo(self.one3.mas_bottom).offset(10);
        make.bottom.equalTo(self.scrollView);
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    
}


- (void)sss
{
    NSArray *ary1 = @[@"李克强崎岖山路颠簸一小时考察脱贫攻坚】沿着崎岖山路",
                      @"李克强10日乘车颠簸一小时，深入陕西宝鸡坪头镇大湾河村考察脱贫攻坚。总理走访两户人家询问收入、医保等情况，坐在院子里与村民交流",
                      @"阿卡噶卡拉卡拉"];
    NSArray *ary2 = @[@"【李克强：易地扶贫搬迁要算精“可持续”细账】李克强10日下午深入陕西宝鸡市西部山区大湾河村，与即将搬迁的贫困户座谈，详细了解当地易地搬迁方案和补贴政策。总理对当地干部说，易地扶贫搬迁需做好长远谋划，既要妥善解决村民安置和就业，也要创新思路做好乡村原址开发，要算精这笔“可持续”细账。",
                      @"agakljjakljkalgjfakk"];
    NSArray *ary3 = @[@"【李克强冒酷暑考察陕西杨凌农业高新技术产业示范区：形成制度红利辐射全",
                      @"【李克强冒酷暑考察陕西杨凌农业高新技术产业示范区：形成制度红利辐射全",
                      @"【李克强冒酷暑考察陕西杨凌农业高新技术产业示范区：形成制度红利辐射全",
                      @"【李克强冒酷暑考察陕西杨凌农业高新技术产业示范区：形成制度红利辐射全"];
    NSArray *ary4 = @[@"陕西杨凌农业高",
                      @"扶贫搬迁要算精“可持续”细账】李克强10日下午深入陕西宝鸡市西部山区大湾河村，与即将搬迁的贫困户座谈，详细了解当地易地搬迁方案和补贴政策",
                      @"aklgjaklhljmkkl"];
    
            self.one.dataAry = ary1;
            self.one2.dataAry = ary2;
            self.one3.dataAry = ary3;
            self.one4.dataAry = ary4;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIScrollView *)scrollView
{
    if (_scrollView == nil) {
        _scrollView = [[UIScrollView alloc] init];
        
    }
    return _scrollView;
}

- (TestItem *)one
{
    if (_one == nil) {
        _one = [[TestItem alloc] initWithTitle:@"One" icon:@""];
    }
    return _one;
}

- (TestItem *)one2
{
    if (_one2 == nil) {
        _one2 = [[TestItem alloc] initWithTitle:@"Two" icon:@""];
    }
    return _one2;
}


- (TestItem *)one3
{
    if (_one3 == nil) {
        _one3 = [[TestItem alloc] initWithTitle:@"Three" icon:@""];
    }
    return _one3;
}


- (TestItem *)one4
{
    if (_one4 == nil) {
        _one4 = [[TestItem alloc] initWithTitle:@"Four" icon:@""];
    }
    return _one4;
}

- (UIButton *)button
{
    if (_button == nil) {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button.frame = CGRectMake(100, 100, 50, 50);
        _button.backgroundColor = [UIColor blueColor];
        [_button addTarget:self action:@selector(sss) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}


@end
