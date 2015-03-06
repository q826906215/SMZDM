//
//  preferentialRows.m
//
//  Created by   on 15/3/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "preferentialRows.h"
#import "preferentialArticleMallClient.h"


NSString *const kpreferentialRowsArticleMallClient = @"article_mall_client";
NSString *const kpreferentialRowsArticleTag = @"article_tag";
NSString *const kpreferentialRowsArticleFormatDate = @"article_format_date";
NSString *const kpreferentialRowsArticleLinkType = @"article_link_type";
NSString *const kpreferentialRowsArticleLinkList = @"article_link_list";
NSString *const kpreferentialRowsArticleTitle = @"article_title";
NSString *const kpreferentialRowsArticleIsSoldOut = @"article_is_sold_out";
NSString *const kpreferentialRowsArticleUrl = @"article_url";
NSString *const kpreferentialRowsArticleFilterContent = @"article_filter_content";
NSString *const kpreferentialRowsArticleWorthy = @"article_worthy";
NSString *const kpreferentialRowsArticleId = @"article_id";
NSString *const kpreferentialRowsArticleIsTimeout = @"article_is_timeout";
NSString *const kpreferentialRowsArticleDate = @"article_date";
NSString *const kpreferentialRowsArticleUnixDate = @"article_unix_date";
NSString *const kpreferentialRowsArticleUnworthy = @"article_unworthy";
NSString *const kpreferentialRowsArticleAnonymous = @"article_anonymous";
NSString *const kpreferentialRowsArticlePic = @"article_pic";
NSString *const kpreferentialRowsArticleReferrals = @"article_referrals";
NSString *const kpreferentialRowsArticleComment = @"article_comment";
NSString *const kpreferentialRowsArticleCollection = @"article_collection";
NSString *const kpreferentialRowsArticleMall = @"article_mall";
NSString *const kpreferentialRowsArticleLink = @"article_link";
NSString *const kpreferentialRowsArticlePrice = @"article_price";
NSString *const kpreferentialRowsArticleTop = @"article_top";


@interface preferentialRows ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation preferentialRows

