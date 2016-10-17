//
//	Topiclist.m
//	Model file Generated using: 
//	Vin.Favara's JSONExportV https://github.com/vivi7/JSONExport 
//	(forked from Ahmed-Ali's JSONExport)
//

#import <UIKit/UIKit.h>

@interface Topiclist : NSObject

@property (nonatomic, assign) NSInteger topicid;
@property (nonatomic, strong) NSString * topicname;
@property (nonatomic, assign) NSInteger totalnum;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end