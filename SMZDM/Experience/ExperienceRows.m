//
//  ExperienceRows.m
//
//  Created by   on 15/3/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ExperienceRows.h"


NSString *const kExperienceRowsArticleComment = @"article_comment";
NSString *const kExperienceRowsArticleTitle = @"article_title";
NSString *const kExperienceRowsArticleFilterContent = @"article_filter_content";
NSString *const kExperienceRowsArticleUrl = @"article_url";
NSString *const kExperienceRowsArticleReferrals = @"article_referrals";
NSString *const kExperienceRowsArticleId = @"article_id";
NSString *const kExperienceRowsArticlePic = @"article_pic";
NSString *const kExperienceRowsArticleCollection = @"article_collection";
NSString *const kExperienceRowsArticleFormatDate = @"article_format_date";
NSString *const kExperienceRowsArticleDate = @"article_date";


@interface ExperienceRows ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ExperienceRows

@synthesize articleComment = _articleComment;
@synthesize articleTitle = _articleTitle;
@synthesize articleFilterContent = _articleFilterContent;
@synthesize articleUrl = _articleUrl;
@synthesize articleReferrals = _articleReferrals;
@synthesize articleId = _articleId;
@synthesize articlePic = _articlePic;
@synthesize articleCollection = _articleCollection;
@synthesize articleFormatDate = _articleFormatDate;
@synthesize articleDate = _articleDate;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.articleComment = [self objectOrNilForKey:kExperienceRowsArticleComment fromDictionary:dict];
            self.articleTitle = [self objectOrNilForKey:kExperienceRowsArticleTitle fromDictionary:dict];
            self.articleFilterContent = [self objectOrNilForKey:kExperienceRowsArticleFilterContent fromDictionary:dict];
            self.articleUrl = [self objectOrNilForKey:kExperienceRowsArticleUrl fromDictionary:dict];
            self.articleReferrals = [self objectOrNilForKey:kExperienceRowsArticleReferrals fromDictionary:dict];
            self.articleId = [self objectOrNilForKey:kExperienceRowsArticleId fromDictionary:dict];
            self.articlePic = [self objectOrNilForKey:kExperienceRowsArticlePic fromDictionary:dict];
            self.articleCollection = [self objectOrNilForKey:kExperienceRowsArticleCollection fromDictionary:dict];
            self.articleFormatDate = [self objectOrNilForKey:kExperienceRowsArticleFormatDate fromDictionary:dict];
            self.articleDate = [self objectOrNilForKey:kExperienceRowsArticleDate fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.articleComment forKey:kExperienceRowsArticleComment];
    [mutableDict setValue:self.articleTitle forKey:kExperienceRowsArticleTitle];
    [mutableDict setValue:self.articleFilterContent forKey:kExperienceRowsArticleFilterContent];
    [mutableDict setValue:self.articleUrl forKey:kExperienceRowsArticleUrl];
    [mutableDict setValue:self.articleReferrals forKey:kExperienceRowsArticleReferrals];
    [mutableDict setValue:self.articleId forKey:kExperienceRowsArticleId];
    [mutableDict setValue:self.articlePic forKey:kExperienceRowsArticlePic];
    [mutableDict setValue:self.articleCollection forKey:kExperienceRowsArticleCollection];
    [mutableDict setValue:self.articleFormatDate forKey:kExperienceRowsArticleFormatDate];
    [mutableDict setValue:self.articleDate forKey:kExperienceRowsArticleDate];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.articleComment = [aDecoder decodeObjectForKey:kExperienceRowsArticleComment];
    self.articleTitle = [aDecoder decodeObjectForKey:kExperienceRowsArticleTitle];
    self.articleFilterContent = [aDecoder decodeObjectForKey:kExperienceRowsArticleFilterContent];
    self.articleUrl = [aDecoder decodeObjectForKey:kExperienceRowsArticleUrl];
    self.articleReferrals = [aDecoder decodeObjectForKey:kExperienceRowsArticleReferrals];
    self.articleId = [aDecoder decodeObjectForKey:kExperienceRowsArticleId];
    self.articlePic = [aDecoder decodeObjectForKey:kExperienceRowsArticlePic];
    self.articleCollection = [aDecoder decodeObjectForKey:kExperienceRowsArticleCollection];
    self.articleFormatDate = [aDecoder decodeObjectForKey:kExperienceRowsArticleFormatDate];
    self.articleDate = [aDecoder decodeObjectForKey:kExperienceRowsArticleDate];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_articleComment forKey:kExperienceRowsArticleComment];
    [aCoder encodeObject:_articleTitle forKey:kExperienceRowsArticleTitle];
    [aCoder encodeObject:_articleFilterContent forKey:kExperienceRowsArticleFilterContent];
    [aCoder encodeObject:_articleUrl forKey:kExperienceRowsArticleUrl];
    [aCoder encodeObject:_articleReferrals forKey:kExperienceRowsArticleReferrals];
    [aCoder encodeObject:_articleId forKey:kExperienceRowsArticleId];
    [aCoder encodeObject:_articlePic forKey:kExperienceRowsArticlePic];
    [aCoder encodeObject:_articleCollection forKey:kExperienceRowsArticleCollection];
    [aCoder encodeObject:_articleFormatDate forKey:kExperienceRowsArticleFormatDate];
    [aCoder encodeObject:_articleDate forKey:kExperienceRowsArticleDate];
}

- (id)copyWithZone:(NSZone *)zone
{
    ExperienceRows *copy = [[ExperienceRows alloc] init];
    
    if (copy) {

        copy.articleComment = [self.articleComment copyWithZone:zone];
        copy.articleTitle = [self.articleTitle copyWithZone:zone];
        copy.articleFilterContent = [self.articleFilterContent copyWithZone:zone];
        copy.articleUrl = [self.articleUrl copyWithZone:zone];
        copy.articleReferrals = [self.articleReferrals copyWithZone:zone];
        copy.articleId = [self.articleId copyWithZone:zone];
        copy.articlePic = [self.articlePic copyWithZone:zone];
        copy.articleCollection = [self.articleCollection copyWithZone:zone];
        copy.articleFormatDate = [self.articleFormatDate copyWithZone:zone];
        copy.articleDate = [self.articleDate copyWithZone:zone];
    }
    
    return copy;
}


- (void)dealloc
{
    [_articleComment release];
    [_articleTitle release];
    [_articleFilterContent release];
    [_articleUrl release];
    [_articleReferrals release];
    [_articleId release];
    [_articlePic release];
    [_articleCollection release];
    [_articleFormatDate release];
    [_articleDate release];
    [super dealloc];
}

@end