@synthesize articleMallClient = _articleMallClient;
@synthesize articleTag = _articleTag;
@synthesize articleFormatDate = _articleFormatDate;
@synthesize articleLinkType = _articleLinkType;
@synthesize articleLinkList = _articleLinkList;
@synthesize articleTitle = _articleTitle;
@synthesize articleIsSoldOut = _articleIsSoldOut;
@synthesize articleUrl = _articleUrl;
@synthesize articleFilterContent = _articleFilterContent;
@synthesize articleWorthy = _articleWorthy;
@synthesize articleId = _articleId;
@synthesize articleIsTimeout = _articleIsTimeout;
@synthesize articleDate = _articleDate;
@synthesize articleUnixDate = _articleUnixDate;
@synthesize articleUnworthy = _articleUnworthy;
@synthesize articleAnonymous = _articleAnonymous;
@synthesize articlePic = _articlePic;
@synthesize articleReferrals = _articleReferrals;
@synthesize articleComment = _articleComment;
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
            self.articleMallClient = [preferentialArticleMallClient modelObjectWithDictionary:[dict objectForKey:kpreferentialRowsArticleMallClient]];
            self.articleTag = [self objectOrNilForKey:kpreferentialRowsArticleTag fromDictionary:dict];
            self.articleFormatDate = [self objectOrNilForKey:kpreferentialRowsArticleFormatDate fromDictionary:dict];
            self.articleLinkType = [self objectOrNilForKey:kpreferentialRowsArticleLinkType fromDictionary:dict];
            self.articleLinkList = [self objectOrNilForKey:kpreferentialRowsArticleLinkList fromDictionary:dict];
            self.articleTitle = [self objectOrNilForKey:kpreferentialRowsArticleTitle fromDictionary:dict];
            self.articleIsSoldOut = [self objectOrNilForKey:kpreferentialRowsArticleIsSoldOut fromDictionary:dict];
            self.articleUrl = [self objectOrNilForKey:kpreferentialRowsArticleUrl fromDictionary:dict];
            self.articleFilterContent = [self objectOrNilForKey:kpreferentialRowsArticleFilterContent fromDictionary:dict];
            self.articleWorthy = [self objectOrNilForKey:kpreferentialRowsArticleWorthy fromDictionary:dict];
            self.articleId = [self objectOrNilForKey:kpreferentialRowsArticleId fromDictionary:dict];
            self.articleIsTimeout = [self objectOrNilForKey:kpreferentialRowsArticleIsTimeout fromDictionary:dict];
            self.articleDate = [self objectOrNilForKey:kpreferentialRowsArticleDate fromDictionary:dict];
            self.articleUnixDate = [self objectOrNilForKey:kpreferentialRowsArticleUnixDate fromDictionary:dict];
            self.articleUnworthy = [self objectOrNilForKey:kpreferentialRowsArticleUnworthy fromDictionary:dict];
            self.articleAnonymous = [[self objectOrNilForKey:kpreferentialRowsArticleAnonymous fromDictionary:dict] boolValue];
            self.articlePic = [self objectOrNilForKey:kpreferentialRowsArticlePic fromDictionary:dict];
            self.articleReferrals = [self objectOrNilForKey:kpreferentialRowsArticleReferrals fromDictionary:dict];
            self.articleComment = [self objectOrNilForKey:kpreferentialRowsArticleComment fromDictionary:dict];
            self.articleCollection = [self objectOrNilForKey:kpreferentialRowsArticleCollection fromDictionary:dict];
            self.articleMall = [self objectOrNilForKey:kpreferentialRowsArticleMall fromDictionary:dict];
            self.articleLink = [self objectOrNilForKey:kpreferentialRowsArticleLink fromDictionary:dict];
            self.articlePrice = [self objectOrNilForKey:kpreferentialRowsArticlePrice fromDictionary:dict];
            self.articleTop = [self objectOrNilForKey:kpreferentialRowsArticleTop fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.articleMallClient dictionaryRepresentation] forKey:kpreferentialRowsArticleMallClient];
    [mutableDict setValue:self.articleTag forKey:kpreferentialRowsArticleTag];
    [mutableDict setValue:self.articleFormatDate forKey:kpreferentialRowsArticleFormatDate];
    [mutableDict setValue:self.articleLinkType forKey:kpreferentialRowsArticleLinkType];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForArticleLinkList] forKey:kpreferentialRowsArticleLinkList];
    [mutableDict setValue:self.articleTitle forKey:kpreferentialRowsArticleTitle];
    [mutableDict setValue:self.articleIsSoldOut forKey:kpreferentialRowsArticleIsSoldOut];
    [mutableDict setValue:self.articleUrl forKey:kpreferentialRowsArticleUrl];
    [mutableDict setValue:self.articleFilterContent forKey:kpreferentialRowsArticleFilterContent];
    [mutableDict setValue:self.articleWorthy forKey:kpreferentialRowsArticleWorthy];
    [mutableDict setValue:self.articleId forKey:kpreferentialRowsArticleId];
    [mutableDict setValue:self.articleIsTimeout forKey:kpreferentialRowsArticleIsTimeout];
    [mutableDict setValue:self.articleDate forKey:kpreferentialRowsArticleDate];
    [mutableDict setValue:self.articleUnixDate forKey:kpreferentialRowsArticleUnixDate];
    [mutableDict setValue:self.articleUnworthy forKey:kpreferentialRowsArticleUnworthy];
    [mutableDict setValue:[NSNumber numberWithBool:self.articleAnonymous] forKey:kpreferentialRowsArticleAnonymous];
    [mutableDict setValue:self.articlePic forKey:kpreferentialRowsArticlePic];
    [mutableDict setValue:self.articleReferrals forKey:kpreferentialRowsArticleReferrals];
    [mutableDict setValue:self.articleComment forKey:kpreferentialRowsArticleComment];
    [mutableDict setValue:self.articleCollection forKey:kpreferentialRowsArticleCollection];
    [mutableDict setValue:self.articleMall forKey:kpreferentialRowsArticleMall];
    [mutableDict setValue:self.articleLink forKey:kpreferentialRowsArticleLink];
    [mutableDict setValue:self.articlePrice forKey:kpreferentialRowsArticlePrice];
    [mutableDict setValue:self.articleTop forKey:kpreferentialRowsArticleTop];

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

    self.articleMallClient = [aDecoder decodeObjectForKey:kpreferentialRowsArticleMallClient];
    self.articleTag = [aDecoder decodeObjectForKey:kpreferentialRowsArticleTag];
    self.articleFormatDate = [aDecoder decodeObjectForKey:kpreferentialRowsArticleFormatDate];
    self.articleLinkType = [aDecoder decodeObjectForKey:kpreferentialRowsArticleLinkType];
    self.articleLinkList = [aDecoder decodeObjectForKey:kpreferentialRowsArticleLinkList];
    self.articleTitle = [aDecoder decodeObjectForKey:kpreferentialRowsArticleTitle];
    self.articleIsSoldOut = [aDecoder decodeObjectForKey:kpreferentialRowsArticleIsSoldOut];
    self.articleUrl = [aDecoder decodeObjectForKey:kpreferentialRowsArticleUrl];
    self.articleFilterContent = [aDecoder decodeObjectForKey:kpreferentialRowsArticleFilterContent];
    self.articleWorthy = [aDecoder decodeObjectForKey:kpreferentialRowsArticleWorthy];
    self.articleId = [aDecoder decodeObjectForKey:kpreferentialRowsArticleId];
    self.articleIsTimeout = [aDecoder decodeObjectForKey:kpreferentialRowsArticleIsTimeout];
    self.articleDate = [aDecoder decodeObjectForKey:kpreferentialRowsArticleDate];
    self.articleUnixDate = [aDecoder decodeObjectForKey:kpreferentialRowsArticleUnixDate];
    self.articleUnworthy = [aDecoder decodeObjectForKey:kpreferentialRowsArticleUnworthy];
    self.articleAnonymous = [aDecoder decodeBoolForKey:kpreferentialRowsArticleAnonymous];
    self.articlePic = [aDecoder decodeObjectForKey:kpreferentialRowsArticlePic];
    self.articleReferrals = [aDecoder decodeObjectForKey:kpreferentialRowsArticleReferrals];
    self.articleComment = [aDecoder decodeObjectForKey:kpreferentialRowsArticleComment];
    self.articleCollection = [aDecoder decodeObjectForKey:kpreferentialRowsArticleCollection];
    self.articleMall = [aDecoder decodeObjectForKey:kpreferentialRowsArticleMall];
    self.articleLink = [aDecoder decodeObjectForKey:kpreferentialRowsArticleLink];
    self.articlePrice = [aDecoder decodeObjectForKey:kpreferentialRowsArticlePrice];
    self.articleTop = [aDecoder decodeObjectForKey:kpreferentialRowsArticleTop];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_articleMallClient forKey:kpreferentialRowsArticleMallClient];
    [aCoder encodeObject:_articleTag forKey:kpreferentialRowsArticleTag];
    [aCoder encodeObject:_articleFormatDate forKey:kpreferentialRowsArticleFormatDate];
    [aCoder encodeObject:_articleLinkType forKey:kpreferentialRowsArticleLinkType];
    [aCoder encodeObject:_articleLinkList forKey:kpreferentialRowsArticleLinkList];
    [aCoder encodeObject:_articleTitle forKey:kpreferentialRowsArticleTitle];
    [aCoder encodeObject:_articleIsSoldOut forKey:kpreferentialRowsArticleIsSoldOut];
    [aCoder encodeObject:_articleUrl forKey:kpreferentialRowsArticleUrl];
    [aCoder encodeObject:_articleFilterContent forKey:kpreferentialRowsArticleFilterContent];
    [aCoder encodeObject:_articleWorthy forKey:kpreferentialRowsArticleWorthy];
    [aCoder encodeObject:_articleId forKey:kpreferentialRowsArticleId];
    [aCoder encodeObject:_articleIsTimeout forKey:kpreferentialRowsArticleIsTimeout];
    [aCoder encodeObject:_articleDate forKey:kpreferentialRowsArticleDate];
    [aCoder encodeObject:_articleUnixDate forKey:kpreferentialRowsArticleUnixDate];
    [aCoder encodeObject:_articleUnworthy forKey:kpreferentialRowsArticleUnworthy];
    [aCoder encodeBool:_articleAnonymous forKey:kpreferentialRowsArticleAnonymous];
    [aCoder encodeObject:_articlePic forKey:kpreferentialRowsArticlePic];
    [aCoder encodeObject:_articleReferrals forKey:kpreferentialRowsArticleReferrals];
    [aCoder encodeObject:_articleComment forKey:kpreferentialRowsArticleComment];
    [aCoder encodeObject:_articleCollection forKey:kpreferentialRowsArticleCollection];
    [aCoder encodeObject:_articleMall forKey:kpreferentialRowsArticleMall];
    [aCoder encodeObject:_articleLink forKey:kpreferentialRowsArticleLink];
    [aCoder encodeObject:_articlePrice forKey:kpreferentialRowsArticlePrice];
    [aCoder encodeObject:_articleTop forKey:kpreferentialRowsArticleTop];
}

