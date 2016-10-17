//
//	Questionlist.m
//	Model file Generated using: 
//	Vin.Favara's JSONExportV https://github.com/vivi7/JSONExport 
//	(forked from Ahmed-Ali's JSONExport)
//

#import <UIKit/UIKit.h>
#import "Answerlist.h"
#import "Topiclist.h"

@interface Questionlist : NSObject

@property (nonatomic, strong) NSString * addtime;
@property (nonatomic, strong) NSArray * answerlist;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, strong) NSArray * filelist;
@property (nonatomic, assign) NSInteger goodnum;
@property (nonatomic, assign) NSInteger grade;
@property (nonatomic, strong) NSString * gradeurl;
@property (nonatomic, assign) NSInteger hidetype;
@property (nonatomic, assign) NSInteger iscollect;
@property (nonatomic, assign) NSInteger isdel;
@property (nonatomic, assign) NSInteger isgood;
@property (nonatomic, assign) NSInteger istop;
@property (nonatomic, strong) NSString * nickname;
@property (nonatomic, assign) NSInteger questionid;
@property (nonatomic, assign) NSInteger replynum;
@property (nonatomic, assign) NSInteger sharenum;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSArray * topiclist;
@property (nonatomic, assign) NSInteger userid;
@property (nonatomic, strong) NSString * userphoto;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end