//
//  foundStData.m
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "foundStData.h"
#import "foundStArticleMallClient.h"
#import "foundStArticleCategory.h"


NSString *const kfoundStDataArticleMallClient = @"article_mall_client";
NSString *const kfoundStDataArticlePicHeight = @"article_pic_height";
NSString *const kfoundStDataArticleFormatDate = @"article_format_date";
NSString *const kfoundStDataArticleLinkType = @"article_link_type";
NSString *const kfoundStDataArticleCommentOpen = @"article_comment_open";
NSString *const kfoundStDataArticleTitle = @"article_title";
NSString *const kfoundStDataArticleUrl = @"article_url";
NSString *const kfoundStDataArticleFilterContent = @"article_filter_content";
NSString *const kfoundStDataArticleId = @"article_id";
NSString *const kfoundStDataArticleFormatPic = @"article_format_pic";
NSString *const kfoundStDataArticleFavorite = @"article_favorite";
NSString *const kfoundStDataArticleDate = @"article_date";
NSString *const kfoundStDataArticleAnonymous = @"article_anonymous";
NSString *const kfoundStDataArticlePic = @"article_pic";
NSString *const kfoundStDataArticleReferrals = @"article_referrals";
NSString *const kfoundStDataArticleComment = @"article_comment";
NSString *const kfoundStDataArticleContentImgList = @"article_content_img_list";
NSString *const kfoundStDataArticleCollection = @"article_collection";
NSString *const kfoundStDataArticleCategory = @"article_category";
NSString *const kfoundStDataArticleMall = @"article_mall";
NSString *const kfoundStDataArticlePrice = @"article_price";
NSString *const kfoundStDataArticleLink = @"article_link";
NSString *const kfoundStDataArticlePicWidth = @"article_pic_width";


@interface foundStData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation foundStData

