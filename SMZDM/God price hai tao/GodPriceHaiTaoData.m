//
//  GodPriceHaiTaoData.m
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "GodPriceHaiTaoData.h"
#import "GodPriceHaiTaoArticleLinkList.h"
#import "GodPriceHaiTaoArticleCategory.h"


NSString *const kGodPriceHaiTaoDataArticlePicHeight = @"article_pic_height";
NSString *const kGodPriceHaiTaoDataArticleFormatDate = @"article_format_date";
NSString *const kGodPriceHaiTaoDataArticleLinkType = @"article_link_type";
NSString *const kGodPriceHaiTaoDataArticleLinkList = @"article_link_list";
NSString *const kGodPriceHaiTaoDataArticleTitle = @"article_title";
NSString *const kGodPriceHaiTaoDataArticleIsSoldOut = @"article_is_sold_out";
NSString *const kGodPriceHaiTaoDataArticleUrl = @"article_url";
NSString *const kGodPriceHaiTaoDataArticleFilterContent = @"article_filter_content";
NSString *const kGodPriceHaiTaoDataArticleCommentOpen = @"article_comment_open";
NSString *const kGodPriceHaiTaoDataArticleWorthy = @"article_worthy";
NSString *const kGodPriceHaiTaoDataArticleId = @"article_id";
NSString *const kGodPriceHaiTaoDataArticleIsTimeout = @"article_is_timeout";
NSString *const kGodPriceHaiTaoDataArticleFormatPic = @"article_format_pic";
NSString *const kGodPriceHaiTaoDataArticleDate = @"article_date";
NSString *const kGodPriceHaiTaoDataArticleUnworthy = @"article_unworthy";
NSString *const kGodPriceHaiTaoDataArticlePic = @"article_pic";
NSString *const kGodPriceHaiTaoDataArticleReferrals = @"article_referrals";
NSString *const kGodPriceHaiTaoDataArticleComment = @"article_comment";
NSString *const kGodPriceHaiTaoDataArticleContentImgList = @"article_content_img_list";
NSString *const kGodPriceHaiTaoDataArticleCollection = @"article_collection";
NSString *const kGodPriceHaiTaoDataArticleCategory = @"article_category";
NSString *const kGodPriceHaiTaoDataArticleMall = @"article_mall";
NSString *const kGodPriceHaiTaoDataArticlePrice = @"article_price";
NSString *const kGodPriceHaiTaoDataArticleLink = @"article_link";
NSString *const kGodPriceHaiTaoDataArticlePicWidth = @"article_pic_width";


@interface GodPriceHaiTaoData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GodPriceHaiTaoData

