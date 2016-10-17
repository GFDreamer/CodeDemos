//
//	Answerlist.m
//	Model file Generated using: 
//	Vin.Favara's JSONExportV https://github.com/vivi7/JSONExport 
//	(forked from Ahmed-Ali's JSONExport)
//



#import "Answerlist.h"

NSString *const kAnswerlistAddtime = @"addtime";
NSString *const kAnswerlistAnswerid = @"answerid";
NSString *const kAnswerlistContent = @"content";
NSString *const kAnswerlistFilelist = @"filelist";
NSString *const kAnswerlistGrade = @"grade";
NSString *const kAnswerlistGradeurl = @"gradeurl";
NSString *const kAnswerlistHidetype = @"hidetype";
NSString *const kAnswerlistInvalidenum = @"invalidenum";
NSString *const kAnswerlistIsvalide = @"isvalide";
NSString *const kAnswerlistNickname = @"nickname";
NSString *const kAnswerlistParentname = @"parentname";
NSString *const kAnswerlistUserid = @"userid";
NSString *const kAnswerlistUserphoto = @"userphoto";
NSString *const kAnswerlistValidenum = @"validenum";

@interface Answerlist ()
@end
@implementation Answerlist




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kAnswerlistAddtime] isKindOfClass:[NSNull class]]){
		self.addtime = dictionary[kAnswerlistAddtime];
	}	
	if(![dictionary[kAnswerlistAnswerid] isKindOfClass:[NSNull class]]){
		self.answerid = [dictionary[kAnswerlistAnswerid] integerValue];
	}

	if(![dictionary[kAnswerlistContent] isKindOfClass:[NSNull class]]){
		self.content = dictionary[kAnswerlistContent];
	}	
	if(![dictionary[kAnswerlistFilelist] isKindOfClass:[NSNull class]]){
		self.filelist = dictionary[kAnswerlistFilelist];
	}	
	if(![dictionary[kAnswerlistGrade] isKindOfClass:[NSNull class]]){
		self.grade = [dictionary[kAnswerlistGrade] integerValue];
	}

	if(![dictionary[kAnswerlistGradeurl] isKindOfClass:[NSNull class]]){
		self.gradeurl = dictionary[kAnswerlistGradeurl];
	}	
	if(![dictionary[kAnswerlistHidetype] isKindOfClass:[NSNull class]]){
		self.hidetype = [dictionary[kAnswerlistHidetype] integerValue];
	}

	if(![dictionary[kAnswerlistInvalidenum] isKindOfClass:[NSNull class]]){
		self.invalidenum = [dictionary[kAnswerlistInvalidenum] integerValue];
	}

	if(![dictionary[kAnswerlistIsvalide] isKindOfClass:[NSNull class]]){
		self.isvalide = [dictionary[kAnswerlistIsvalide] integerValue];
	}

	if(![dictionary[kAnswerlistNickname] isKindOfClass:[NSNull class]]){
		self.nickname = dictionary[kAnswerlistNickname];
	}	
	if(![dictionary[kAnswerlistParentname] isKindOfClass:[NSNull class]]){
		self.parentname = dictionary[kAnswerlistParentname];
	}	
	if(![dictionary[kAnswerlistUserid] isKindOfClass:[NSNull class]]){
		self.userid = [dictionary[kAnswerlistUserid] integerValue];
	}

	if(![dictionary[kAnswerlistUserphoto] isKindOfClass:[NSNull class]]){
		self.userphoto = dictionary[kAnswerlistUserphoto];
	}	
	if(![dictionary[kAnswerlistValidenum] isKindOfClass:[NSNull class]]){
		self.validenum = [dictionary[kAnswerlistValidenum] integerValue];
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
		dictionary[kAnswerlistAddtime] = self.addtime;
	}
	dictionary[kAnswerlistAnswerid] = @(self.answerid);
	if(self.content != nil){
		dictionary[kAnswerlistContent] = self.content;
	}
	if(self.filelist != nil){
		dictionary[kAnswerlistFilelist] = self.filelist;
	}
	dictionary[kAnswerlistGrade] = @(self.grade);
	if(self.gradeurl != nil){
		dictionary[kAnswerlistGradeurl] = self.gradeurl;
	}
	dictionary[kAnswerlistHidetype] = @(self.hidetype);
	dictionary[kAnswerlistInvalidenum] = @(self.invalidenum);
	dictionary[kAnswerlistIsvalide] = @(self.isvalide);
	if(self.nickname != nil){
		dictionary[kAnswerlistNickname] = self.nickname;
	}
	if(self.parentname != nil){
		dictionary[kAnswerlistParentname] = self.parentname;
	}
	dictionary[kAnswerlistUserid] = @(self.userid);
	if(self.userphoto != nil){
		dictionary[kAnswerlistUserphoto] = self.userphoto;
	}
	dictionary[kAnswerlistValidenum] = @(self.validenum);
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
		[aCoder encodeObject:self.addtime forKey:kAnswerlistAddtime];
	}
	[aCoder encodeObject:@(self.answerid) forKey:kAnswerlistAnswerid];	if(self.content != nil){
		[aCoder encodeObject:self.content forKey:kAnswerlistContent];
	}
	if(self.filelist != nil){
		[aCoder encodeObject:self.filelist forKey:kAnswerlistFilelist];
	}
	[aCoder encodeObject:@(self.grade) forKey:kAnswerlistGrade];	if(self.gradeurl != nil){
		[aCoder encodeObject:self.gradeurl forKey:kAnswerlistGradeurl];
	}
	[aCoder encodeObject:@(self.hidetype) forKey:kAnswerlistHidetype];	[aCoder encodeObject:@(self.invalidenum) forKey:kAnswerlistInvalidenum];	[aCoder encodeObject:@(self.isvalide) forKey:kAnswerlistIsvalide];	if(self.nickname != nil){
		[aCoder encodeObject:self.nickname forKey:kAnswerlistNickname];
	}
	if(self.parentname != nil){
		[aCoder encodeObject:self.parentname forKey:kAnswerlistParentname];
	}
	[aCoder encodeObject:@(self.userid) forKey:kAnswerlistUserid];	if(self.userphoto != nil){
		[aCoder encodeObject:self.userphoto forKey:kAnswerlistUserphoto];
	}
	[aCoder encodeObject:@(self.validenum) forKey:kAnswerlistValidenum];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.addtime = [aDecoder decodeObjectForKey:kAnswerlistAddtime];
	self.answerid = [[aDecoder decodeObjectForKey:kAnswerlistAnswerid] integerValue];
	self.content = [aDecoder decodeObjectForKey:kAnswerlistContent];
	self.filelist = [aDecoder decodeObjectForKey:kAnswerlistFilelist];
	self.grade = [[aDecoder decodeObjectForKey:kAnswerlistGrade] integerValue];
	self.gradeurl = [aDecoder decodeObjectForKey:kAnswerlistGradeurl];
	self.hidetype = [[aDecoder decodeObjectForKey:kAnswerlistHidetype] integerValue];
	self.invalidenum = [[aDecoder decodeObjectForKey:kAnswerlistInvalidenum] integerValue];
	self.isvalide = [[aDecoder decodeObjectForKey:kAnswerlistIsvalide] integerValue];
	self.nickname = [aDecoder decodeObjectForKey:kAnswerlistNickname];
	self.parentname = [aDecoder decodeObjectForKey:kAnswerlistParentname];
	self.userid = [[aDecoder decodeObjectForKey:kAnswerlistUserid] integerValue];
	self.userphoto = [aDecoder decodeObjectForKey:kAnswerlistUserphoto];
	self.validenum = [[aDecoder decodeObjectForKey:kAnswerlistValidenum] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Answerlist *copy = [Answerlist new];

	copy.addtime = [self.addtime copyWithZone:zone];
	copy.answerid = self.answerid;
	copy.content = [self.content copyWithZone:zone];
	copy.filelist = [self.filelist copyWithZone:zone];
	copy.grade = self.grade;
	copy.gradeurl = [self.gradeurl copyWithZone:zone];
	copy.hidetype = self.hidetype;
	copy.invalidenum = self.invalidenum;
	copy.isvalide = self.isvalide;
	copy.nickname = [self.nickname copyWithZone:zone];
	copy.parentname = [self.parentname copyWithZone:zone];
	copy.userid = self.userid;
	copy.userphoto = [self.userphoto copyWithZone:zone];
	copy.validenum = self.validenum;

	return copy;
}
@end