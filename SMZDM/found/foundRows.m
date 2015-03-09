//
//  foundRows.m
//
//  Created by   on 15/3/9
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "foundRows.h"
#import "foundArticleMallClient.h"


NSString *const kfoundRowsArticlePrice = @"article_price";
NSString *const kfoundRowsArticleFilterContent = @"article_filter_content";
NSString *const kfoundRowsArticlePic = @"article_pic";
NSString *const kfoundRowsArticleMallClient = @"article_mall_client";
NSString *const kfoundRowsArticleId = @"article_id";
NSString *const kfoundRowsArticleReferrals = @"article_referrals";
NSString *const kfoundRowsArticleLinkType = @"article_link_type";
NSString *const kfoundRowsArticleTitle = @"article_title";
NSString *const kfoundRowsArticleMall = @"article_mall";
NSString *const kfoundRowsArticleUrl = @"article_url";
NSString *const kfoundRowsArticleCollection = @"article_collection";
NSString *const kfoundRowsArticleFavorite = @"article_favorite";
NSString *const kfoundRowsArticleComment = @"article_comment";
NSString *const kfoundRowsArticleDate = @"article_date";
NSString *const kfoundRowsArticleLink = @"article_link";
NSString *const kfoundRowsArticleFormatDate = @"article_format_date";


@interface foundRows ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation foundRows

@synthesize articlePrice = _articlePrice;
@synthesize articleFilterContent = _articleFilterContent;
@synthesize articlePic = _articlePic;
@synthesize articleMallClient = _articleMallClient;
@synthesize articleId = _articleId;
@synthesize articleReferrals = _articleReferrals;
@synthesize articleLinkType = _articleLinkType;
@synthesize articleTitle = _articleTitle;
@synthesize articleMall = _articleMall;
@synthesize articleUrl = _articleUrl;
@synthesize articleCollection = _articleCollection;
@synthesize articleFavorite = _articleFavorite;
@synthesize articleComment = _articleComment;
@synthesize articleDate = _articleDate;
@synthesize articleLink = _articleLink;
@synthesize articleFormatDate = _articleFormatDate;


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
            self.articlePrice = [self objectOrNilForKey:kfoundRowsArticlePrice fromDictionary:dict];
            self.articleFilterContent = [self objectOrNilForKey:kfoundRowsArticleFilterContent fromDictionary:dict];
            self.articlePic = [self objectOrNilForKey:kfoundRowsArticlePic fromDictionary:dict];
            self.articleMallClient = [foundArticleMallClient modelObjectWithDictionary:[dict objectForKey:kfoundRowsArticleMallClient]];
            self.articleId = [self objectOrNilForKey:kfoundRowsArticleId fromDictionary:dict];
            self.articleReferrals = [self objectOrNilForKey:kfoundRowsArticleReferrals fromDictionary:dict];
            self.articleLinkType = [self objectOrNilForKey:kfoundRowsArticleLinkType fromDictionary:dict];
            self.articleTitle = [self objectOrNilForKey:kfoundRowsArticleTitle fromDictionary:dict];
            self.articleMall = [self objectOrNilForKey:kfoundRowsArticleMall fromDictionary:dict];
            self.articleUrl = [self objectOrNilForKey:kfoundRowsArticleUrl fromDictionary:dict];
            self.articleCollection = [self objectOrNilForKey:kfoundRowsArticleCollection fromDictionary:dict];
            self.articleFavorite = [self objectOrNilForKey:kfoundRowsArticleFavorite fromDictionary:dict];
            self.articleComment = [self objectOrNilForKey:kfoundRowsArticleComment fromDictionary:dict];
            self.articleDate = [self objectOrNilForKey:kfoundRowsArticleDate fromDictionary:dict];
            self.articleLink = [self objectOrNilForKey:kfoundRowsArticleLink fromDictionary:dict];
            self.articleFormatDate = [self objectOrNilForKey:kfoundRowsArticleFormatDate fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.articlePrice forKey:kfoundRowsArticlePrice];
    [mutableDict setValue:self.articleFilterContent forKey:kfoundRowsArticleFilterContent];
    [mutableDict setValue:self.articlePic forKey:kfoundRowsArticlePic];
    [mutableDict setValue:[self.articleMallClient dictionaryRepresentation] forKey:kfoundRowsArticleMallClient];
    [mutableDict setValue:self.articleId forKey:kfoundRowsArticleId];
    [mutableDict setValue:self.articleReferrals forKey:kfoundRowsArticleReferrals];
    [mutableDict setValue:self.articleLinkType forKey:kfoundRowsArticleLinkType];
    [mutableDict setValue:self.articleTitle forKey:kfoundRowsArticleTitle];
    [mutableDict setValue:self.articleMall forKey:kfoundRowsArticleMall];
    [mutableDict setValue:self.articleUrl forKey:kfoundRowsArticleUrl];
    [mutableDict setValue:self.articleCollection forKey:kfoundRowsArticleCollection];
    [mutableDict setValue:self.articleFavorite forKey:kfoundRowsArticleFavorite];
    [mutableDict setValue:self.articleComment forKey:kfoundRowsArticleComment];
    [mutableDict setValue:self.articleDate forKey:kfoundRowsArticleDate];
    [mutableDict setValue:self.articleLink forKey:kfoundRowsArticleLink];
    [mutableDict setValue:self.articleFormatDate forKey:kfoundRowsArticleFormatDate];

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

    self.articlePrice = [aDecoder decodeObjectForKey:kfoundRowsArticlePrice];
    self.articleFilterContent = [aDecoder decodeObjectForKey:kfoundRowsArticleFilterContent];
    self.articlePic = [aDecoder decodeObjectForKey:kfoundRowsArticlePic];
    self.articleMallClient = [aDecoder decodeObjectForKey:kfoundRowsArticleMallClient];
    self.articleId = [aDecoder decodeObjectForKey:kfoundRowsArticleId];
    self.articleReferrals = [aDecoder decodeObjectForKey:kfoundRowsArticleReferrals];
    self.articleLinkType = [aDecoder decodeObjectForKey:kfoundRowsArticleLinkType];
    self.articleTitle = [aDecoder decodeObjectForKey:kfoundRowsArticleTitle];
    self.articleMall = [aDecoder decodeObjectForKey:kfoundRowsArticleMall];
    self.articleUrl = [aDecoder decodeObjectForKey:kfoundRowsArticleUrl];
    self.articleCollection = [aDecoder decodeObjectForKey:kfoundRowsArticleCollection];
    self.articleFavorite = [aDecoder decodeObjectForKey:kfoundRowsArticleFavorite];
    self.articleComment = [aDecoder decodeObjectForKey:kfoundRowsArticleComment];
    self.articleDate = [aDecoder decodeObjectForKey:kfoundRowsArticleDate];
    self.articleLink = [aDecoder decodeObjectForKey:kfoundRowsArticleLink];
    self.articleFormatDate = [aDecoder decodeObjectForKey:kfoundRowsArticleFormatDate];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_articlePrice forKey:kfoundRowsArticlePrice];
    [aCoder encodeObject:_articleFilterContent forKey:kfoundRowsArticleFilterContent];
    [aCoder encodeObject:_articlePic forKey:kfoundRowsArticlePic];
    [aCoder encodeObject:_articleMallClient forKey:kfoundRowsArticleMallClient];
    [aCoder encodeObject:_articleId forKey:kfoundRowsArticleId];
    [aCoder encodeObject:_articleReferrals forKey:kfoundRowsArticleReferrals];
    [aCoder encodeObject:_articleLinkType forKey:kfoundRowsArticleLinkType];
    [aCoder encodeObject:_articleTitle forKey:kfoundRowsArticleTitle];
    [aCoder encodeObject:_articleMall forKey:kfoundRowsArticleMall];
    [aCoder encodeObject:_articleUrl forKey:kfoundRowsArticleUrl];
    [aCoder encodeObject:_articleCollection forKey:kfoundRowsArticleCollection];
    [aCoder encodeObject:_articleFavorite forKey:kfoundRowsArticleFavorite];
    [aCoder encodeObject:_articleComment forKey:kfoundRowsArticleComment];
    [aCoder encodeObject:_articleDate forKey:kfoundRowsArticleDate];
    [aCoder encodeObject:_articleLink forKey:kfoundRowsArticleLink];
    [aCoder encodeObject:_articleFormatDate forKey:kfoundRowsArticleFormatDate];
}

