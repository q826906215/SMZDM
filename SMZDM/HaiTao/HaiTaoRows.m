//
//  HaiTaoRows.m
//
//  Created by   on 15/3/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "HaiTaoRows.h"


NSString *const kHaiTaoRowsArticleLink = @"article_link";
NSString *const kHaiTaoRowsArticleFormatDate = @"article_format_date";
NSString *const kHaiTaoRowsArticleLinkType = @"article_link_type";
NSString *const kHaiTaoRowsArticleLinkList = @"article_link_list";
NSString *const kHaiTaoRowsArticleWorthy = @"article_worthy";
NSString *const kHaiTaoRowsArticleTitle = @"article_title";
NSString *const kHaiTaoRowsArticleUrl = @"article_url";
NSString *const kHaiTaoRowsArticleFilterContent = @"article_filter_content";
NSString *const kHaiTaoRowsArticleIsSoldOut = @"article_is_sold_out";
NSString *const kHaiTaoRowsArticleId = @"article_id";
NSString *const kHaiTaoRowsArticleIsTimeout = @"article_is_timeout";
NSString *const kHaiTaoRowsArticleDate = @"article_date";
NSString *const kHaiTaoRowsArticleUnworthy = @"article_unworthy";
NSString *const kHaiTaoRowsArticlePic = @"article_pic";
NSString *const kHaiTaoRowsArticleReferrals = @"article_referrals";
NSString *const kHaiTaoRowsArticleComment = @"article_comment";
NSString *const kHaiTaoRowsArticleCollection = @"article_collection";
NSString *const kHaiTaoRowsArticleMall = @"article_mall";
NSString *const kHaiTaoRowsArticlePrice = @"article_price";
NSString *const kHaiTaoRowsArticleTop = @"article_top";
NSString *const kHaiTaoRowsArticleTag = @"article_tag";


@interface HaiTaoRows ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HaiTaoRows

