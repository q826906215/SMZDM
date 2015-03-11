//
//  InterfData.m
//
//  Created by   on 15/3/10
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "InterfData.h"
#import "InterfArticleMallClient.h"
#import "InterfArticleCategory.h"


NSString *const kInterfDataArticleMallClient = @"article_mall_client";
NSString *const kInterfDataArticlePicWidth = @"article_pic_width";
NSString *const kInterfDataArticlePicHeight = @"article_pic_height";
NSString *const kInterfDataArticleFormatDate = @"article_format_date";
NSString *const kInterfDataArticleLinkType = @"article_link_type";
NSString *const kInterfDataArticleLinkList = @"article_link_list";
NSString *const kInterfDataArticleTitle = @"article_title";
NSString *const kInterfDataArticleIsSoldOut = @"article_is_sold_out";
NSString *const kInterfDataArticleUrl = @"article_url";
NSString *const kInterfDataArticleFilterContent = @"article_filter_content";
NSString *const kInterfDataArticleCommentOpen = @"article_comment_open";
NSString *const kInterfDataArticleWorthy = @"article_worthy";
NSString *const kInterfDataArticleId = @"article_id";
NSString *const kInterfDataArticleIsTimeout = @"article_is_timeout";
NSString *const kInterfDataArticleFormatPic = @"article_format_pic";
NSString *const kInterfDataArticleDate = @"article_date";
NSString *const kInterfDataArticleUnworthy = @"article_unworthy";
NSString *const kInterfDataArticleAnonymous = @"article_anonymous";
NSString *const kInterfDataArticlePic = @"article_pic";
NSString *const kInterfDataArticleReferrals = @"article_referrals";
NSString *const kInterfDataArticleComment = @"article_comment";
NSString *const kInterfDataArticleContentImgList = @"article_content_img_list";
NSString *const kInterfDataArticleCollection = @"article_collection";
NSString *const kInterfDataArticleCategory = @"article_category";
NSString *const kInterfDataArticleMall = @"article_mall";
NSString *const kInterfDataArticleLink = @"article_link";
NSString *const kInterfDataArticleTag = @"article_tag";
NSString *const kInterfDataArticlePrice = @"article_price";


@interface InterfData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation InterfData

