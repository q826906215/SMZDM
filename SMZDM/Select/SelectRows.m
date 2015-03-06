//
//  SelectRows.m
//
//  Created by   on 15/3/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "SelectRows.h"


NSString *const kSelectRowsArticleTag = @"article_tag";
NSString *const kSelectRowsArticleFormatDate = @"article_format_date";
NSString *const kSelectRowsArticleLinkType = @"article_link_type";
NSString *const kSelectRowsArticleLinkList = @"article_link_list";
NSString *const kSelectRowsArticleTitle = @"article_title";
NSString *const kSelectRowsArticleIsSoldOut = @"article_is_sold_out";
NSString *const kSelectRowsArticleUrl = @"article_url";
NSString *const kSelectRowsArticleWorthy = @"article_worthy";
NSString *const kSelectRowsArticleId = @"article_id";
NSString *const kSelectRowsArticleIsTimeout = @"article_is_timeout";
NSString *const kSelectRowsArticleChannelName = @"article_channel_name";
NSString *const kSelectRowsArticleDate = @"article_date";
NSString *const kSelectRowsArticleUnixDate = @"article_unix_date";
NSString *const kSelectRowsArticleUnworthy = @"article_unworthy";
NSString *const kSelectRowsArticleAnonymous = @"article_anonymous";
NSString *const kSelectRowsArticlePic = @"article_pic";
NSString *const kSelectRowsArticleReferrals = @"article_referrals";
NSString *const kSelectRowsArticleComment = @"article_comment";
NSString *const kSelectRowsArticleChannelId = @"article_channel_id";
NSString *const kSelectRowsTimeSort = @"time_sort";
NSString *const kSelectRowsArticleCollection = @"article_collection";
NSString *const kSelectRowsArticleMall = @"article_mall";
NSString *const kSelectRowsArticleLink = @"article_link";
NSString *const kSelectRowsArticlePrice = @"article_price";
NSString *const kSelectRowsArticleTop = @"article_top";


@interface SelectRows ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation SelectRows