@synthesize articleLink = _articleLink;
@synthesize articleFormatDate = _articleFormatDate;
@synthesize articleLinkType = _articleLinkType;
@synthesize articleLinkList = _articleLinkList;
@synthesize articleWorthy = _articleWorthy;
@synthesize articleTitle = _articleTitle;
@synthesize articleUrl = _articleUrl;
@synthesize articleFilterContent = _articleFilterContent;
@synthesize articleIsSoldOut = _articleIsSoldOut;
@synthesize articleId = _articleId;
@synthesize articleIsTimeout = _articleIsTimeout;
@synthesize articleDate = _articleDate;
@synthesize articleUnworthy = _articleUnworthy;
@synthesize articlePic = _articlePic;
@synthesize articleReferrals = _articleReferrals;
@synthesize articleComment = _articleComment;
@synthesize articleCollection = _articleCollection;
@synthesize articleMall = _articleMall;
@synthesize articlePrice = _articlePrice;
@synthesize articleTop = _articleTop;
@synthesize articleTag = _articleTag;


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
            self.articleLink = [self objectOrNilForKey:kHaiTaoRowsArticleLink fromDictionary:dict];
            self.articleFormatDate = [self objectOrNilForKey:kHaiTaoRowsArticleFormatDate fromDictionary:dict];
            self.articleLinkType = [self objectOrNilForKey:kHaiTaoRowsArticleLinkType fromDictionary:dict];
            self.articleLinkList = [self objectOrNilForKey:kHaiTaoRowsArticleLinkList fromDictionary:dict];
            self.articleWorthy = [self objectOrNilForKey:kHaiTaoRowsArticleWorthy fromDictionary:dict];
            self.articleTitle = [self objectOrNilForKey:kHaiTaoRowsArticleTitle fromDictionary:dict];
            self.articleUrl = [self objectOrNilForKey:kHaiTaoRowsArticleUrl fromDictionary:dict];
            self.articleFilterContent = [self objectOrNilForKey:kHaiTaoRowsArticleFilterContent fromDictionary:dict];
            self.articleIsSoldOut = [self objectOrNilForKey:kHaiTaoRowsArticleIsSoldOut fromDictionary:dict];
            self.articleId = [self objectOrNilForKey:kHaiTaoRowsArticleId fromDictionary:dict];
            self.articleIsTimeout = [self objectOrNilForKey:kHaiTaoRowsArticleIsTimeout fromDictionary:dict];
            self.articleDate = [self objectOrNilForKey:kHaiTaoRowsArticleDate fromDictionary:dict];
            self.articleUnworthy = [self objectOrNilForKey:kHaiTaoRowsArticleUnworthy fromDictionary:dict];
            self.articlePic = [self objectOrNilForKey:kHaiTaoRowsArticlePic fromDictionary:dict];
            self.articleReferrals = [self objectOrNilForKey:kHaiTaoRowsArticleReferrals fromDictionary:dict];
            self.articleComment = [self objectOrNilForKey:kHaiTaoRowsArticleComment fromDictionary:dict];
            self.articleCollection = [self objectOrNilForKey:kHaiTaoRowsArticleCollection fromDictionary:dict];
            self.articleMall = [self objectOrNilForKey:kHaiTaoRowsArticleMall fromDictionary:dict];
            self.articlePrice = [self objectOrNilForKey:kHaiTaoRowsArticlePrice fromDictionary:dict];
            self.articleTop = [self objectOrNilForKey:kHaiTaoRowsArticleTop fromDictionary:dict];
            self.articleTag = [self objectOrNilForKey:kHaiTaoRowsArticleTag fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.articleLink forKey:kHaiTaoRowsArticleLink];
    [mutableDict setValue:self.articleFormatDate forKey:kHaiTaoRowsArticleFormatDate];
    [mutableDict setValue:self.articleLinkType forKey:kHaiTaoRowsArticleLinkType];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForArticleLinkList] forKey:kHaiTaoRowsArticleLinkList];
    [mutableDict setValue:self.articleWorthy forKey:kHaiTaoRowsArticleWorthy];
    [mutableDict setValue:self.articleTitle forKey:kHaiTaoRowsArticleTitle];
    [mutableDict setValue:self.articleUrl forKey:kHaiTaoRowsArticleUrl];
    [mutableDict setValue:self.articleFilterContent forKey:kHaiTaoRowsArticleFilterContent];
    [mutableDict setValue:self.articleIsSoldOut forKey:kHaiTaoRowsArticleIsSoldOut];
    [mutableDict setValue:self.articleId forKey:kHaiTaoRowsArticleId];
    [mutableDict setValue:self.articleIsTimeout forKey:kHaiTaoRowsArticleIsTimeout];
    [mutableDict setValue:self.articleDate forKey:kHaiTaoRowsArticleDate];
    [mutableDict setValue:self.articleUnworthy forKey:kHaiTaoRowsArticleUnworthy];
    [mutableDict setValue:self.articlePic forKey:kHaiTaoRowsArticlePic];
    [mutableDict setValue:self.articleReferrals forKey:kHaiTaoRowsArticleReferrals];
    [mutableDict setValue:self.articleComment forKey:kHaiTaoRowsArticleComment];
    [mutableDict setValue:self.articleCollection forKey:kHaiTaoRowsArticleCollection];
    [mutableDict setValue:self.articleMall forKey:kHaiTaoRowsArticleMall];
    [mutableDict setValue:self.articlePrice forKey:kHaiTaoRowsArticlePrice];
    [mutableDict setValue:self.articleTop forKey:kHaiTaoRowsArticleTop];
    [mutableDict setValue:self.articleTag forKey:kHaiTaoRowsArticleTag];

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

    self.articleLink = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleLink];
    self.articleFormatDate = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleFormatDate];
    self.articleLinkType = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleLinkType];
    self.articleLinkList = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleLinkList];
    self.articleWorthy = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleWorthy];
    self.articleTitle = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleTitle];
    self.articleUrl = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleUrl];
    self.articleFilterContent = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleFilterContent];
    self.articleIsSoldOut = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleIsSoldOut];
    self.articleId = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleId];
    self.articleIsTimeout = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleIsTimeout];
    self.articleDate = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleDate];
    self.articleUnworthy = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleUnworthy];
    self.articlePic = [aDecoder decodeObjectForKey:kHaiTaoRowsArticlePic];
    self.articleReferrals = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleReferrals];
    self.articleComment = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleComment];
    self.articleCollection = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleCollection];
    self.articleMall = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleMall];
    self.articlePrice = [aDecoder decodeObjectForKey:kHaiTaoRowsArticlePrice];
    self.articleTop = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleTop];
    self.articleTag = [aDecoder decodeObjectForKey:kHaiTaoRowsArticleTag];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_articleLink forKey:kHaiTaoRowsArticleLink];
    [aCoder encodeObject:_articleFormatDate forKey:kHaiTaoRowsArticleFormatDate];
    [aCoder encodeObject:_articleLinkType forKey:kHaiTaoRowsArticleLinkType];
    [aCoder encodeObject:_articleLinkList forKey:kHaiTaoRowsArticleLinkList];
    [aCoder encodeObject:_articleWorthy forKey:kHaiTaoRowsArticleWorthy];
    [aCoder encodeObject:_articleTitle forKey:kHaiTaoRowsArticleTitle];
    [aCoder encodeObject:_articleUrl forKey:kHaiTaoRowsArticleUrl];
    [aCoder encodeObject:_articleFilterContent forKey:kHaiTaoRowsArticleFilterContent];
    [aCoder encodeObject:_articleIsSoldOut forKey:kHaiTaoRowsArticleIsSoldOut];
    [aCoder encodeObject:_articleId forKey:kHaiTaoRowsArticleId];
    [aCoder encodeObject:_articleIsTimeout forKey:kHaiTaoRowsArticleIsTimeout];
    [aCoder encodeObject:_articleDate forKey:kHaiTaoRowsArticleDate];
    [aCoder encodeObject:_articleUnworthy forKey:kHaiTaoRowsArticleUnworthy];
    [aCoder encodeObject:_articlePic forKey:kHaiTaoRowsArticlePic];
    [aCoder encodeObject:_articleReferrals forKey:kHaiTaoRowsArticleReferrals];
    [aCoder encodeObject:_articleComment forKey:kHaiTaoRowsArticleComment];
    [aCoder encodeObject:_articleCollection forKey:kHaiTaoRowsArticleCollection];
    [aCoder encodeObject:_articleMall forKey:kHaiTaoRowsArticleMall];
    [aCoder encodeObject:_articlePrice forKey:kHaiTaoRowsArticlePrice];
    [aCoder encodeObject:_articleTop forKey:kHaiTaoRowsArticleTop];
    [aCoder encodeObject:_articleTag forKey:kHaiTaoRowsArticleTag];
}

