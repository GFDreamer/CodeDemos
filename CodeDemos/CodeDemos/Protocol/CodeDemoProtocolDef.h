//
//  CodeDemoProtocolDef.h
//  CodeDemos
//
//  Created by qddios2 on 16/10/17.
//  Copyright © 2016年 lvguifeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CodeDemoProtocolDef : NSObject
/** 自定义button*/
+ (NSString *)pCustomButton;
/** 二维码*/
+ (NSString *)pBarCode;
/** 关键字高亮*/
+ (NSString *)pHighLightKeyWords;
/** 图片拉伸*/
+ (NSString *)pPicStrecth;
/** 修改SearchBar高度*/
+ (NSString *)pSearchBarHeight;
/** 自定义相机*/
+ (NSString *)pCustomCamera;
/** 自定义Label*/
+ (NSString *)pCustomLabel;
/** 自定义layout*/
+ (NSString *)pAutoLayout;
/** label加载HTML*/
+ (NSString *)pLabelHtml;
/** 下载测试*/
+ (NSString *)pDownLoad;
/** UIBezirePath 曲线*/
+ (NSString *)pBezirePath;
/** 动画*/
+ (NSString *)pAnimation;
/** 系统相册调用*/
+ (NSString *)pImagePicker;
/** CALayer*/
+ (NSString *)pCALayer;
/** 图片多选*/
+ (NSString *)pImageMultiselect;
@end