@synthesize articlePicHeight = _articlePicHeight;
@synthesize articleFormatDate = _articleFormatDate;
@synthesize articleLinkType = _articleLinkType;
@synthesize articleLinkList = _articleLinkList;
@synthesize articleTitle = _articleTitle;
@synthesize articleIsSoldOut = _articleIsSoldOut;
@synthesize articleUrl = _articleUrl;
@synthesize articleFilterContent = _articleFilterContent;
@synthesize articleCommentOpen = _articleCommentOpen;
@synthesize articleWorthy = _articleWorthy;
@synthesize articleId = _articleId;
@synthesize articleIsTimeout = _articleIsTimeout;
@synthesize articleFormatPic = _articleFormatPic;
@synthesize articleDate = _articleDate;
@synthesize articleUnworthy = _articleUnworthy;
@synthesize articlePic = _articlePic;
@synthesize articleReferrals = _articleReferrals;
@synthesize articleComment = _articleComment;
@synthesize articleContentImgList = _articleContentImgList;
@synthesize articleCollection = _articleCollection;
@synthesize articleCategory = _articleCategory;
@synthesize articleMall = _articleMall;
@synthesize articlePrice = _articlePrice;
@synthesize articleLink = _articleLink;
@synthesize articlePicWidth = _articlePicWidth;


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
            self.articlePicHeight = [self objectOrNilForKey:kGodPriceHaiTaoDataArticlePicHeight fromDictionary:dict];
            self.articleFormatDate = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleFormatDate fromDictionary:dict];
            self.articleLinkType = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleLinkType fromDictionary:dict];
    NSObject *receivedGodPriceHaiTaoArticleLinkList = [dict objectForKey:kGodPriceHaiTaoDataArticleLinkList];
    NSMutableArray *parsedGodPriceHaiTaoArticleLinkList = [NSMutableArray array];
    if ([receivedGodPriceHaiTaoArticleLinkList isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedGodPriceHaiTaoArticleLinkList) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedGodPriceHaiTaoArticleLinkList addObject:[GodPriceHaiTaoArticleLinkList modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedGodPriceHaiTaoArticleLinkList isKindOfClass:[NSDictionary class]]) {
       [parsedGodPriceHaiTaoArticleLinkList addObject:[GodPriceHaiTaoArticleLinkList modelObjectWithDictionary:(NSDictionary *)receivedGodPriceHaiTaoArticleLinkList]];
    }

    self.articleLinkList = [NSArray arrayWithArray:parsedGodPriceHaiTaoArticleLinkList];
            self.articleTitle = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleTitle fromDictionary:dict];
            self.articleIsSoldOut = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleIsSoldOut fromDictionary:dict];
            self.articleUrl = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleUrl fromDictionary:dict];
            self.articleFilterContent = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleFilterContent fromDictionary:dict];
            self.articleCommentOpen = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleCommentOpen fromDictionary:dict];
            self.articleWorthy = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleWorthy fromDictionary:dict];
            self.articleId = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleId fromDictionary:dict];
            self.articleIsTimeout = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleIsTimeout fromDictionary:dict];
            self.articleFormatPic = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleFormatPic fromDictionary:dict];
            self.articleDate = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleDate fromDictionary:dict];
            self.articleUnworthy = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleUnworthy fromDictionary:dict];
            self.articlePic = [self objectOrNilForKey:kGodPriceHaiTaoDataArticlePic fromDictionary:dict];
            self.articleReferrals = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleReferrals fromDictionary:dict];
            self.articleComment = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleComment fromDictionary:dict];
            self.articleContentImgList = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleContentImgList fromDictionary:dict];
            self.articleCollection = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleCollection fromDictionary:dict];
            self.articleCategory = [GodPriceHaiTaoArticleCategory modelObjectWithDictionary:[dict objectForKey:kGodPriceHaiTaoDataArticleCategory]];
            self.articleMall = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleMall fromDictionary:dict];
            self.articlePrice = [self objectOrNilForKey:kGodPriceHaiTaoDataArticlePrice fromDictionary:dict];
            self.articleLink = [self objectOrNilForKey:kGodPriceHaiTaoDataArticleLink fromDictionary:dict];
            self.articlePicWidth = [self objectOrNilForKey:kGodPriceHaiTaoDataArticlePicWidth fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.articlePicHeight forKey:kGodPriceHaiTaoDataArticlePicHeight];
    [mutableDict setValue:self.articleFormatDate forKey:kGodPriceHaiTaoDataArticleFormatDate];
    [mutableDict setValue:self.articleLinkType forKey:kGodPriceHaiTaoDataArticleLinkType];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForArticleLinkList] forKey:kGodPriceHaiTaoDataArticleLinkList];
    [mutableDict setValue:self.articleTitle forKey:kGodPriceHaiTaoDataArticleTitle];
    [mutableDict setValue:self.articleIsSoldOut forKey:kGodPriceHaiTaoDataArticleIsSoldOut];
    [mutableDict setValue:self.articleUrl forKey:kGodPriceHaiTaoDataArticleUrl];
    [mutableDict setValue:self.articleFilterContent forKey:kGodPriceHaiTaoDataArticleFilterContent];
    [mutableDict setValue:self.articleCommentOpen forKey:kGodPriceHaiTaoDataArticleCommentOpen];
    [mutableDict setValue:self.articleWorthy forKey:kGodPriceHaiTaoDataArticleWorthy];
    [mutableDict setValue:self.articleId forKey:kGodPriceHaiTaoDataArticleId];
    [mutableDict setValue:self.articleIsTimeout forKey:kGodPriceHaiTaoDataArticleIsTimeout];
    [mutableDict setValue:self.articleFormatPic forKey:kGodPriceHaiTaoDataArticleFormatPic];
    [mutableDict setValue:self.articleDate forKey:kGodPriceHaiTaoDataArticleDate];
    [mutableDict setValue:self.articleUnworthy forKey:kGodPriceHaiTaoDataArticleUnworthy];
    [mutableDict setValue:self.articlePic forKey:kGodPriceHaiTaoDataArticlePic];
    [mutableDict setValue:self.articleReferrals forKey:kGodPriceHaiTaoDataArticleReferrals];
    [mutableDict setValue:self.articleComment forKey:kGodPriceHaiTaoDataArticleComment];
    NSMutableArray *tempArrayForArticleContentImgList = [NSMutableArray array];
    for (NSObject *subArrayObject in self.articleContentImgList) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForArticleContentImgList addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForArticleContentImgList addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForArticleContentImgList] forKey:kGodPriceHaiTaoDataArticleContentImgList];
    [mutableDict setValue:self.articleCollection forKey:kGodPriceHaiTaoDataArticleCollection];
    [mutableDict setValue:[self.articleCategory dictionaryRepresentation] forKey:kGodPriceHaiTaoDataArticleCategory];
    [mutableDict setValue:self.articleMall forKey:kGodPriceHaiTaoDataArticleMall];
    [mutableDict setValue:self.articlePrice forKey:kGodPriceHaiTaoDataArticlePrice];
    [mutableDict setValue:self.articleLink forKey:kGodPriceHaiTaoDataArticleLink];
    [mutableDict setValue:self.articlePicWidth forKey:kGodPriceHaiTaoDataArticlePicWidth];

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

    self.articlePicHeight = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticlePicHeight];
    self.articleFormatDate = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleFormatDate];
    self.articleLinkType = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleLinkType];
    self.articleLinkList = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleLinkList];
    self.articleTitle = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleTitle];
    self.articleIsSoldOut = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleIsSoldOut];
    self.articleUrl = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleUrl];
    self.articleFilterContent = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleFilterContent];
    self.articleCommentOpen = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleCommentOpen];
    self.articleWorthy = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleWorthy];
    self.articleId = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleId];
    self.articleIsTimeout = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleIsTimeout];
    self.articleFormatPic = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleFormatPic];
    self.articleDate = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleDate];
    self.articleUnworthy = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleUnworthy];
    self.articlePic = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticlePic];
    self.articleReferrals = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleReferrals];
    self.articleComment = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleComment];
    self.articleContentImgList = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleContentImgList];
    self.articleCollection = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleCollection];
    self.articleCategory = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleCategory];
    self.articleMall = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleMall];
    self.articlePrice = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticlePrice];
    self.articleLink = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticleLink];
    self.articlePicWidth = [aDecoder decodeObjectForKey:kGodPriceHaiTaoDataArticlePicWidth];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_articlePicHeight forKey:kGodPriceHaiTaoDataArticlePicHeight];
    [aCoder encodeObject:_articleFormatDate forKey:kGodPriceHaiTaoDataArticleFormatDate];
    [aCoder encodeObject:_articleLinkType forKey:kGodPriceHaiTaoDataArticleLinkType];
    [aCoder encodeObject:_articleLinkList forKey:kGodPriceHaiTaoDataArticleLinkList];
    [aCoder encodeObject:_articleTitle forKey:kGodPriceHaiTaoDataArticleTitle];
    [aCoder encodeObject:_articleIsSoldOut forKey:kGodPriceHaiTaoDataArticleIsSoldOut];
    [aCoder encodeObject:_articleUrl forKey:kGodPriceHaiTaoDataArticleUrl];
    [aCoder encodeObject:_articleFilterContent forKey:kGodPriceHaiTaoDataArticleFilterContent];
    [aCoder encodeObject:_articleCommentOpen forKey:kGodPriceHaiTaoDataArticleCommentOpen];
    [aCoder encodeObject:_articleWorthy forKey:kGodPriceHaiTaoDataArticleWorthy];
    [aCoder encodeObject:_articleId forKey:kGodPriceHaiTaoDataArticleId];
    [aCoder encodeObject:_articleIsTimeout forKey:kGodPriceHaiTaoDataArticleIsTimeout];
    [aCoder encodeObject:_articleFormatPic forKey:kGodPriceHaiTaoDataArticleFormatPic];
    [aCoder encodeObject:_articleDate forKey:kGodPriceHaiTaoDataArticleDate];
    [aCoder encodeObject:_articleUnworthy forKey:kGodPriceHaiTaoDataArticleUnworthy];
    [aCoder encodeObject:_articlePic forKey:kGodPriceHaiTaoDataArticlePic];
    [aCoder encodeObject:_articleReferrals forKey:kGodPriceHaiTaoDataArticleReferrals];
    [aCoder encodeObject:_articleComment forKey:kGodPriceHaiTaoDataArticleComment];
    [aCoder encodeObject:_articleContentImgList forKey:kGodPriceHaiTaoDataArticleContentImgList];
    [aCoder encodeObject:_articleCollection forKey:kGodPriceHaiTaoDataArticleCollection];
    [aCoder encodeObject:_articleCategory forKey:kGodPriceHaiTaoDataArticleCategory];
    [aCoder encodeObject:_articleMall forKey:kGodPriceHaiTaoDataArticleMall];
    [aCoder encodeObject:_articlePrice forKey:kGodPriceHaiTaoDataArticlePrice];
    [aCoder encodeObject:_articleLink forKey:kGodPriceHaiTaoDataArticleLink];
    [aCoder encodeObject:_articlePicWidth forKey:kGodPriceHaiTaoDataArticlePicWidth];
}

