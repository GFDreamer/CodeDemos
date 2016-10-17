//
//	Questionlist.m
//	Model file Generated using: 
//	Vin.Favara's JSONExportV https://github.com/vivi7/JSONExport 
//	(forked from Ahmed-Ali's JSONExport)
//



#import "Questionlist.h"

NSString *const kQuestionlistAddtime = @"addtime";
NSString *const kQuestionlistAnswerlist = @"answerlist";
NSString *const kQuestionlistContent = @"content";
NSString *const kQuestionlistFilelist = @"filelist";
NSString *const kQuestionlistGoodnum = @"goodnum";
NSString *const kQuestionlistGrade = @"grade";
NSString *const kQuestionlistGradeurl = @"gradeurl";
NSString *const kQuestionlistHidetype = @"hidetype";
NSString *const kQuestionlistIscollect = @"iscollect";
NSString *const kQuestionlistIsdel = @"isdel";
NSString *const kQuestionlistIsgood = @"isgood";
NSString *const kQuestionlistIstop = @"istop";
NSString *const kQuestionlistNickname = @"nickname";
NSString *const kQuestionlistQuestionid = @"questionid";
NSString *const kQuestionlistReplynum = @"replynum";
NSString *const kQuestionlistSharenum = @"sharenum";
NSString *const kQuestionlistTitle = @"title";
NSString *const kQuestionlistTopiclist = @"topiclist";
NSString *const kQuestionlistUserid = @"userid";
NSString *const kQuestionlistUserphoto = @"userphoto";