@synthesize articleMallClient = _articleMallClient;
@synthesize articlePicWidth = _articlePicWidth;
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
@synthesize articleAnonymous = _articleAnonymous;
@synthesize articlePic = _articlePic;
@synthesize articleReferrals = _articleReferrals;
@synthesize articleComment = _articleComment;
@synthesize articleContentImgList = _articleContentImgList;
@synthesize articleCollection = _articleCollection;
@synthesize articleCategory = _articleCategory;
@synthesize articleMall = _articleMall;
@synthesize articleLink = _articleLink;
@synthesize articleTag = _articleTag;
@synthesize articlePrice = _articlePrice;


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
            self.articleMallClient = [InterfArticleMallClient modelObjectWithDictionary:[dict objectForKey:kInterfDataArticleMallClient]];
            self.articlePicWidth = [self objectOrNilForKey:kInterfDataArticlePicWidth fromDictionary:dict];
            self.articlePicHeight = [self objectOrNilForKey:kInterfDataArticlePicHeight fromDictionary:dict];
            self.articleFormatDate = [self objectOrNilForKey:kInterfDataArticleFormatDate fromDictionary:dict];
            self.articleLinkType = [self objectOrNilForKey:kInterfDataArticleLinkType fromDictionary:dict];
            self.articleLinkList = [self objectOrNilForKey:kInterfDataArticleLinkList fromDictionary:dict];
            self.articleTitle = [self objectOrNilForKey:kInterfDataArticleTitle fromDictionary:dict];
            self.articleIsSoldOut = [self objectOrNilForKey:kInterfDataArticleIsSoldOut fromDictionary:dict];
            self.articleUrl = [self objectOrNilForKey:kInterfDataArticleUrl fromDictionary:dict];
            self.articleFilterContent = [self objectOrNilForKey:kInterfDataArticleFilterContent fromDictionary:dict];
            self.articleCommentOpen = [self objectOrNilForKey:kInterfDataArticleCommentOpen fromDictionary:dict];
            self.articleWorthy = [self objectOrNilForKey:kInterfDataArticleWorthy fromDictionary:dict];
            self.articleId = [self objectOrNilForKey:kInterfDataArticleId fromDictionary:dict];
            self.articleIsTimeout = [self objectOrNilForKey:kInterfDataArticleIsTimeout fromDictionary:dict];
            self.articleFormatPic = [self objectOrNilForKey:kInterfDataArticleFormatPic fromDictionary:dict];
            self.articleDate = [self objectOrNilForKey:kInterfDataArticleDate fromDictionary:dict];
            self.articleUnworthy = [self objectOrNilForKey:kInterfDataArticleUnworthy fromDictionary:dict];
            self.articleAnonymous = [[self objectOrNilForKey:kInterfDataArticleAnonymous fromDictionary:dict] boolValue];
            self.articlePic = [self objectOrNilForKey:kInterfDataArticlePic fromDictionary:dict];
            self.articleReferrals = [self objectOrNilForKey:kInterfDataArticleReferrals fromDictionary:dict];
            self.articleComment = [self objectOrNilForKey:kInterfDataArticleComment fromDictionary:dict];
            self.articleContentImgList = [self objectOrNilForKey:kInterfDataArticleContentImgList fromDictionary:dict];
            self.articleCollection = [self objectOrNilForKey:kInterfDataArticleCollection fromDictionary:dict];
            self.articleCategory = [InterfArticleCategory modelObjectWithDictionary:[dict objectForKey:kInterfDataArticleCategory]];
            self.articleMall = [self objectOrNilForKey:kInterfDataArticleMall fromDictionary:dict];
            self.articleLink = [self objectOrNilForKey:kInterfDataArticleLink fromDictionary:dict];
            self.articleTag = [self objectOrNilForKey:kInterfDataArticleTag fromDictionary:dict];
            self.articlePrice = [self objectOrNilForKey:kInterfDataArticlePrice fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.articleMallClient dictionaryRepresentation] forKey:kInterfDataArticleMallClient];
    [mutableDict setValue:self.articlePicWidth forKey:kInterfDataArticlePicWidth];
    [mutableDict setValue:self.articlePicHeight forKey:kInterfDataArticlePicHeight];
    [mutableDict setValue:self.articleFormatDate forKey:kInterfDataArticleFormatDate];
    [mutableDict setValue:self.articleLinkType forKey:kInterfDataArticleLinkType];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForArticleLinkList] forKey:kInterfDataArticleLinkList];
    [mutableDict setValue:self.articleTitle forKey:kInterfDataArticleTitle];
    [mutableDict setValue:self.articleIsSoldOut forKey:kInterfDataArticleIsSoldOut];
    [mutableDict setValue:self.articleUrl forKey:kInterfDataArticleUrl];
    [mutableDict setValue:self.articleFilterContent forKey:kInterfDataArticleFilterContent];
    [mutableDict setValue:self.articleCommentOpen forKey:kInterfDataArticleCommentOpen];
    [mutableDict setValue:self.articleWorthy forKey:kInterfDataArticleWorthy];
    [mutableDict setValue:self.articleId forKey:kInterfDataArticleId];
    [mutableDict setValue:self.articleIsTimeout forKey:kInterfDataArticleIsTimeout];
    [mutableDict setValue:self.articleFormatPic forKey:kInterfDataArticleFormatPic];
    [mutableDict setValue:self.articleDate forKey:kInterfDataArticleDate];
    [mutableDict setValue:self.articleUnworthy forKey:kInterfDataArticleUnworthy];
    [mutableDict setValue:[NSNumber numberWithBool:self.articleAnonymous] forKey:kInterfDataArticleAnonymous];
    [mutableDict setValue:self.articlePic forKey:kInterfDataArticlePic];
    [mutableDict setValue:self.articleReferrals forKey:kInterfDataArticleReferrals];
    [mutableDict setValue:self.articleComment forKey:kInterfDataArticleComment];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForArticleContentImgList] forKey:kInterfDataArticleContentImgList];
    [mutableDict setValue:self.articleCollection forKey:kInterfDataArticleCollection];
    [mutableDict setValue:[self.articleCategory dictionaryRepresentation] forKey:kInterfDataArticleCategory];
    [mutableDict setValue:self.articleMall forKey:kInterfDataArticleMall];
    [mutableDict setValue:self.articleLink forKey:kInterfDataArticleLink];
    [mutableDict setValue:self.articleTag forKey:kInterfDataArticleTag];
    [mutableDict setValue:self.articlePrice forKey:kInterfDataArticlePrice];

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

    self.articleMallClient = [aDecoder decodeObjectForKey:kInterfDataArticleMallClient];
    self.articlePicWidth = [aDecoder decodeObjectForKey:kInterfDataArticlePicWidth];
    self.articlePicHeight = [aDecoder decodeObjectForKey:kInterfDataArticlePicHeight];
    self.articleFormatDate = [aDecoder decodeObjectForKey:kInterfDataArticleFormatDate];
    self.articleLinkType = [aDecoder decodeObjectForKey:kInterfDataArticleLinkType];
    self.articleLinkList = [aDecoder decodeObjectForKey:kInterfDataArticleLinkList];
    self.articleTitle = [aDecoder decodeObjectForKey:kInterfDataArticleTitle];
    self.articleIsSoldOut = [aDecoder decodeObjectForKey:kInterfDataArticleIsSoldOut];
    self.articleUrl = [aDecoder decodeObjectForKey:kInterfDataArticleUrl];
    self.articleFilterContent = [aDecoder decodeObjectForKey:kInterfDataArticleFilterContent];
    self.articleCommentOpen = [aDecoder decodeObjectForKey:kInterfDataArticleCommentOpen];
    self.articleWorthy = [aDecoder decodeObjectForKey:kInterfDataArticleWorthy];
    self.articleId = [aDecoder decodeObjectForKey:kInterfDataArticleId];
    self.articleIsTimeout = [aDecoder decodeObjectForKey:kInterfDataArticleIsTimeout];
    self.articleFormatPic = [aDecoder decodeObjectForKey:kInterfDataArticleFormatPic];
    self.articleDate = [aDecoder decodeObjectForKey:kInterfDataArticleDate];
    self.articleUnworthy = [aDecoder decodeObjectForKey:kInterfDataArticleUnworthy];
    self.articleAnonymous = [aDecoder decodeBoolForKey:kInterfDataArticleAnonymous];
    self.articlePic = [aDecoder decodeObjectForKey:kInterfDataArticlePic];
    self.articleReferrals = [aDecoder decodeObjectForKey:kInterfDataArticleReferrals];
    self.articleComment = [aDecoder decodeObjectForKey:kInterfDataArticleComment];
    self.articleContentImgList = [aDecoder decodeObjectForKey:kInterfDataArticleContentImgList];
    self.articleCollection = [aDecoder decodeObjectForKey:kInterfDataArticleCollection];
    self.articleCategory = [aDecoder decodeObjectForKey:kInterfDataArticleCategory];
    self.articleMall = [aDecoder decodeObjectForKey:kInterfDataArticleMall];
    self.articleLink = [aDecoder decodeObjectForKey:kInterfDataArticleLink];
    self.articleTag = [aDecoder decodeObjectForKey:kInterfDataArticleTag];
    self.articlePrice = [aDecoder decodeObjectForKey:kInterfDataArticlePrice];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_articleMallClient forKey:kInterfDataArticleMallClient];
    [aCoder encodeObject:_articlePicWidth forKey:kInterfDataArticlePicWidth];
    [aCoder encodeObject:_articlePicHeight forKey:kInterfDataArticlePicHeight];
    [aCoder encodeObject:_articleFormatDate forKey:kInterfDataArticleFormatDate];
    [aCoder encodeObject:_articleLinkType forKey:kInterfDataArticleLinkType];
    [aCoder encodeObject:_articleLinkList forKey:kInterfDataArticleLinkList];
    [aCoder encodeObject:_articleTitle forKey:kInterfDataArticleTitle];
    [aCoder encodeObject:_articleIsSoldOut forKey:kInterfDataArticleIsSoldOut];
    [aCoder encodeObject:_articleUrl forKey:kInterfDataArticleUrl];
    [aCoder encodeObject:_articleFilterContent forKey:kInterfDataArticleFilterContent];
    [aCoder encodeObject:_articleCommentOpen forKey:kInterfDataArticleCommentOpen];
    [aCoder encodeObject:_articleWorthy forKey:kInterfDataArticleWorthy];
    [aCoder encodeObject:_articleId forKey:kInterfDataArticleId];
    [aCoder encodeObject:_articleIsTimeout forKey:kInterfDataArticleIsTimeout];
    [aCoder encodeObject:_articleFormatPic forKey:kInterfDataArticleFormatPic];
    [aCoder encodeObject:_articleDate forKey:kInterfDataArticleDate];
    [aCoder encodeObject:_articleUnworthy forKey:kInterfDataArticleUnworthy];
    [aCoder encodeBool:_articleAnonymous forKey:kInterfDataArticleAnonymous];
    [aCoder encodeObject:_articlePic forKey:kInterfDataArticlePic];
    [aCoder encodeObject:_articleReferrals forKey:kInterfDataArticleReferrals];
    [aCoder encodeObject:_articleComment forKey:kInterfDataArticleComment];
    [aCoder encodeObject:_articleContentImgList forKey:kInterfDataArticleContentImgList];
    [aCoder encodeObject:_articleCollection forKey:kInterfDataArticleCollection];
    [aCoder encodeObject:_articleCategory forKey:kInterfDataArticleCategory];
    [aCoder encodeObject:_articleMall forKey:kInterfDataArticleMall];
    [aCoder encodeObject:_articleLink forKey:kInterfDataArticleLink];
    [aCoder encodeObject:_articleTag forKey:kInterfDataArticleTag];
    [aCoder encodeObject:_articlePrice forKey:kInterfDataArticlePrice];
}

- (id)copyWithZone:(NSZone *)zone
{
    InterfData *copy = [[InterfData alloc] init];
    
    if (copy) {

        copy.articleMallClient = [self.articleMallClient copyWithZone:zone];
        copy.articlePicWidth = [self.articlePicWidth copyWithZone:zone];
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
        copy.articleAnonymous = self.articleAnonymous;
        copy.articlePic = [self.articlePic copyWithZone:zone];
        copy.articleReferrals = [self.articleReferrals copyWithZone:zone];
        copy.articleComment = [self.articleComment copyWithZone:zone];
        copy.articleContentImgList = [self.articleContentImgList copyWithZone:zone];
        copy.articleCollection = [self.articleCollection copyWithZone:zone];
        copy.articleCategory = [self.articleCategory copyWithZone:zone];
        copy.articleMall = [self.articleMall copyWithZone:zone];
        copy.articleLink = [self.articleLink copyWithZone:zone];
        copy.articleTag = [self.articleTag copyWithZone:zone];
        copy.articlePrice = [self.articlePrice copyWithZone:zone];
    }
    
    return copy;
}


@end