- (id)copyWithZone:(NSZone *)zone
{
    GodPriceHaiTaoData *copy = [[GodPriceHaiTaoData alloc] init];
    
    if (copy) {

        copy.articlePicHeight = [self.articlePicHeight copyWithZone:zone];
        copy.articleFormatDate = [self.articleFormatDate copyWithZone:zone];
        copy.articleLinkType = [self.articleLinkType copyWithZone:zone];
        copy.articleLinkList = [self.articleLinkList copyWithZone:zone];
        copy.articleTitle = [self.articleTitle copyWithZone:zone];
        copy.articleIsSoldOut = [self.articleIsSoldOut copyWithZone:zone];
        copy.articleUrl = [self.articleUrl copyWithZone:zone];
        copy.articleFilterContent = [self.articleFilterContent copyWithZone:zone];
        copy.articleCommentOpen = [self.articleCommentOpen copyWithZone:zone];
        copy.articleWorthy = [self.articleWorthy copyWithZone:zone];
        copy.articleId = [self.articleId copyWithZone:zone];
        copy.articleIsTimeout = [self.articleIsTimeout copyWithZone:zone];
        copy.articleFormatPic = [self.articleFormatPic copyWithZone:zone];
        copy.articleDate = [self.articleDate copyWithZone:zone];
        copy.articleUnworthy = [self.articleUnworthy copyWithZone:zone];
        copy.articlePic = [self.articlePic copyWithZone:zone];
        copy.articleReferrals = [self.articleReferrals copyWithZone:zone];
        copy.articleComment = [self.articleComment copyWithZone:zone];
        copy.articleContentImgList = [self.articleContentImgList copyWithZone:zone];
        copy.articleCollection = [self.articleCollection copyWithZone:zone];
        copy.articleCategory = [self.articleCategory copyWithZone:zone];
        copy.articleMall = [self.articleMall copyWithZone:zone];
        copy.articlePrice = [self.articlePrice copyWithZone:zone];
        copy.articleLink = [self.articleLink copyWithZone:zone];
        copy.articlePicWidth = [self.articlePicWidth copyWithZone:zone];
    }
    
    return copy;
}


- (void)dealloc
{
    [_articlePicHeight release];
    [_articleFormatDate release];
    [_articleLinkType release];
    [_articleLinkList release];
    [_articleTitle release];
    [_articleIsSoldOut release];
    [_articleUrl release];
    [_articleFilterContent release];
    [_articleCommentOpen release];
    [_articleWorthy release];
    [_articleId release];
    [_articleIsTimeout release];
    [_articleFormatPic release];
    [_articleDate release];
    [_articleUnworthy release];
    [_articlePic release];
    [_articleReferrals release];
    [_articleComment release];
    [_articleContentImgList release];
    [_articleCollection release];
    [_articleCategory release];
    [_articleMall release];
    [_articlePrice release];
    [_articleLink release];
    [_articlePicWidth release];
    [super dealloc];
}

@end