- (id)copyWithZone:(NSZone *)zone
{
    foundRows *copy = [[foundRows alloc] init];
    
    if (copy) {

        copy.articlePrice = [self.articlePrice copyWithZone:zone];
        copy.articleFilterContent = [self.articleFilterContent copyWithZone:zone];
        copy.articlePic = [self.articlePic copyWithZone:zone];
        copy.articleMallClient = [self.articleMallClient copyWithZone:zone];
        copy.articleId = [self.articleId copyWithZone:zone];
        copy.articleReferrals = [self.articleReferrals copyWithZone:zone];
        copy.articleLinkType = [self.articleLinkType copyWithZone:zone];
        copy.articleTitle = [self.articleTitle copyWithZone:zone];
        copy.articleMall = [self.articleMall copyWithZone:zone];
        copy.articleUrl = [self.articleUrl copyWithZone:zone];
        copy.articleCollection = [self.articleCollection copyWithZone:zone];
        copy.articleFavorite = [self.articleFavorite copyWithZone:zone];
        copy.articleComment = [self.articleComment copyWithZone:zone];
        copy.articleDate = [self.articleDate copyWithZone:zone];
        copy.articleLink = [self.articleLink copyWithZone:zone];
        copy.articleFormatDate = [self.articleFormatDate copyWithZone:zone];
    }
    
    return copy;
}


- (void)dealloc
{
    [_articlePrice release];
    [_articleFilterContent release];
    [_articlePic release];
    [_articleMallClient release];
    [_articleId release];
    [_articleReferrals release];
    [_articleLinkType release];
    [_articleTitle release];
    [_articleMall release];
    [_articleUrl release];
    [_articleCollection release];
    [_articleFavorite release];
    [_articleComment release];
    [_articleDate release];
    [_articleLink release];
    [_articleFormatDate release];
    [super dealloc];
}

@end
