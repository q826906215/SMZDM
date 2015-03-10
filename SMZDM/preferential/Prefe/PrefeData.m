//
//  PrefeData.m
//
//  Created by   on 15/3/10
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "PrefeData.h"
#import "PrefeArticleMallClient.h"
#import "PrefeArticleCategory.h"


NSString *const kPrefeDataArticleMallClient = @"article_mall_client";
NSString *const kPrefeDataArticlePicWidth = @"article_pic_width";
NSString *const kPrefeDataArticlePicHeight = @"article_pic_height";
NSString *const kPrefeDataArticleFormatDate = @"article_format_date";
NSString *const kPrefeDataArticleLinkType = @"article_link_type";
NSString *const kPrefeDataArticleLinkList = @"article_link_list";
NSString *const kPrefeDataArticleTitle = @"article_title";
NSString *const kPrefeDataArticleIsSoldOut = @"article_is_sold_out";
NSString *const kPrefeDataArticleUrl = @"article_url";
NSString *const kPrefeDataArticleFilterContent = @"article_filter_content";
NSString *const kPrefeDataArticleCommentOpen = @"article_comment_open";
NSString *const kPrefeDataArticleWorthy = @"article_worthy";
NSString *const kPrefeDataArticleId = @"article_id";
NSString *const kPrefeDataArticleIsTimeout = @"article_is_timeout";
NSString *const kPrefeDataArticleFormatPic = @"article_format_pic";
NSString *const kPrefeDataArticleDate = @"article_date";
NSString *const kPrefeDataArticleUnworthy = @"article_unworthy";
NSString *const kPrefeDataArticleAnonymous = @"article_anonymous";
NSString *const kPrefeDataArticlePic = @"article_pic";
NSString *const kPrefeDataArticleReferrals = @"article_referrals";
NSString *const kPrefeDataArticleComment = @"article_comment";
NSString *const kPrefeDataArticleContentImgList = @"article_content_img_list";
NSString *const kPrefeDataArticleCollection = @"article_collection";
NSString *const kPrefeDataArticleCategory = @"article_category";
NSString *const kPrefeDataArticleMall = @"article_mall";
NSString *const kPrefeDataArticleLink = @"article_link";
NSString *const kPrefeDataArticleTag = @"article_tag";
NSString *const kPrefeDataArticlePrice = @"article_price";