@synthesize articleTag = _articleTag;
@synthesize articleFormatDate = _articleFormatDate;
@synthesize articleLinkType = _articleLinkType;
@synthesize articleLinkList = _articleLinkList;
@synthesize articleTitle = _articleTitle;
@synthesize articleIsSoldOut = _articleIsSoldOut;
@synthesize articleUrl = _articleUrl;
@synthesize articleWorthy = _articleWorthy;
@synthesize articleId = _articleId;
@synthesize articleIsTimeout = _articleIsTimeout;
@synthesize articleChannelName = _articleChannelName;
@synthesize articleDate = _articleDate;
@synthesize articleUnixDate = _articleUnixDate;
@synthesize articleUnworthy = _articleUnworthy;
@synthesize articleAnonymous = _articleAnonymous;
@synthesize articlePic = _articlePic;
@synthesize articleReferrals = _articleReferrals;
@synthesize articleComment = _articleComment;
@synthesize articleChannelId = _articleChannelId;
@synthesize timeSort = _timeSort;
@synthesize articleCollection = _articleCollection;
@synthesize articleMall = _articleMall;
@synthesize articleLink = _articleLink;
@synthesize articlePrice = _articlePrice;
@synthesize articleTop = _articleTop;


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
            self.articleTag = [self objectOrNilForKey:kSelectRowsArticleTag fromDictionary:dict];
            self.articleFormatDate = [self objectOrNilForKey:kSelectRowsArticleFormatDate fromDictionary:dict];
            self.articleLinkType = [self objectOrNilForKey:kSelectRowsArticleLinkType fromDictionary:dict];
            self.articleLinkList = [self objectOrNilForKey:kSelectRowsArticleLinkList fromDictionary:dict];
            self.articleTitle = [self objectOrNilForKey:kSelectRowsArticleTitle fromDictionary:dict];
            self.articleIsSoldOut = [self objectOrNilForKey:kSelectRowsArticleIsSoldOut fromDictionary:dict];
            self.articleUrl = [self objectOrNilForKey:kSelectRowsArticleUrl fromDictionary:dict];
            self.articleWorthy = [self objectOrNilForKey:kSelectRowsArticleWorthy fromDictionary:dict];
            self.articleId = [self objectOrNilForKey:kSelectRowsArticleId fromDictionary:dict];
            self.articleIsTimeout = [self objectOrNilForKey:kSelectRowsArticleIsTimeout fromDictionary:dict];
            self.articleChannelName = [self objectOrNilForKey:kSelectRowsArticleChannelName fromDictionary:dict];
            self.articleDate = [self objectOrNilForKey:kSelectRowsArticleDate fromDictionary:dict];
            self.articleUnixDate = [self objectOrNilForKey:kSelectRowsArticleUnixDate fromDictionary:dict];
            self.articleUnworthy = [self objectOrNilForKey:kSelectRowsArticleUnworthy fromDictionary:dict];
            self.articleAnonymous = [self objectOrNilForKey:kSelectRowsArticleAnonymous fromDictionary:dict];
            self.articlePic = [self objectOrNilForKey:kSelectRowsArticlePic fromDictionary:dict];
            self.articleReferrals = [self objectOrNilForKey:kSelectRowsArticleReferrals fromDictionary:dict];
            self.articleComment = [self objectOrNilForKey:kSelectRowsArticleComment fromDictionary:dict];
            self.articleChannelId = [self objectOrNilForKey:kSelectRowsArticleChannelId fromDictionary:dict];
            self.timeSort = [self objectOrNilForKey:kSelectRowsTimeSort fromDictionary:dict];
            self.articleCollection = [self objectOrNilForKey:kSelectRowsArticleCollection fromDictionary:dict];
            self.articleMall = [self objectOrNilForKey:kSelectRowsArticleMall fromDictionary:dict];
            self.articleLink = [self objectOrNilForKey:kSelectRowsArticleLink fromDictionary:dict];
            self.articlePrice = [self objectOrNilForKey:kSelectRowsArticlePrice fromDictionary:dict];
            self.articleTop = [self objectOrNilForKey:kSelectRowsArticleTop fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.articleTag forKey:kSelectRowsArticleTag];
    [mutableDict setValue:self.articleFormatDate forKey:kSelectRowsArticleFormatDate];
    [mutableDict setValue:self.articleLinkType forKey:kSelectRowsArticleLinkType];
    NSMutableArray *tempArrayForArticleLinkList = [NSMutableArray array];
    for (NSObject *subArrayObject in self.articleLinkList) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForArticleLinkList addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForArticleLinkList addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForArticleLinkList] forKey:kSelectRowsArticleLinkList];
    [mutableDict setValue:self.articleTitle forKey:kSelectRowsArticleTitle];
    [mutableDict setValue:self.articleIsSoldOut forKey:kSelectRowsArticleIsSoldOut];
    [mutableDict setValue:self.articleUrl forKey:kSelectRowsArticleUrl];
    [mutableDict setValue:self.articleWorthy forKey:kSelectRowsArticleWorthy];
    [mutableDict setValue:self.articleId forKey:kSelectRowsArticleId];
    [mutableDict setValue:self.articleIsTimeout forKey:kSelectRowsArticleIsTimeout];
    [mutableDict setValue:self.articleChannelName forKey:kSelectRowsArticleChannelName];
    [mutableDict setValue:self.articleDate forKey:kSelectRowsArticleDate];
    [mutableDict setValue:self.articleUnixDate forKey:kSelectRowsArticleUnixDate];
    [mutableDict setValue:self.articleUnworthy forKey:kSelectRowsArticleUnworthy];
    [mutableDict setValue:self.articleAnonymous forKey:kSelectRowsArticleAnonymous];
    [mutableDict setValue:self.articlePic forKey:kSelectRowsArticlePic];
    [mutableDict setValue:self.articleReferrals forKey:kSelectRowsArticleReferrals];
    [mutableDict setValue:self.articleComment forKey:kSelectRowsArticleComment];
    [mutableDict setValue:self.articleChannelId forKey:kSelectRowsArticleChannelId];
    [mutableDict setValue:self.timeSort forKey:kSelectRowsTimeSort];
    [mutableDict setValue:self.articleCollection forKey:kSelectRowsArticleCollection];
    [mutableDict setValue:self.articleMall forKey:kSelectRowsArticleMall];
    [mutableDict setValue:self.articleLink forKey:kSelectRowsArticleLink];
    [mutableDict setValue:self.articlePrice forKey:kSelectRowsArticlePrice];
    [mutableDict setValue:self.articleTop forKey:kSelectRowsArticleTop];

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

    self.articleTag = [aDecoder decodeObjectForKey:kSelectRowsArticleTag];
    self.articleFormatDate = [aDecoder decodeObjectForKey:kSelectRowsArticleFormatDate];
    self.articleLinkType = [aDecoder decodeObjectForKey:kSelectRowsArticleLinkType];
    self.articleLinkList = [aDecoder decodeObjectForKey:kSelectRowsArticleLinkList];
    self.articleTitle = [aDecoder decodeObjectForKey:kSelectRowsArticleTitle];
    self.articleIsSoldOut = [aDecoder decodeObjectForKey:kSelectRowsArticleIsSoldOut];
    self.articleUrl = [aDecoder decodeObjectForKey:kSelectRowsArticleUrl];
    self.articleWorthy = [aDecoder decodeObjectForKey:kSelectRowsArticleWorthy];
    self.articleId = [aDecoder decodeObjectForKey:kSelectRowsArticleId];
    self.articleIsTimeout = [aDecoder decodeObjectForKey:kSelectRowsArticleIsTimeout];
    self.articleChannelName = [aDecoder decodeObjectForKey:kSelectRowsArticleChannelName];
    self.articleDate = [aDecoder decodeObjectForKey:kSelectRowsArticleDate];
    self.articleUnixDate = [aDecoder decodeObjectForKey:kSelectRowsArticleUnixDate];
    self.articleUnworthy = [aDecoder decodeObjectForKey:kSelectRowsArticleUnworthy];
    self.articleAnonymous = [aDecoder decodeObjectForKey:kSelectRowsArticleAnonymous];
    self.articlePic = [aDecoder decodeObjectForKey:kSelectRowsArticlePic];
    self.articleReferrals = [aDecoder decodeObjectForKey:kSelectRowsArticleReferrals];
    self.articleComment = [aDecoder decodeObjectForKey:kSelectRowsArticleComment];
    self.articleChannelId = [aDecoder decodeObjectForKey:kSelectRowsArticleChannelId];
    self.timeSort = [aDecoder decodeObjectForKey:kSelectRowsTimeSort];
    self.articleCollection = [aDecoder decodeObjectForKey:kSelectRowsArticleCollection];
    self.articleMall = [aDecoder decodeObjectForKey:kSelectRowsArticleMall];
    self.articleLink = [aDecoder decodeObjectForKey:kSelectRowsArticleLink];
    self.articlePrice = [aDecoder decodeObjectForKey:kSelectRowsArticlePrice];
    self.articleTop = [aDecoder decodeObjectForKey:kSelectRowsArticleTop];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_articleTag forKey:kSelectRowsArticleTag];
    [aCoder encodeObject:_articleFormatDate forKey:kSelectRowsArticleFormatDate];
    [aCoder encodeObject:_articleLinkType forKey:kSelectRowsArticleLinkType];
    [aCoder encodeObject:_articleLinkList forKey:kSelectRowsArticleLinkList];
    [aCoder encodeObject:_articleTitle forKey:kSelectRowsArticleTitle];
    [aCoder encodeObject:_articleIsSoldOut forKey:kSelectRowsArticleIsSoldOut];
    [aCoder encodeObject:_articleUrl forKey:kSelectRowsArticleUrl];
    [aCoder encodeObject:_articleWorthy forKey:kSelectRowsArticleWorthy];
    [aCoder encodeObject:_articleId forKey:kSelectRowsArticleId];
    [aCoder encodeObject:_articleIsTimeout forKey:kSelectRowsArticleIsTimeout];
    [aCoder encodeObject:_articleChannelName forKey:kSelectRowsArticleChannelName];
    [aCoder encodeObject:_articleDate forKey:kSelectRowsArticleDate];
    [aCoder encodeObject:_articleUnixDate forKey:kSelectRowsArticleUnixDate];
    [aCoder encodeObject:_articleUnworthy forKey:kSelectRowsArticleUnworthy];
    [aCoder encodeObject:_articleAnonymous forKey:kSelectRowsArticleAnonymous];
    [aCoder encodeObject:_articlePic forKey:kSelectRowsArticlePic];
    [aCoder encodeObject:_articleReferrals forKey:kSelectRowsArticleReferrals];
    [aCoder encodeObject:_articleComment forKey:kSelectRowsArticleComment];
    [aCoder encodeObject:_articleChannelId forKey:kSelectRowsArticleChannelId];
    [aCoder encodeObject:_timeSort forKey:kSelectRowsTimeSort];
    [aCoder encodeObject:_articleCollection forKey:kSelectRowsArticleCollection];
    [aCoder encodeObject:_articleMall forKey:kSelectRowsArticleMall];
    [aCoder encodeObject:_articleLink forKey:kSelectRowsArticleLink];
    [aCoder encodeObject:_articlePrice forKey:kSelectRowsArticlePrice];
    [aCoder encodeObject:_articleTop forKey:kSelectRowsArticleTop];
}