@synthesize articleMallClient = _articleMallClient;
@synthesize articlePicHeight = _articlePicHeight;
@synthesize articleFormatDate = _articleFormatDate;
@synthesize articleLinkType = _articleLinkType;
@synthesize articleCommentOpen = _articleCommentOpen;
@synthesize articleTitle = _articleTitle;
@synthesize articleUrl = _articleUrl;
@synthesize articleFilterContent = _articleFilterContent;
@synthesize articleId = _articleId;
@synthesize articleFormatPic = _articleFormatPic;
@synthesize articleFavorite = _articleFavorite;
@synthesize articleDate = _articleDate;
@synthesize articleAnonymous = _articleAnonymous;
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
            self.articleMallClient = [foundStArticleMallClient modelObjectWithDictionary:[dict objectForKey:kfoundStDataArticleMallClient]];
            self.articlePicHeight = [self objectOrNilForKey:kfoundStDataArticlePicHeight fromDictionary:dict];
            self.articleFormatDate = [self objectOrNilForKey:kfoundStDataArticleFormatDate fromDictionary:dict];
            self.articleLinkType = [self objectOrNilForKey:kfoundStDataArticleLinkType fromDictionary:dict];
            self.articleCommentOpen = [self objectOrNilForKey:kfoundStDataArticleCommentOpen fromDictionary:dict];
            self.articleTitle = [self objectOrNilForKey:kfoundStDataArticleTitle fromDictionary:dict];
            self.articleUrl = [self objectOrNilForKey:kfoundStDataArticleUrl fromDictionary:dict];
            self.articleFilterContent = [self objectOrNilForKey:kfoundStDataArticleFilterContent fromDictionary:dict];
            self.articleId = [self objectOrNilForKey:kfoundStDataArticleId fromDictionary:dict];
            self.articleFormatPic = [self objectOrNilForKey:kfoundStDataArticleFormatPic fromDictionary:dict];
            self.articleFavorite = [self objectOrNilForKey:kfoundStDataArticleFavorite fromDictionary:dict];
            self.articleDate = [self objectOrNilForKey:kfoundStDataArticleDate fromDictionary:dict];
            self.articleAnonymous = [[self objectOrNilForKey:kfoundStDataArticleAnonymous fromDictionary:dict] boolValue];
            self.articlePic = [self objectOrNilForKey:kfoundStDataArticlePic fromDictionary:dict];
            self.articleReferrals = [self objectOrNilForKey:kfoundStDataArticleReferrals fromDictionary:dict];
            self.articleComment = [self objectOrNilForKey:kfoundStDataArticleComment fromDictionary:dict];
            self.articleContentImgList = [self objectOrNilForKey:kfoundStDataArticleContentImgList fromDictionary:dict];
            self.articleCollection = [self objectOrNilForKey:kfoundStDataArticleCollection fromDictionary:dict];
            self.articleCategory = [foundStArticleCategory modelObjectWithDictionary:[dict objectForKey:kfoundStDataArticleCategory]];
            self.articleMall = [self objectOrNilForKey:kfoundStDataArticleMall fromDictionary:dict];
            self.articlePrice = [self objectOrNilForKey:kfoundStDataArticlePrice fromDictionary:dict];
            self.articleLink = [self objectOrNilForKey:kfoundStDataArticleLink fromDictionary:dict];
            self.articlePicWidth = [self objectOrNilForKey:kfoundStDataArticlePicWidth fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.articleMallClient dictionaryRepresentation] forKey:kfoundStDataArticleMallClient];
    [mutableDict setValue:self.articlePicHeight forKey:kfoundStDataArticlePicHeight];
    [mutableDict setValue:self.articleFormatDate forKey:kfoundStDataArticleFormatDate];
    [mutableDict setValue:self.articleLinkType forKey:kfoundStDataArticleLinkType];
    [mutableDict setValue:self.articleCommentOpen forKey:kfoundStDataArticleCommentOpen];
    [mutableDict setValue:self.articleTitle forKey:kfoundStDataArticleTitle];
    [mutableDict setValue:self.articleUrl forKey:kfoundStDataArticleUrl];
    [mutableDict setValue:self.articleFilterContent forKey:kfoundStDataArticleFilterContent];
    [mutableDict setValue:self.articleId forKey:kfoundStDataArticleId];
    [mutableDict setValue:self.articleFormatPic forKey:kfoundStDataArticleFormatPic];
    [mutableDict setValue:self.articleFavorite forKey:kfoundStDataArticleFavorite];
    [mutableDict setValue:self.articleDate forKey:kfoundStDataArticleDate];
    [mutableDict setValue:[NSNumber numberWithBool:self.articleAnonymous] forKey:kfoundStDataArticleAnonymous];
    [mutableDict setValue:self.articlePic forKey:kfoundStDataArticlePic];
    [mutableDict setValue:self.articleReferrals forKey:kfoundStDataArticleReferrals];
    [mutableDict setValue:self.articleComment forKey:kfoundStDataArticleComment];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForArticleContentImgList] forKey:kfoundStDataArticleContentImgList];
    [mutableDict setValue:self.articleCollection forKey:kfoundStDataArticleCollection];
    [mutableDict setValue:[self.articleCategory dictionaryRepresentation] forKey:kfoundStDataArticleCategory];
    [mutableDict setValue:self.articleMall forKey:kfoundStDataArticleMall];
    [mutableDict setValue:self.articlePrice forKey:kfoundStDataArticlePrice];
    [mutableDict setValue:self.articleLink forKey:kfoundStDataArticleLink];
    [mutableDict setValue:self.articlePicWidth forKey:kfoundStDataArticlePicWidth];

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

    self.articleMallClient = [aDecoder decodeObjectForKey:kfoundStDataArticleMallClient];
    self.articlePicHeight = [aDecoder decodeObjectForKey:kfoundStDataArticlePicHeight];
    self.articleFormatDate = [aDecoder decodeObjectForKey:kfoundStDataArticleFormatDate];
    self.articleLinkType = [aDecoder decodeObjectForKey:kfoundStDataArticleLinkType];
    self.articleCommentOpen = [aDecoder decodeObjectForKey:kfoundStDataArticleCommentOpen];
    self.articleTitle = [aDecoder decodeObjectForKey:kfoundStDataArticleTitle];
    self.articleUrl = [aDecoder decodeObjectForKey:kfoundStDataArticleUrl];
    self.articleFilterContent = [aDecoder decodeObjectForKey:kfoundStDataArticleFilterContent];
    self.articleId = [aDecoder decodeObjectForKey:kfoundStDataArticleId];
    self.articleFormatPic = [aDecoder decodeObjectForKey:kfoundStDataArticleFormatPic];
    self.articleFavorite = [aDecoder decodeObjectForKey:kfoundStDataArticleFavorite];
    self.articleDate = [aDecoder decodeObjectForKey:kfoundStDataArticleDate];
    self.articleAnonymous = [aDecoder decodeBoolForKey:kfoundStDataArticleAnonymous];
    self.articlePic = [aDecoder decodeObjectForKey:kfoundStDataArticlePic];
    self.articleReferrals = [aDecoder decodeObjectForKey:kfoundStDataArticleReferrals];
    self.articleComment = [aDecoder decodeObjectForKey:kfoundStDataArticleComment];
    self.articleContentImgList = [aDecoder decodeObjectForKey:kfoundStDataArticleContentImgList];
    self.articleCollection = [aDecoder decodeObjectForKey:kfoundStDataArticleCollection];
    self.articleCategory = [aDecoder decodeObjectForKey:kfoundStDataArticleCategory];
    self.articleMall = [aDecoder decodeObjectForKey:kfoundStDataArticleMall];
    self.articlePrice = [aDecoder decodeObjectForKey:kfoundStDataArticlePrice];
    self.articleLink = [aDecoder decodeObjectForKey:kfoundStDataArticleLink];
    self.articlePicWidth = [aDecoder decodeObjectForKey:kfoundStDataArticlePicWidth];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_articleMallClient forKey:kfoundStDataArticleMallClient];
    [aCoder encodeObject:_articlePicHeight forKey:kfoundStDataArticlePicHeight];
    [aCoder encodeObject:_articleFormatDate forKey:kfoundStDataArticleFormatDate];
    [aCoder encodeObject:_articleLinkType forKey:kfoundStDataArticleLinkType];
    [aCoder encodeObject:_articleCommentOpen forKey:kfoundStDataArticleCommentOpen];
    [aCoder encodeObject:_articleTitle forKey:kfoundStDataArticleTitle];
    [aCoder encodeObject:_articleUrl forKey:kfoundStDataArticleUrl];
    [aCoder encodeObject:_articleFilterContent forKey:kfoundStDataArticleFilterContent];
    [aCoder encodeObject:_articleId forKey:kfoundStDataArticleId];
    [aCoder encodeObject:_articleFormatPic forKey:kfoundStDataArticleFormatPic];
    [aCoder encodeObject:_articleFavorite forKey:kfoundStDataArticleFavorite];
    [aCoder encodeObject:_articleDate forKey:kfoundStDataArticleDate];
    [aCoder encodeBool:_articleAnonymous forKey:kfoundStDataArticleAnonymous];
    [aCoder encodeObject:_articlePic forKey:kfoundStDataArticlePic];
    [aCoder encodeObject:_articleReferrals forKey:kfoundStDataArticleReferrals];
    [aCoder encodeObject:_articleComment forKey:kfoundStDataArticleComment];
    [aCoder encodeObject:_articleContentImgList forKey:kfoundStDataArticleContentImgList];
    [aCoder encodeObject:_articleCollection forKey:kfoundStDataArticleCollection];
    [aCoder encodeObject:_articleCategory forKey:kfoundStDataArticleCategory];
    [aCoder encodeObject:_articleMall forKey:kfoundStDataArticleMall];
    [aCoder encodeObject:_articlePrice forKey:kfoundStDataArticlePrice];
    [aCoder encodeObject:_articleLink forKey:kfoundStDataArticleLink];
    [aCoder encodeObject:_articlePicWidth forKey:kfoundStDataArticlePicWidth];
}

