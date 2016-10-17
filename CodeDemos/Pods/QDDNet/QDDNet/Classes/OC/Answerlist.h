//
//	Answerlist.m
//	Model file Generated using: 
//	Vin.Favara's JSONExportV https://github.com/vivi7/JSONExport 
//	(forked from Ahmed-Ali's JSONExport)
//

#import <UIKit/UIKit.h>

@interface Answerlist : NSObject

@property (nonatomic, strong) NSString * addtime;
@property (nonatomic, assign) NSInteger answerid;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, strong) NSArray * filelist;
@property (nonatomic, assign) NSInteger grade;
@property (nonatomic, strong) NSString * gradeurl;
@property (nonatomic, assign) NSInteger hidetype;
@property (nonatomic, assign) NSInteger invalidenum;
@property (nonatomic, assign) NSInteger isvalide;
@property (nonatomic, strong) NSString * nickname;
@property (nonatomic, strong) NSString * parentname;
@property (nonatomic, assign) NSInteger userid;
@property (nonatomic, strong) NSString * userphoto;
@property (nonatomic, assign) NSInteger validenum;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end