@interface Questionlist ()
@end
@implementation Questionlist




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kQuestionlistAddtime] isKindOfClass:[NSNull class]]){
		self.addtime = dictionary[kQuestionlistAddtime];
	}	
	if(dictionary[kQuestionlistAnswerlist] != nil && [dictionary[kQuestionlistAnswerlist] isKindOfClass:[NSArray class]]){
		NSArray * answerlistDictionaries = dictionary[kQuestionlistAnswerlist];
		NSMutableArray * answerlistItems = [NSMutableArray array];
		for(NSDictionary * answerlistDictionary in answerlistDictionaries){
			Answerlist * answerlistItem = [[Answerlist alloc] initWithDictionary:answerlistDictionary];
			[answerlistItems addObject:answerlistItem];
		}
		self.answerlist = answerlistItems;
	}
	if(![dictionary[kQuestionlistContent] isKindOfClass:[NSNull class]]){
		self.content = dictionary[kQuestionlistContent];
	}	
	if(![dictionary[kQuestionlistFilelist] isKindOfClass:[NSNull class]]){
		self.filelist = dictionary[kQuestionlistFilelist];
	}	
	if(![dictionary[kQuestionlistGoodnum] isKindOfClass:[NSNull class]]){
		self.goodnum = [dictionary[kQuestionlistGoodnum] integerValue];
	}

	if(![dictionary[kQuestionlistGrade] isKindOfClass:[NSNull class]]){
		self.grade = [dictionary[kQuestionlistGrade] integerValue];
	}

	if(![dictionary[kQuestionlistGradeurl] isKindOfClass:[NSNull class]]){
		self.gradeurl = dictionary[kQuestionlistGradeurl];
	}	
	if(![dictionary[kQuestionlistHidetype] isKindOfClass:[NSNull class]]){
		self.hidetype = [dictionary[kQuestionlistHidetype] integerValue];
	}

	if(![dictionary[kQuestionlistIscollect] isKindOfClass:[NSNull class]]){
		self.iscollect = [dictionary[kQuestionlistIscollect] integerValue];
	}

	if(![dictionary[kQuestionlistIsdel] isKindOfClass:[NSNull class]]){
		self.isdel = [dictionary[kQuestionlistIsdel] integerValue];
	}

	if(![dictionary[kQuestionlistIsgood] isKindOfClass:[NSNull class]]){
		self.isgood = [dictionary[kQuestionlistIsgood] integerValue];
	}

	if(![dictionary[kQuestionlistIstop] isKindOfClass:[NSNull class]]){
		self.istop = [dictionary[kQuestionlistIstop] integerValue];
	}

	if(![dictionary[kQuestionlistNickname] isKindOfClass:[NSNull class]]){
		self.nickname = dictionary[kQuestionlistNickname];
	}	
	if(![dictionary[kQuestionlistQuestionid] isKindOfClass:[NSNull class]]){
		self.questionid = [dictionary[kQuestionlistQuestionid] integerValue];
	}

	if(![dictionary[kQuestionlistReplynum] isKindOfClass:[NSNull class]]){
		self.replynum = [dictionary[kQuestionlistReplynum] integerValue];
	}

	if(![dictionary[kQuestionlistSharenum] isKindOfClass:[NSNull class]]){
		self.sharenum = [dictionary[kQuestionlistSharenum] integerValue];
	}

	if(![dictionary[kQuestionlistTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kQuestionlistTitle];
	}	
	if(dictionary[kQuestionlistTopiclist] != nil && [dictionary[kQuestionlistTopiclist] isKindOfClass:[NSArray class]]){
		NSArray * topiclistDictionaries = dictionary[kQuestionlistTopiclist];
		NSMutableArray * topiclistItems = [NSMutableArray array];
		for(NSDictionary * topiclistDictionary in topiclistDictionaries){
			Topiclist * topiclistItem = [[Topiclist alloc] initWithDictionary:topiclistDictionary];
			[topiclistItems addObject:topiclistItem];
		}
		self.topiclist = topiclistItems;
	}
	if(![dictionary[kQuestionlistUserid] isKindOfClass:[NSNull class]]){
		self.userid = [dictionary[kQuestionlistUserid] integerValue];
	}

	if(![dictionary[kQuestionlistUserphoto] isKindOfClass:[NSNull class]]){
		self.userphoto = dictionary[kQuestionlistUserphoto];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.addtime != nil){
		dictionary[kQuestionlistAddtime] = self.addtime;
	}
	if(self.answerlist != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(Answerlist * answerlistElement in self.answerlist){
			[dictionaryElements addObject:[answerlistElement toDictionary]];
		}
		dictionary[kQuestionlistAnswerlist] = dictionaryElements;
	}
	if(self.content != nil){
		dictionary[kQuestionlistContent] = self.content;
	}
	if(self.filelist != nil){
		dictionary[kQuestionlistFilelist] = self.filelist;
	}
	dictionary[kQuestionlistGoodnum] = @(self.goodnum);
	dictionary[kQuestionlistGrade] = @(self.grade);
	if(self.gradeurl != nil){
		dictionary[kQuestionlistGradeurl] = self.gradeurl;
	}
	dictionary[kQuestionlistHidetype] = @(self.hidetype);
	dictionary[kQuestionlistIscollect] = @(self.iscollect);
	dictionary[kQuestionlistIsdel] = @(self.isdel);
	dictionary[kQuestionlistIsgood] = @(self.isgood);
	dictionary[kQuestionlistIstop] = @(self.istop);
	if(self.nickname != nil){
		dictionary[kQuestionlistNickname] = self.nickname;
	}
	dictionary[kQuestionlistQuestionid] = @(self.questionid);
	dictionary[kQuestionlistReplynum] = @(self.replynum);
	dictionary[kQuestionlistSharenum] = @(self.sharenum);
	if(self.title != nil){
		dictionary[kQuestionlistTitle] = self.title;
	}
	if(self.topiclist != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(Topiclist * topiclistElement in self.topiclist){
			[dictionaryElements addObject:[topiclistElement toDictionary]];
		}
		dictionary[kQuestionlistTopiclist] = dictionaryElements;
	}
	dictionary[kQuestionlistUserid] = @(self.userid);
	if(self.userphoto != nil){
		dictionary[kQuestionlistUserphoto] = self.userphoto;
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
	if(self.addtime != nil){
		[aCoder encodeObject:self.addtime forKey:kQuestionlistAddtime];
	}
	if(self.answerlist != nil){
		[aCoder encodeObject:self.answerlist forKey:kQuestionlistAnswerlist];
	}
	if(self.content != nil){
		[aCoder encodeObject:self.content forKey:kQuestionlistContent];
	}
	if(self.filelist != nil){
		[aCoder encodeObject:self.filelist forKey:kQuestionlistFilelist];
	}
	[aCoder encodeObject:@(self.goodnum) forKey:kQuestionlistGoodnum];	[aCoder encodeObject:@(self.grade) forKey:kQuestionlistGrade];	if(self.gradeurl != nil){
		[aCoder encodeObject:self.gradeurl forKey:kQuestionlistGradeurl];
	}
	[aCoder encodeObject:@(self.hidetype) forKey:kQuestionlistHidetype];	[aCoder encodeObject:@(self.iscollect) forKey:kQuestionlistIscollect];	[aCoder encodeObject:@(self.isdel) forKey:kQuestionlistIsdel];	[aCoder encodeObject:@(self.isgood) forKey:kQuestionlistIsgood];	[aCoder encodeObject:@(self.istop) forKey:kQuestionlistIstop];	if(self.nickname != nil){
		[aCoder encodeObject:self.nickname forKey:kQuestionlistNickname];
	}
	[aCoder encodeObject:@(self.questionid) forKey:kQuestionlistQuestionid];	[aCoder encodeObject:@(self.replynum) forKey:kQuestionlistReplynum];	[aCoder encodeObject:@(self.sharenum) forKey:kQuestionlistSharenum];	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kQuestionlistTitle];
	}
	if(self.topiclist != nil){
		[aCoder encodeObject:self.topiclist forKey:kQuestionlistTopiclist];
	}
	[aCoder encodeObject:@(self.userid) forKey:kQuestionlistUserid];	if(self.userphoto != nil){
		[aCoder encodeObject:self.userphoto forKey:kQuestionlistUserphoto];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.addtime = [aDecoder decodeObjectForKey:kQuestionlistAddtime];
	self.answerlist = [aDecoder decodeObjectForKey:kQuestionlistAnswerlist];
	self.content = [aDecoder decodeObjectForKey:kQuestionlistContent];
	self.filelist = [aDecoder decodeObjectForKey:kQuestionlistFilelist];
	self.goodnum = [[aDecoder decodeObjectForKey:kQuestionlistGoodnum] integerValue];
	self.grade = [[aDecoder decodeObjectForKey:kQuestionlistGrade] integerValue];
	self.gradeurl = [aDecoder decodeObjectForKey:kQuestionlistGradeurl];
	self.hidetype = [[aDecoder decodeObjectForKey:kQuestionlistHidetype] integerValue];
	self.iscollect = [[aDecoder decodeObjectForKey:kQuestionlistIscollect] integerValue];
	self.isdel = [[aDecoder decodeObjectForKey:kQuestionlistIsdel] integerValue];
	self.isgood = [[aDecoder decodeObjectForKey:kQuestionlistIsgood] integerValue];
	self.istop = [[aDecoder decodeObjectForKey:kQuestionlistIstop] integerValue];
	self.nickname = [aDecoder decodeObjectForKey:kQuestionlistNickname];
	self.questionid = [[aDecoder decodeObjectForKey:kQuestionlistQuestionid] integerValue];
	self.replynum = [[aDecoder decodeObjectForKey:kQuestionlistReplynum] integerValue];
	self.sharenum = [[aDecoder decodeObjectForKey:kQuestionlistSharenum] integerValue];
	self.title = [aDecoder decodeObjectForKey:kQuestionlistTitle];
	self.topiclist = [aDecoder decodeObjectForKey:kQuestionlistTopiclist];
	self.userid = [[aDecoder decodeObjectForKey:kQuestionlistUserid] integerValue];
	self.userphoto = [aDecoder decodeObjectForKey:kQuestionlistUserphoto];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Questionlist *copy = [Questionlist new];

	copy.addtime = [self.addtime copyWithZone:zone];
	copy.answerlist = [self.answerlist copyWithZone:zone];
	copy.content = [self.content copyWithZone:zone];
	copy.filelist = [self.filelist copyWithZone:zone];
	copy.goodnum = self.goodnum;
	copy.grade = self.grade;
	copy.gradeurl = [self.gradeurl copyWithZone:zone];
	copy.hidetype = self.hidetype;
	copy.iscollect = self.iscollect;
	copy.isdel = self.isdel;
	copy.isgood = self.isgood;
	copy.istop = self.istop;
	copy.nickname = [self.nickname copyWithZone:zone];
	copy.questionid = self.questionid;
	copy.replynum = self.replynum;
	copy.sharenum = self.sharenum;
	copy.title = [self.title copyWithZone:zone];
	copy.topiclist = [self.topiclist copyWithZone:zone];
	copy.userid = self.userid;
	copy.userphoto = [self.userphoto copyWithZone:zone];

	return copy;
}
@end