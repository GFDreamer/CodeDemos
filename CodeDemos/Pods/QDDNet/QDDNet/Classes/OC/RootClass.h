//
//	RootClass.m
//	Model file Generated using: 
//	Vin.Favara's JSONExportV https://github.com/vivi7/JSONExport 
//	(forked from Ahmed-Ali's JSONExport)
//

#import <UIKit/UIKit.h>
#import "Questionlist.h"

@interface RootClass : NSObject

@property (nonatomic, strong) NSString * msg;
@property (nonatomic, strong) NSArray * questionlist;
@property (nonatomic, strong) NSString * result;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end