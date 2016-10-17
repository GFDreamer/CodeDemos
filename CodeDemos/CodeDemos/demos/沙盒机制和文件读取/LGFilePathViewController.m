//
//  LGFilePathViewController.m
//  LGFDemo
//
//  Created by qddios2 on 16/9/14.
//  Copyright © 2016年 lvguifeng. All rights reserved.
//

#import "LGFilePathViewController.h"

@interface LGFilePathViewController ()<UIDocumentInteractionControllerDelegate>

@end

@implementation LGFilePathViewController

+ (NSString *)URLProtocol
{
    return @"沙盒机制和文件处理";
}
- (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller
{
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    //获取程序的Home目录
    NSString *homeDirectory = NSHomeDirectory();
    NSLog(@"%@", homeDirectory);
    //获取document目录
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths lastObject];
    NSLog(@"%@", path);
    
    //获取Cache 目录
    NSArray *cachePaths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *cachePath = [cachePaths lastObject];
    NSLog(@"%@", cachePath);
    
    //获取library目录
    NSArray *libraryPaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString *libraryPath = [libraryPaths lastObject];
    NSLog(@"%@", libraryPath);
    
    
    //写入文件
    [self writeToFile];
    
    //读取文件
    [self readFile];
    
    /********************文件操作******************/
    
    //在document里创建目录
    [self createFile];
    
    //在创建的目录里面创建文件
    [self createTxtFileToTest];
    
    
    
}


- (void)writeToFile
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *docPath = [paths lastObject];
    if (!docPath) {
        NSLog(@"Documents is not fund");
    }
    
    NSArray *array = [[NSArray alloc] initWithObjects:@"内容", @"content", nil];
    NSString *filePath = [docPath stringByAppendingPathComponent:@"testFile.txt"];
    [array writeToFile:filePath atomically:YES];
    
}

- (void)readFile
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *docPath = [paths lastObject];
    NSString *filePath = [docPath stringByAppendingPathComponent:@"testFile.txt"];
    NSArray *array = [[NSArray alloc] initWithContentsOfFile:filePath];
    NSLog(@"%@", array);
}

- (NSString *)createFile
{
    NSString *documentPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *testDirectory = [documentPath stringByAppendingPathComponent:@"test/test/test"];
    [fileManager createDirectoryAtPath:testDirectory withIntermediateDirectories:YES attributes:nil error:nil];
    return testDirectory;
}

- (void)createTxtFileToTest

{
    NSString *path = [self createFile];
    
    NSString *testPath = [path stringByAppendingPathComponent:@"test00.txt"];
    NSString *testPath2 = [path stringByAppendingPathComponent:@"test11.txt"];
    NSString *testPath3 = [path stringByAppendingPathComponent:@"test22.txt"];
    NSString *string = @"This is test content  !";
    [[NSFileManager defaultManager] createFileAtPath:testPath contents:[string dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
    [[NSFileManager defaultManager] createFileAtPath:testPath2 contents:[string dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
    [[NSFileManager defaultManager] createFileAtPath:testPath3 contents:[string dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
    NSLog(@"%@", [[NSFileManager defaultManager] subpathsAtPath:path]) ;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSString *documentPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    NSString *path = [documentPath stringByAppendingPathComponent:@"ios-.pdf"];
    
    UIDocumentInteractionController *docVC = [UIDocumentInteractionController interactionControllerWithURL:[NSURL fileURLWithPath:path]];
    docVC.delegate = self;
    [docVC presentPreviewAnimated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