@interface PrefeData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation PrefeData

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
            self.articleMallClient = [PrefeArticleMallClient modelObjectWithDictionary:[dict objectForKey:kPrefeDataArticleMallClient]];
            self.articlePicWidth = [self objectOrNilForKey:kPrefeDataArticlePicWidth fromDictionary:dict];
            self.articlePicHeight = [self objectOrNilForKey:kPrefeDataArticlePicHeight fromDictionary:dict];
            self.articleFormatDate = [self objectOrNilForKey:kPrefeDataArticleFormatDate fromDictionary:dict];
            self.articleLinkType = [self objectOrNilForKey:kPrefeDataArticleLinkType fromDictionary:dict];
            self.articleLinkList = [self objectOrNilForKey:kPrefeDataArticleLinkList fromDictionary:dict];
            self.articleTitle = [self objectOrNilForKey:kPrefeDataArticleTitle fromDictionary:dict];
            self.articleIsSoldOut = [self objectOrNilForKey:kPrefeDataArticleIsSoldOut fromDictionary:dict];
            self.articleUrl = [self objectOrNilForKey:kPrefeDataArticleUrl fromDictionary:dict];
            self.articleFilterContent = [self objectOrNilForKey:kPrefeDataArticleFilterContent fromDictionary:dict];
            self.articleCommentOpen = [self objectOrNilForKey:kPrefeDataArticleCommentOpen fromDictionary:dict];
            self.articleWorthy = [self objectOrNilForKey:kPrefeDataArticleWorthy fromDictionary:dict];
            self.articleId = [self objectOrNilForKey:kPrefeDataArticleId fromDictionary:dict];
            self.articleIsTimeout = [self objectOrNilForKey:kPrefeDataArticleIsTimeout fromDictionary:dict];
            self.articleFormatPic = [self objectOrNilForKey:kPrefeDataArticleFormatPic fromDictionary:dict];
            self.articleDate = [self objectOrNilForKey:kPrefeDataArticleDate fromDictionary:dict];
            self.articleUnworthy = [self objectOrNilForKey:kPrefeDataArticleUnworthy fromDictionary:dict];
            self.articleAnonymous = [[self objectOrNilForKey:kPrefeDataArticleAnonymous fromDictionary:dict] boolValue];
            self.articlePic = [self objectOrNilForKey:kPrefeDataArticlePic fromDictionary:dict];
            self.articleReferrals = [self objectOrNilForKey:kPrefeDataArticleReferrals fromDictionary:dict];
            self.articleComment = [self objectOrNilForKey:kPrefeDataArticleComment fromDictionary:dict];
            self.articleContentImgList = [self objectOrNilForKey:kPrefeDataArticleContentImgList fromDictionary:dict];
            self.articleCollection = [self objectOrNilForKey:kPrefeDataArticleCollection fromDictionary:dict];
            self.articleCategory = [PrefeArticleCategory modelObjectWithDictionary:[dict objectForKey:kPrefeDataArticleCategory]];
            self.articleMall = [self objectOrNilForKey:kPrefeDataArticleMall fromDictionary:dict];
            self.articleLink = [self objectOrNilForKey:kPrefeDataArticleLink fromDictionary:dict];
            self.articleTag = [self objectOrNilForKey:kPrefeDataArticleTag fromDictionary:dict];
            self.articlePrice = [self objectOrNilForKey:kPrefeDataArticlePrice fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.articleMallClient dictionaryRepresentation] forKey:kPrefeDataArticleMallClient];
    [mutableDict setValue:self.articlePicWidth forKey:kPrefeDataArticlePicWidth];
    [mutableDict setValue:self.articlePicHeight forKey:kPrefeDataArticlePicHeight];
    [mutableDict setValue:self.articleFormatDate forKey:kPrefeDataArticleFormatDate];
    [mutableDict setValue:self.articleLinkType forKey:kPrefeDataArticleLinkType];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForArticleLinkList] forKey:kPrefeDataArticleLinkList];
    [mutableDict setValue:self.articleTitle forKey:kPrefeDataArticleTitle];
    [mutableDict setValue:self.articleIsSoldOut forKey:kPrefeDataArticleIsSoldOut];
    [mutableDict setValue:self.articleUrl forKey:kPrefeDataArticleUrl];
    [mutableDict setValue:self.articleFilterContent forKey:kPrefeDataArticleFilterContent];
    [mutableDict setValue:self.articleCommentOpen forKey:kPrefeDataArticleCommentOpen];
    [mutableDict setValue:self.articleWorthy forKey:kPrefeDataArticleWorthy];
    [mutableDict setValue:self.articleId forKey:kPrefeDataArticleId];
    [mutableDict setValue:self.articleIsTimeout forKey:kPrefeDataArticleIsTimeout];
    [mutableDict setValue:self.articleFormatPic forKey:kPrefeDataArticleFormatPic];
    [mutableDict setValue:self.articleDate forKey:kPrefeDataArticleDate];
    [mutableDict setValue:self.articleUnworthy forKey:kPrefeDataArticleUnworthy];
    [mutableDict setValue:[NSNumber numberWithBool:self.articleAnonymous] forKey:kPrefeDataArticleAnonymous];
    [mutableDict setValue:self.articlePic forKey:kPrefeDataArticlePic];
    [mutableDict setValue:self.articleReferrals forKey:kPrefeDataArticleReferrals];
    [mutableDict setValue:self.articleComment forKey:kPrefeDataArticleComment];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForArticleContentImgList] forKey:kPrefeDataArticleContentImgList];
    [mutableDict setValue:self.articleCollection forKey:kPrefeDataArticleCollection];
    [mutableDict setValue:[self.articleCategory dictionaryRepresentation] forKey:kPrefeDataArticleCategory];
    [mutableDict setValue:self.articleMall forKey:kPrefeDataArticleMall];
    [mutableDict setValue:self.articleLink forKey:kPrefeDataArticleLink];
    [mutableDict setValue:self.articleTag forKey:kPrefeDataArticleTag];
    [mutableDict setValue:self.articlePrice forKey:kPrefeDataArticlePrice];

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

    self.articleMallClient = [aDecoder decodeObjectForKey:kPrefeDataArticleMallClient];
    self.articlePicWidth = [aDecoder decodeObjectForKey:kPrefeDataArticlePicWidth];
    self.articlePicHeight = [aDecoder decodeObjectForKey:kPrefeDataArticlePicHeight];
    self.articleFormatDate = [aDecoder decodeObjectForKey:kPrefeDataArticleFormatDate];
    self.articleLinkType = [aDecoder decodeObjectForKey:kPrefeDataArticleLinkType];
    self.articleLinkList = [aDecoder decodeObjectForKey:kPrefeDataArticleLinkList];
    self.articleTitle = [aDecoder decodeObjectForKey:kPrefeDataArticleTitle];
    self.articleIsSoldOut = [aDecoder decodeObjectForKey:kPrefeDataArticleIsSoldOut];
    self.articleUrl = [aDecoder decodeObjectForKey:kPrefeDataArticleUrl];
    self.articleFilterContent = [aDecoder decodeObjectForKey:kPrefeDataArticleFilterContent];
    self.articleCommentOpen = [aDecoder decodeObjectForKey:kPrefeDataArticleCommentOpen];
    self.articleWorthy = [aDecoder decodeObjectForKey:kPrefeDataArticleWorthy];
    self.articleId = [aDecoder decodeObjectForKey:kPrefeDataArticleId];
    self.articleIsTimeout = [aDecoder decodeObjectForKey:kPrefeDataArticleIsTimeout];
    self.articleFormatPic = [aDecoder decodeObjectForKey:kPrefeDataArticleFormatPic];
    self.articleDate = [aDecoder decodeObjectForKey:kPrefeDataArticleDate];
    self.articleUnworthy = [aDecoder decodeObjectForKey:kPrefeDataArticleUnworthy];
    self.articleAnonymous = [aDecoder decodeBoolForKey:kPrefeDataArticleAnonymous];
    self.articlePic = [aDecoder decodeObjectForKey:kPrefeDataArticlePic];
    self.articleReferrals = [aDecoder decodeObjectForKey:kPrefeDataArticleReferrals];
    self.articleComment = [aDecoder decodeObjectForKey:kPrefeDataArticleComment];
    self.articleContentImgList = [aDecoder decodeObjectForKey:kPrefeDataArticleContentImgList];
    self.articleCollection = [aDecoder decodeObjectForKey:kPrefeDataArticleCollection];
    self.articleCategory = [aDecoder decodeObjectForKey:kPrefeDataArticleCategory];
    self.articleMall = [aDecoder decodeObjectForKey:kPrefeDataArticleMall];
    self.articleLink = [aDecoder decodeObjectForKey:kPrefeDataArticleLink];
    self.articleTag = [aDecoder decodeObjectForKey:kPrefeDataArticleTag];
    self.articlePrice = [aDecoder decodeObjectForKey:kPrefeDataArticlePrice];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_articleMallClient forKey:kPrefeDataArticleMallClient];
    [aCoder encodeObject:_articlePicWidth forKey:kPrefeDataArticlePicWidth];
    [aCoder encodeObject:_articlePicHeight forKey:kPrefeDataArticlePicHeight];
    [aCoder encodeObject:_articleFormatDate forKey:kPrefeDataArticleFormatDate];
    [aCoder encodeObject:_articleLinkType forKey:kPrefeDataArticleLinkType];
    [aCoder encodeObject:_articleLinkList forKey:kPrefeDataArticleLinkList];
    [aCoder encodeObject:_articleTitle forKey:kPrefeDataArticleTitle];
    [aCoder encodeObject:_articleIsSoldOut forKey:kPrefeDataArticleIsSoldOut];
    [aCoder encodeObject:_articleUrl forKey:kPrefeDataArticleUrl];
    [aCoder encodeObject:_articleFilterContent forKey:kPrefeDataArticleFilterContent];
    [aCoder encodeObject:_articleCommentOpen forKey:kPrefeDataArticleCommentOpen];
    [aCoder encodeObject:_articleWorthy forKey:kPrefeDataArticleWorthy];
    [aCoder encodeObject:_articleId forKey:kPrefeDataArticleId];
    [aCoder encodeObject:_articleIsTimeout forKey:kPrefeDataArticleIsTimeout];
    [aCoder encodeObject:_articleFormatPic forKey:kPrefeDataArticleFormatPic];
    [aCoder encodeObject:_articleDate forKey:kPrefeDataArticleDate];
    [aCoder encodeObject:_articleUnworthy forKey:kPrefeDataArticleUnworthy];
    [aCoder encodeBool:_articleAnonymous forKey:kPrefeDataArticleAnonymous];
    [aCoder encodeObject:_articlePic forKey:kPrefeDataArticlePic];
    [aCoder encodeObject:_articleReferrals forKey:kPrefeDataArticleReferrals];
    [aCoder encodeObject:_articleComment forKey:kPrefeDataArticleComment];
    [aCoder encodeObject:_articleContentImgList forKey:kPrefeDataArticleContentImgList];
    [aCoder encodeObject:_articleCollection forKey:kPrefeDataArticleCollection];
    [aCoder encodeObject:_articleCategory forKey:kPrefeDataArticleCategory];
    [aCoder encodeObject:_articleMall forKey:kPrefeDataArticleMall];
    [aCoder encodeObject:_articleLink forKey:kPrefeDataArticleLink];
    [aCoder encodeObject:_articleTag forKey:kPrefeDataArticleTag];
    [aCoder encodeObject:_articlePrice forKey:kPrefeDataArticlePrice];
}

- (id)copyWithZone:(NSZone *)zone
{
    PrefeData *copy = [[PrefeData alloc] init];
    
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


- (void)dealloc
{
    [_articleMallClient release];
    [_articlePicWidth release];
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
    [_articleLink release];
    [_articleTag release];
    [_articlePrice release];
    [super dealloc];
}

@end
