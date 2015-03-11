//
//  HaiData.m
//
//  Created by   on 15/3/10
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "HaiData.h"
#import "HaiArticleCategory.h"


NSString *const kHaiDataArticlePicHeight = @"article_pic_height";
NSString *const kHaiDataArticleFormatDate = @"article_format_date";
NSString *const kHaiDataArticleLinkType = @"article_link_type";
NSString *const kHaiDataArticleLinkList = @"article_link_list";
NSString *const kHaiDataArticleTitle = @"article_title";
NSString *const kHaiDataArticleIsSoldOut = @"article_is_sold_out";
NSString *const kHaiDataArticleUrl = @"article_url";
NSString *const kHaiDataArticleFilterContent = @"article_filter_content";
NSString *const kHaiDataArticleCommentOpen = @"article_comment_open";
NSString *const kHaiDataArticleWorthy = @"article_worthy";
NSString *const kHaiDataArticleId = @"article_id";
NSString *const kHaiDataArticleIsTimeout = @"article_is_timeout";
NSString *const kHaiDataArticleFormatPic = @"article_format_pic";
NSString *const kHaiDataArticleDate = @"article_date";
NSString *const kHaiDataArticleUnworthy = @"article_unworthy";
NSString *const kHaiDataArticlePic = @"article_pic";
NSString *const kHaiDataArticleReferrals = @"article_referrals";
NSString *const kHaiDataArticleComment = @"article_comment";
NSString *const kHaiDataArticleContentImgList = @"article_content_img_list";
NSString *const kHaiDataArticleCollection = @"article_collection";
NSString *const kHaiDataArticleCategory = @"article_category";
NSString *const kHaiDataArticleMall = @"article_mall";
NSString *const kHaiDataArticlePrice = @"article_price";
NSString *const kHaiDataArticleLink = @"article_link";
NSString *const kHaiDataArticlePicWidth = @"article_pic_width";