- (id)copyWithZone:(NSZone *)zone
{
    preferentialRows *copy = [[preferentialRows alloc] init];
    
    if (copy) {

        copy.articleMallClient = [self.articleMallClient copyWithZone:zone];
        copy.articleTag = [self.articleTag copyWithZone:zone];
        copy.articleFormatDate = [self.articleFormatDate copyWithZone:zone];
        copy.articleLinkType = [self.articleLinkType copyWithZone:zone];
        copy.articleLinkList = [self.articleLinkList copyWithZone:zone];
        copy.articleTitle = [self.articleTitle copyWithZone:zone];
        copy.articleIsSoldOut = [self.articleIsSoldOut copyWithZone:zone];
        copy.articleUrl = [self.articleUrl copyWithZone:zone];
        copy.articleFilterContent = [self.articleFilterContent copyWithZone:zone];
        copy.articleWorthy = [self.articleWorthy copyWithZone:zone];
        copy.articleId = [self.articleId copyWithZone:zone];
        copy.articleIsTimeout = [self.articleIsTimeout copyWithZone:zone];
        copy.articleDate = [self.articleDate copyWithZone:zone];
        copy.articleUnixDate = [self.articleUnixDate copyWithZone:zone];
        copy.articleUnworthy = [self.articleUnworthy copyWithZone:zone];
        copy.articleAnonymous = self.articleAnonymous;
        copy.articlePic = [self.articlePic copyWithZone:zone];
        copy.articleReferrals = [self.articleReferrals copyWithZone:zone];
        copy.articleComment = [self.articleComment copyWithZone:zone];
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
    [_articleMallClient release];
    [_articleTag release];
    [_articleFormatDate release];
    [_articleLinkType release];
    [_articleLinkList release];
    [_articleTitle release];
    [_articleIsSoldOut release];
    [_articleUrl release];
    [_articleFilterContent release];
    [_articleWorthy release];
    [_articleId release];
    [_articleIsTimeout release];
    [_articleDate release];
    [_articleUnixDate release];
    [_articleUnworthy release];
    [_articlePic release];
    [_articleReferrals release];
    [_articleComment release];
    [_articleCollection release];
    [_articleMall release];
    [_articleLink release];
    [_articlePrice release];
    [_articleTop release];
    [super dealloc];
}

@end