- (id)copyWithZone:(NSZone *)zone
{
    foundStData *copy = [[foundStData alloc] init];
    
    if (copy) {

        copy.articleMallClient = [self.articleMallClient copyWithZone:zone];
        copy.articlePicHeight = [self.articlePicHeight copyWithZone:zone];
        copy.articleFormatDate = [self.articleFormatDate copyWithZone:zone];
        copy.articleLinkType = [self.articleLinkType copyWithZone:zone];
        copy.articleCommentOpen = [self.articleCommentOpen copyWithZone:zone];
        copy.articleTitle = [self.articleTitle copyWithZone:zone];
        copy.articleUrl = [self.articleUrl copyWithZone:zone];
        copy.articleFilterContent = [self.articleFilterContent copyWithZone:zone];
        copy.articleId = [self.articleId copyWithZone:zone];
        copy.articleFormatPic = [self.articleFormatPic copyWithZone:zone];
        copy.articleFavorite = [self.articleFavorite copyWithZone:zone];
        copy.articleDate = [self.articleDate copyWithZone:zone];
        copy.articleAnonymous = self.articleAnonymous;
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
    [_articleMallClient release];
    [_articlePicHeight release];
    [_articleFormatDate release];
    [_articleLinkType release];
    [_articleCommentOpen release];
    [_articleTitle release];
    [_articleUrl release];
    [_articleFilterContent release];
    [_articleId release];
    [_articleFormatPic release];
    [_articleFavorite release];
    [_articleDate release];
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