@interface HaiData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HaiData

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
            self.articlePicHeight = [self objectOrNilForKey:kHaiDataArticlePicHeight fromDictionary:dict];
            self.articleFormatDate = [self objectOrNilForKey:kHaiDataArticleFormatDate fromDictionary:dict];
            self.articleLinkType = [self objectOrNilForKey:kHaiDataArticleLinkType fromDictionary:dict];
            self.articleLinkList = [self objectOrNilForKey:kHaiDataArticleLinkList fromDictionary:dict];
            self.articleTitle = [self objectOrNilForKey:kHaiDataArticleTitle fromDictionary:dict];
            self.articleIsSoldOut = [self objectOrNilForKey:kHaiDataArticleIsSoldOut fromDictionary:dict];
            self.articleUrl = [self objectOrNilForKey:kHaiDataArticleUrl fromDictionary:dict];
            self.articleFilterContent = [self objectOrNilForKey:kHaiDataArticleFilterContent fromDictionary:dict];
            self.articleCommentOpen = [self objectOrNilForKey:kHaiDataArticleCommentOpen fromDictionary:dict];
            self.articleWorthy = [self objectOrNilForKey:kHaiDataArticleWorthy fromDictionary:dict];
            self.articleId = [self objectOrNilForKey:kHaiDataArticleId fromDictionary:dict];
            self.articleIsTimeout = [self objectOrNilForKey:kHaiDataArticleIsTimeout fromDictionary:dict];
            self.articleFormatPic = [self objectOrNilForKey:kHaiDataArticleFormatPic fromDictionary:dict];
            self.articleDate = [self objectOrNilForKey:kHaiDataArticleDate fromDictionary:dict];
            self.articleUnworthy = [self objectOrNilForKey:kHaiDataArticleUnworthy fromDictionary:dict];
            self.articlePic = [self objectOrNilForKey:kHaiDataArticlePic fromDictionary:dict];
            self.articleReferrals = [self objectOrNilForKey:kHaiDataArticleReferrals fromDictionary:dict];
            self.articleComment = [self objectOrNilForKey:kHaiDataArticleComment fromDictionary:dict];
            self.articleContentImgList = [self objectOrNilForKey:kHaiDataArticleContentImgList fromDictionary:dict];
            self.articleCollection = [self objectOrNilForKey:kHaiDataArticleCollection fromDictionary:dict];
            self.articleCategory = [HaiArticleCategory modelObjectWithDictionary:[dict objectForKey:kHaiDataArticleCategory]];
            self.articleMall = [self objectOrNilForKey:kHaiDataArticleMall fromDictionary:dict];
            self.articlePrice = [self objectOrNilForKey:kHaiDataArticlePrice fromDictionary:dict];
            self.articleLink = [self objectOrNilForKey:kHaiDataArticleLink fromDictionary:dict];
            self.articlePicWidth = [self objectOrNilForKey:kHaiDataArticlePicWidth fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.articlePicHeight forKey:kHaiDataArticlePicHeight];
    [mutableDict setValue:self.articleFormatDate forKey:kHaiDataArticleFormatDate];
    [mutableDict setValue:self.articleLinkType forKey:kHaiDataArticleLinkType];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForArticleLinkList] forKey:kHaiDataArticleLinkList];
    [mutableDict setValue:self.articleTitle forKey:kHaiDataArticleTitle];
    [mutableDict setValue:self.articleIsSoldOut forKey:kHaiDataArticleIsSoldOut];
    [mutableDict setValue:self.articleUrl forKey:kHaiDataArticleUrl];
    [mutableDict setValue:self.articleFilterContent forKey:kHaiDataArticleFilterContent];
    [mutableDict setValue:self.articleCommentOpen forKey:kHaiDataArticleCommentOpen];
    [mutableDict setValue:self.articleWorthy forKey:kHaiDataArticleWorthy];
    [mutableDict setValue:self.articleId forKey:kHaiDataArticleId];
    [mutableDict setValue:self.articleIsTimeout forKey:kHaiDataArticleIsTimeout];
    [mutableDict setValue:self.articleFormatPic forKey:kHaiDataArticleFormatPic];
    [mutableDict setValue:self.articleDate forKey:kHaiDataArticleDate];
    [mutableDict setValue:self.articleUnworthy forKey:kHaiDataArticleUnworthy];
    [mutableDict setValue:self.articlePic forKey:kHaiDataArticlePic];
    [mutableDict setValue:self.articleReferrals forKey:kHaiDataArticleReferrals];
    [mutableDict setValue:self.articleComment forKey:kHaiDataArticleComment];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForArticleContentImgList] forKey:kHaiDataArticleContentImgList];
    [mutableDict setValue:self.articleCollection forKey:kHaiDataArticleCollection];
    [mutableDict setValue:[self.articleCategory dictionaryRepresentation] forKey:kHaiDataArticleCategory];
    [mutableDict setValue:self.articleMall forKey:kHaiDataArticleMall];
    [mutableDict setValue:self.articlePrice forKey:kHaiDataArticlePrice];
    [mutableDict setValue:self.articleLink forKey:kHaiDataArticleLink];
    [mutableDict setValue:self.articlePicWidth forKey:kHaiDataArticlePicWidth];

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

    self.articlePicHeight = [aDecoder decodeObjectForKey:kHaiDataArticlePicHeight];
    self.articleFormatDate = [aDecoder decodeObjectForKey:kHaiDataArticleFormatDate];
    self.articleLinkType = [aDecoder decodeObjectForKey:kHaiDataArticleLinkType];
    self.articleLinkList = [aDecoder decodeObjectForKey:kHaiDataArticleLinkList];
    self.articleTitle = [aDecoder decodeObjectForKey:kHaiDataArticleTitle];
    self.articleIsSoldOut = [aDecoder decodeObjectForKey:kHaiDataArticleIsSoldOut];
    self.articleUrl = [aDecoder decodeObjectForKey:kHaiDataArticleUrl];
    self.articleFilterContent = [aDecoder decodeObjectForKey:kHaiDataArticleFilterContent];
    self.articleCommentOpen = [aDecoder decodeObjectForKey:kHaiDataArticleCommentOpen];
    self.articleWorthy = [aDecoder decodeObjectForKey:kHaiDataArticleWorthy];
    self.articleId = [aDecoder decodeObjectForKey:kHaiDataArticleId];
    self.articleIsTimeout = [aDecoder decodeObjectForKey:kHaiDataArticleIsTimeout];
    self.articleFormatPic = [aDecoder decodeObjectForKey:kHaiDataArticleFormatPic];
    self.articleDate = [aDecoder decodeObjectForKey:kHaiDataArticleDate];
    self.articleUnworthy = [aDecoder decodeObjectForKey:kHaiDataArticleUnworthy];
    self.articlePic = [aDecoder decodeObjectForKey:kHaiDataArticlePic];
    self.articleReferrals = [aDecoder decodeObjectForKey:kHaiDataArticleReferrals];
    self.articleComment = [aDecoder decodeObjectForKey:kHaiDataArticleComment];
    self.articleContentImgList = [aDecoder decodeObjectForKey:kHaiDataArticleContentImgList];
    self.articleCollection = [aDecoder decodeObjectForKey:kHaiDataArticleCollection];
    self.articleCategory = [aDecoder decodeObjectForKey:kHaiDataArticleCategory];
    self.articleMall = [aDecoder decodeObjectForKey:kHaiDataArticleMall];
    self.articlePrice = [aDecoder decodeObjectForKey:kHaiDataArticlePrice];
    self.articleLink = [aDecoder decodeObjectForKey:kHaiDataArticleLink];
    self.articlePicWidth = [aDecoder decodeObjectForKey:kHaiDataArticlePicWidth];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_articlePicHeight forKey:kHaiDataArticlePicHeight];
    [aCoder encodeObject:_articleFormatDate forKey:kHaiDataArticleFormatDate];
    [aCoder encodeObject:_articleLinkType forKey:kHaiDataArticleLinkType];
    [aCoder encodeObject:_articleLinkList forKey:kHaiDataArticleLinkList];
    [aCoder encodeObject:_articleTitle forKey:kHaiDataArticleTitle];
    [aCoder encodeObject:_articleIsSoldOut forKey:kHaiDataArticleIsSoldOut];
    [aCoder encodeObject:_articleUrl forKey:kHaiDataArticleUrl];
    [aCoder encodeObject:_articleFilterContent forKey:kHaiDataArticleFilterContent];
    [aCoder encodeObject:_articleCommentOpen forKey:kHaiDataArticleCommentOpen];
    [aCoder encodeObject:_articleWorthy forKey:kHaiDataArticleWorthy];
    [aCoder encodeObject:_articleId forKey:kHaiDataArticleId];
    [aCoder encodeObject:_articleIsTimeout forKey:kHaiDataArticleIsTimeout];
    [aCoder encodeObject:_articleFormatPic forKey:kHaiDataArticleFormatPic];
    [aCoder encodeObject:_articleDate forKey:kHaiDataArticleDate];
    [aCoder encodeObject:_articleUnworthy forKey:kHaiDataArticleUnworthy];
    [aCoder encodeObject:_articlePic forKey:kHaiDataArticlePic];
    [aCoder encodeObject:_articleReferrals forKey:kHaiDataArticleReferrals];
    [aCoder encodeObject:_articleComment forKey:kHaiDataArticleComment];
    [aCoder encodeObject:_articleContentImgList forKey:kHaiDataArticleContentImgList];
    [aCoder encodeObject:_articleCollection forKey:kHaiDataArticleCollection];
    [aCoder encodeObject:_articleCategory forKey:kHaiDataArticleCategory];
    [aCoder encodeObject:_articleMall forKey:kHaiDataArticleMall];
    [aCoder encodeObject:_articlePrice forKey:kHaiDataArticlePrice];
    [aCoder encodeObject:_articleLink forKey:kHaiDataArticleLink];
    [aCoder encodeObject:_articlePicWidth forKey:kHaiDataArticlePicWidth];
}

- (id)copyWithZone:(NSZone *)zone
{
    HaiData *copy = [[HaiData alloc] init];
    
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