- (id)copyWithZone:(NSZone *)zone
{
    HaiTaoRows *copy = [[HaiTaoRows alloc] init];
    
    if (copy) {

        copy.articleLink = [self.articleLink copyWithZone:zone];
        copy.articleFormatDate = [self.articleFormatDate copyWithZone:zone];
        copy.articleLinkType = [self.articleLinkType copyWithZone:zone];
        copy.articleLinkList = [self.articleLinkList copyWithZone:zone];
        copy.articleWorthy = [self.articleWorthy copyWithZone:zone];
        copy.articleTitle = [self.articleTitle copyWithZone:zone];
        copy.articleUrl = [self.articleUrl copyWithZone:zone];
        copy.articleFilterContent = [self.articleFilterContent copyWithZone:zone];
        copy.articleIsSoldOut = [self.articleIsSoldOut copyWithZone:zone];
        copy.articleId = [self.articleId copyWithZone:zone];
        copy.articleIsTimeout = [self.articleIsTimeout copyWithZone:zone];
        copy.articleDate = [self.articleDate copyWithZone:zone];
        copy.articleUnworthy = [self.articleUnworthy copyWithZone:zone];
        copy.articlePic = [self.articlePic copyWithZone:zone];
        copy.articleReferrals = [self.articleReferrals copyWithZone:zone];
        copy.articleComment = [self.articleComment copyWithZone:zone];
        copy.articleCollection = [self.articleCollection copyWithZone:zone];
        copy.articleMall = [self.articleMall copyWithZone:zone];
        copy.articlePrice = [self.articlePrice copyWithZone:zone];
        copy.articleTop = [self.articleTop copyWithZone:zone];
        copy.articleTag = [self.articleTag copyWithZone:zone];
    }
    
    return copy;
}


- (void)dealloc
{
    [_articleLink release];
    [_articleFormatDate release];
    [_articleLinkType release];
    [_articleLinkList release];
    [_articleWorthy release];
    [_articleTitle release];
    [_articleUrl release];
    [_articleFilterContent release];
    [_articleIsSoldOut release];
    [_articleId release];
    [_articleIsTimeout release];
    [_articleDate release];
    [_articleUnworthy release];
    [_articlePic release];
    [_articleReferrals release];
    [_articleComment release];
    [_articleCollection release];
    [_articleMall release];
    [_articlePrice release];
    [_articleTop release];
    [_articleTag release];
    [super dealloc];
}

@end
