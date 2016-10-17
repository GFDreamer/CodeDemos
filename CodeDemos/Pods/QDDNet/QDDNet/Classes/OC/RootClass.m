//
//	RootClass.m
//	Model file Generated using: 
//	Vin.Favara's JSONExportV https://github.com/vivi7/JSONExport 
//	(forked from Ahmed-Ali's JSONExport)
//



#import "RootClass.h"

NSString *const kRootClassMsg = @"msg";
NSString *const kRootClassQuestionlist = @"questionlist";
NSString *const kRootClassResult = @"result";

@interface RootClass ()
@end
@implementation RootClass




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kRootClassMsg] isKindOfClass:[NSNull class]]){
		self.msg = dictionary[kRootClassMsg];
	}	
	if(dictionary[kRootClassQuestionlist] != nil && [dictionary[kRootClassQuestionlist] isKindOfClass:[NSArray class]]){
		NSArray * questionlistDictionaries = dictionary[kRootClassQuestionlist];
		NSMutableArray * questionlistItems = [NSMutableArray array];
		for(NSDictionary * questionlistDictionary in questionlistDictionaries){
			Questionlist * questionlistItem = [[Questionlist alloc] initWithDictionary:questionlistDictionary];
			[questionlistItems addObject:questionlistItem];
		}
		self.questionlist = questionlistItems;
	}
	if(![dictionary[kRootClassResult] isKindOfClass:[NSNull class]]){
		self.result = dictionary[kRootClassResult];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.msg != nil){
		dictionary[kRootClassMsg] = self.msg;
	}
	if(self.questionlist != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(Questionlist * questionlistElement in self.questionlist){
			[dictionaryElements addObject:[questionlistElement toDictionary]];
		}
		dictionary[kRootClassQuestionlist] = dictionaryElements;
	}
	if(self.result != nil){
		dictionary[kRootClassResult] = self.result;
	}
	return dictionary;

}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
	if(self.msg != nil){
		[aCoder encodeObject:self.msg forKey:kRootClassMsg];
	}
	if(self.questionlist != nil){
		[aCoder encodeObject:self.questionlist forKey:kRootClassQuestionlist];
	}
	if(self.result != nil){
		[aCoder encodeObject:self.result forKey:kRootClassResult];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.msg = [aDecoder decodeObjectForKey:kRootClassMsg];
	self.questionlist = [aDecoder decodeObjectForKey:kRootClassQuestionlist];
	self.result = [aDecoder decodeObjectForKey:kRootClassResult];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	RootClass *copy = [RootClass new];

	copy.msg = [self.msg copyWithZone:zone];
	copy.questionlist = [self.questionlist copyWithZone:zone];
	copy.result = [self.result copyWithZone:zone];

	return copy;
}
@end