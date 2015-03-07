//
//  BaskInContentRows.m
//
//  Created by   on 15/3/7
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "BaskInContentRows.h"


NSString *const kBaskInContentRowsArticleComment = @"article_comment";
NSString *const kBaskInContentRowsArticleAvatar = @"article_avatar";
NSString *const kBaskInContentRowsArticleTitle = @"article_title";
NSString *const kBaskInContentRowsArticleFilterContent = @"article_filter_content";
NSString *const kBaskInContentRowsArticleReferrals = @"article_referrals";
NSString *const kBaskInContentRowsArticleUrl = @"article_url";
NSString *const kBaskInContentRowsArticleId = @"article_id";
NSString *const kBaskInContentRowsArticlePic = @"article_pic";
NSString *const kBaskInContentRowsArticleCollection = @"article_collection";
NSString *const kBaskInContentRowsArticleFormatDate = @"article_format_date";
NSString *const kBaskInContentRowsArticleDate = @"article_date";


@interface BaskInContentRows ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation BaskInContentRows

@synthesize articleComment = _articleComment;
@synthesize articleAvatar = _articleAvatar;
@synthesize articleTitle = _articleTitle;
@synthesize articleFilterContent = _articleFilterContent;
@synthesize articleReferrals = _articleReferrals;
@synthesize articleUrl = _articleUrl;
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
            self.articleComment = [self objectOrNilForKey:kBaskInContentRowsArticleComment fromDictionary:dict];
            self.articleAvatar = [self objectOrNilForKey:kBaskInContentRowsArticleAvatar fromDictionary:dict];
            self.articleTitle = [self objectOrNilForKey:kBaskInContentRowsArticleTitle fromDictionary:dict];
            self.articleFilterContent = [self objectOrNilForKey:kBaskInContentRowsArticleFilterContent fromDictionary:dict];
            self.articleReferrals = [self objectOrNilForKey:kBaskInContentRowsArticleReferrals fromDictionary:dict];
            self.articleUrl = [self objectOrNilForKey:kBaskInContentRowsArticleUrl fromDictionary:dict];
            self.articleId = [self objectOrNilForKey:kBaskInContentRowsArticleId fromDictionary:dict];
            self.articlePic = [self objectOrNilForKey:kBaskInContentRowsArticlePic fromDictionary:dict];
            self.articleCollection = [self objectOrNilForKey:kBaskInContentRowsArticleCollection fromDictionary:dict];
            self.articleFormatDate = [self objectOrNilForKey:kBaskInContentRowsArticleFormatDate fromDictionary:dict];
            self.articleDate = [self objectOrNilForKey:kBaskInContentRowsArticleDate fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.articleComment forKey:kBaskInContentRowsArticleComment];
    [mutableDict setValue:self.articleAvatar forKey:kBaskInContentRowsArticleAvatar];
    [mutableDict setValue:self.articleTitle forKey:kBaskInContentRowsArticleTitle];
    [mutableDict setValue:self.articleFilterContent forKey:kBaskInContentRowsArticleFilterContent];
    [mutableDict setValue:self.articleReferrals forKey:kBaskInContentRowsArticleReferrals];
    [mutableDict setValue:self.articleUrl forKey:kBaskInContentRowsArticleUrl];
    [mutableDict setValue:self.articleId forKey:kBaskInContentRowsArticleId];
    [mutableDict setValue:self.articlePic forKey:kBaskInContentRowsArticlePic];
    [mutableDict setValue:self.articleCollection forKey:kBaskInContentRowsArticleCollection];
    [mutableDict setValue:self.articleFormatDate forKey:kBaskInContentRowsArticleFormatDate];
    [mutableDict setValue:self.articleDate forKey:kBaskInContentRowsArticleDate];

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

    self.articleComment = [aDecoder decodeObjectForKey:kBaskInContentRowsArticleComment];
    self.articleAvatar = [aDecoder decodeObjectForKey:kBaskInContentRowsArticleAvatar];
    self.articleTitle = [aDecoder decodeObjectForKey:kBaskInContentRowsArticleTitle];
    self.articleFilterContent = [aDecoder decodeObjectForKey:kBaskInContentRowsArticleFilterContent];
    self.articleReferrals = [aDecoder decodeObjectForKey:kBaskInContentRowsArticleReferrals];
    self.articleUrl = [aDecoder decodeObjectForKey:kBaskInContentRowsArticleUrl];
    self.articleId = [aDecoder decodeObjectForKey:kBaskInContentRowsArticleId];
    self.articlePic = [aDecoder decodeObjectForKey:kBaskInContentRowsArticlePic];
    self.articleCollection = [aDecoder decodeObjectForKey:kBaskInContentRowsArticleCollection];
    self.articleFormatDate = [aDecoder decodeObjectForKey:kBaskInContentRowsArticleFormatDate];
    self.articleDate = [aDecoder decodeObjectForKey:kBaskInContentRowsArticleDate];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_articleComment forKey:kBaskInContentRowsArticleComment];
    [aCoder encodeObject:_articleAvatar forKey:kBaskInContentRowsArticleAvatar];
    [aCoder encodeObject:_articleTitle forKey:kBaskInContentRowsArticleTitle];
    [aCoder encodeObject:_articleFilterContent forKey:kBaskInContentRowsArticleFilterContent];
    [aCoder encodeObject:_articleReferrals forKey:kBaskInContentRowsArticleReferrals];
    [aCoder encodeObject:_articleUrl forKey:kBaskInContentRowsArticleUrl];
    [aCoder encodeObject:_articleId forKey:kBaskInContentRowsArticleId];
    [aCoder encodeObject:_articlePic forKey:kBaskInContentRowsArticlePic];
    [aCoder encodeObject:_articleCollection forKey:kBaskInContentRowsArticleCollection];
    [aCoder encodeObject:_articleFormatDate forKey:kBaskInContentRowsArticleFormatDate];
    [aCoder encodeObject:_articleDate forKey:kBaskInContentRowsArticleDate];
}

- (id)copyWithZone:(NSZone *)zone
{
    BaskInContentRows *copy = [[BaskInContentRows alloc] init];
    
    if (copy) {

        copy.articleComment = [self.articleComment copyWithZone:zone];
        copy.articleAvatar = [self.articleAvatar copyWithZone:zone];
        copy.articleTitle = [self.articleTitle copyWithZone:zone];
        copy.articleFilterContent = [self.articleFilterContent copyWithZone:zone];
        copy.articleReferrals = [self.articleReferrals copyWithZone:zone];
        copy.articleUrl = [self.articleUrl copyWithZone:zone];
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
    [_articleAvatar release];
    [_articleTitle release];
    [_articleFilterContent release];
    [_articleReferrals release];
    [_articleUrl release];
    [_articleId release];
    [_articlePic release];
    [_articleCollection release];
    [_articleFormatDate release];
    [_articleDate release];
    [super dealloc];
}

@end