- (id)copyWithZone:(NSZone *)zone
{
    SelectRows *copy = [[SelectRows alloc] init];
    
    if (copy) {

        copy.articleTag = [self.articleTag copyWithZone:zone];
        copy.articleFormatDate = [self.articleFormatDate copyWithZone:zone];
        copy.articleLinkType = [self.articleLinkType copyWithZone:zone];
        copy.articleLinkList = [self.articleLinkList copyWithZone:zone];
        copy.articleTitle = [self.articleTitle copyWithZone:zone];
        copy.articleIsSoldOut = [self.articleIsSoldOut copyWithZone:zone];
        copy.articleUrl = [self.articleUrl copyWithZone:zone];
        copy.articleWorthy = [self.articleWorthy copyWithZone:zone];
        copy.articleId = [self.articleId copyWithZone:zone];
        copy.articleIsTimeout = [self.articleIsTimeout copyWithZone:zone];
        copy.articleChannelName = [self.articleChannelName copyWithZone:zone];
        copy.articleDate = [self.articleDate copyWithZone:zone];
        copy.articleUnixDate = [self.articleUnixDate copyWithZone:zone];
        copy.articleUnworthy = [self.articleUnworthy copyWithZone:zone];
        copy.articleAnonymous = [self.articleAnonymous copyWithZone:zone];
        copy.articlePic = [self.articlePic copyWithZone:zone];
        copy.articleReferrals = [self.articleReferrals copyWithZone:zone];
        copy.articleComment = [self.articleComment copyWithZone:zone];
        copy.articleChannelId = [self.articleChannelId copyWithZone:zone];
        copy.timeSort = [self.timeSort copyWithZone:zone];
        copy.articleCollection = [self.articleCollection copyWithZone:zone];
        copy.articleMall = [self.articleMall copyWithZone:zone];
        copy.articleLink = [self.articleLink copyWithZone:zone];
        copy.articlePrice = [self.articlePrice copyWithZone:zone];
        copy.articleTop = [self.articleTop copyWithZone:zone];
    }
    
    return copy;
}


- (void)dealloc
{
    [_articleTag release];
    [_articleFormatDate release];
    [_articleLinkType release];
    [_articleLinkList release];
    [_articleTitle release];
    [_articleIsSoldOut release];
    [_articleUrl release];
    [_articleWorthy release];
    [_articleId release];
    [_articleIsTimeout release];
    [_articleChannelName release];
    [_articleDate release];
    [_articleUnixDate release];
    [_articleUnworthy release];
    [_articleAnonymous release];
    [_articlePic release];
    [_articleReferrals release];
    [_articleComment release];
    [_articleChannelId release];
    [_timeSort release];
    [_articleCollection release];
    [_articleMall release];
    [_articleLink release];
    [_articlePrice release];
    [_articleTop release];
    [super dealloc];
}

@end
