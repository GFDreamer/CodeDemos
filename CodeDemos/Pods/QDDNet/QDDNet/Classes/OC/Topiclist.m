//
//	Topiclist.m
//	Model file Generated using: 
//	Vin.Favara's JSONExportV https://github.com/vivi7/JSONExport 
//	(forked from Ahmed-Ali's JSONExport)
//



#import "Topiclist.h"

NSString *const kTopiclistTopicid = @"topicid";
NSString *const kTopiclistTopicname = @"topicname";
NSString *const kTopiclistTotalnum = @"totalnum";

@interface Topiclist ()
@end
@implementation Topiclist




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kTopiclistTopicid] isKindOfClass:[NSNull class]]){
		self.topicid = [dictionary[kTopiclistTopicid] integerValue];
	}

	if(![dictionary[kTopiclistTopicname] isKindOfClass:[NSNull class]]){
		self.topicname = dictionary[kTopiclistTopicname];
	}	
	if(![dictionary[kTopiclistTotalnum] isKindOfClass:[NSNull class]]){
		self.totalnum = [dictionary[kTopiclistTotalnum] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kTopiclistTopicid] = @(self.topicid);
	if(self.topicname != nil){
		dictionary[kTopiclistTopicname] = self.topicname;
	}
	dictionary[kTopiclistTotalnum] = @(self.totalnum);
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
	[aCoder encodeObject:@(self.topicid) forKey:kTopiclistTopicid];	if(self.topicname != nil){
		[aCoder encodeObject:self.topicname forKey:kTopiclistTopicname];
	}
	[aCoder encodeObject:@(self.totalnum) forKey:kTopiclistTotalnum];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.topicid = [[aDecoder decodeObjectForKey:kTopiclistTopicid] integerValue];
	self.topicname = [aDecoder decodeObjectForKey:kTopiclistTopicname];
	self.totalnum = [[aDecoder decodeObjectForKey:kTopiclistTotalnum] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Topiclist *copy = [Topiclist new];

	copy.topicid = self.topicid;
	copy.topicname = [self.topicname copyWithZone:zone];
	copy.totalnum = self.totalnum;

	return copy;
}
@end