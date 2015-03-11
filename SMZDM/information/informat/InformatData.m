//
//  InformatData.m
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "InformatData.h"
#import "InformatArticleCategory.h"


NSString *const kInformatDataArticleFormatDate = @"article_format_date";
NSString *const kInformatDataArticleFilterContent = @"article_filter_content";
NSString *const kInformatDataArticleRzlx = @"article_rzlx";
NSString *const kInformatDataArticleId = @"article_id";
NSString *const kInformatDataArticleFormatPic = @"article_format_pic";
NSString *const kInformatDataArticleCategory = @"article_category";
NSString *const kInformatDataArticleTitle = @"article_title";
NSString *const kInformatDataArticleContentImgList = @"article_content_img_list";
NSString *const kInformatDataArticleUrl = @"article_url";
NSString *const kInformatDataArticleFavorite = @"article_favorite";
NSString *const kInformatDataArticleCollection = @"article_collection";
NSString *const kInformatDataArticleDate = @"article_date";
NSString *const kInformatDataArticleComment = @"article_comment";
NSString *const kInformatDataArticleCommentOpen = @"article_comment_open";
NSString *const kInformatDataArticlePic = @"article_pic";
NSString *const kInformatDataArticleReferrals = @"article_referrals";


@interface InformatData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation InformatData

@synthesize articleFormatDate = _articleFormatDate;
@synthesize articleFilterContent = _articleFilterContent;
@synthesize articleRzlx = _articleRzlx;
@synthesize articleId = _articleId;
@synthesize articleFormatPic = _articleFormatPic;
@synthesize articleCategory = _articleCategory;
@synthesize articleTitle = _articleTitle;
@synthesize articleContentImgList = _articleContentImgList;
@synthesize articleUrl = _articleUrl;
@synthesize articleFavorite = _articleFavorite;
@synthesize articleCollection = _articleCollection;
@synthesize articleDate = _articleDate;
@synthesize articleComment = _articleComment;
@synthesize articleCommentOpen = _articleCommentOpen;
@synthesize articlePic = _articlePic;
@synthesize articleReferrals = _articleReferrals;


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
            self.articleFormatDate = [self objectOrNilForKey:kInformatDataArticleFormatDate fromDictionary:dict];
            self.articleFilterContent = [self objectOrNilForKey:kInformatDataArticleFilterContent fromDictionary:dict];
            self.articleRzlx = [self objectOrNilForKey:kInformatDataArticleRzlx fromDictionary:dict];
            self.articleId = [self objectOrNilForKey:kInformatDataArticleId fromDictionary:dict];
            self.articleFormatPic = [self objectOrNilForKey:kInformatDataArticleFormatPic fromDictionary:dict];
            self.articleCategory = [InformatArticleCategory modelObjectWithDictionary:[dict objectForKey:kInformatDataArticleCategory]];
            self.articleTitle = [self objectOrNilForKey:kInformatDataArticleTitle fromDictionary:dict];
            self.articleContentImgList = [self objectOrNilForKey:kInformatDataArticleContentImgList fromDictionary:dict];
            self.articleUrl = [self objectOrNilForKey:kInformatDataArticleUrl fromDictionary:dict];
            self.articleFavorite = [self objectOrNilForKey:kInformatDataArticleFavorite fromDictionary:dict];
            self.articleCollection = [self objectOrNilForKey:kInformatDataArticleCollection fromDictionary:dict];
            self.articleDate = [self objectOrNilForKey:kInformatDataArticleDate fromDictionary:dict];
            self.articleComment = [self objectOrNilForKey:kInformatDataArticleComment fromDictionary:dict];
            self.articleCommentOpen = [self objectOrNilForKey:kInformatDataArticleCommentOpen fromDictionary:dict];
            self.articlePic = [self objectOrNilForKey:kInformatDataArticlePic fromDictionary:dict];
            self.articleReferrals = [self objectOrNilForKey:kInformatDataArticleReferrals fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.articleFormatDate forKey:kInformatDataArticleFormatDate];
    [mutableDict setValue:self.articleFilterContent forKey:kInformatDataArticleFilterContent];
    [mutableDict setValue:self.articleRzlx forKey:kInformatDataArticleRzlx];
    [mutableDict setValue:self.articleId forKey:kInformatDataArticleId];
    [mutableDict setValue:self.articleFormatPic forKey:kInformatDataArticleFormatPic];
    [mutableDict setValue:[self.articleCategory dictionaryRepresentation] forKey:kInformatDataArticleCategory];
    [mutableDict setValue:self.articleTitle forKey:kInformatDataArticleTitle];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForArticleContentImgList] forKey:kInformatDataArticleContentImgList];
    [mutableDict setValue:self.articleUrl forKey:kInformatDataArticleUrl];
    [mutableDict setValue:self.articleFavorite forKey:kInformatDataArticleFavorite];
    [mutableDict setValue:self.articleCollection forKey:kInformatDataArticleCollection];
    [mutableDict setValue:self.articleDate forKey:kInformatDataArticleDate];
    [mutableDict setValue:self.articleComment forKey:kInformatDataArticleComment];
    [mutableDict setValue:self.articleCommentOpen forKey:kInformatDataArticleCommentOpen];
    [mutableDict setValue:self.articlePic forKey:kInformatDataArticlePic];
    [mutableDict setValue:self.articleReferrals forKey:kInformatDataArticleReferrals];

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

    self.articleFormatDate = [aDecoder decodeObjectForKey:kInformatDataArticleFormatDate];
    self.articleFilterContent = [aDecoder decodeObjectForKey:kInformatDataArticleFilterContent];
    self.articleRzlx = [aDecoder decodeObjectForKey:kInformatDataArticleRzlx];
    self.articleId = [aDecoder decodeObjectForKey:kInformatDataArticleId];
    self.articleFormatPic = [aDecoder decodeObjectForKey:kInformatDataArticleFormatPic];
    self.articleCategory = [aDecoder decodeObjectForKey:kInformatDataArticleCategory];
    self.articleTitle = [aDecoder decodeObjectForKey:kInformatDataArticleTitle];
    self.articleContentImgList = [aDecoder decodeObjectForKey:kInformatDataArticleContentImgList];
    self.articleUrl = [aDecoder decodeObjectForKey:kInformatDataArticleUrl];
    self.articleFavorite = [aDecoder decodeObjectForKey:kInformatDataArticleFavorite];
    self.articleCollection = [aDecoder decodeObjectForKey:kInformatDataArticleCollection];
    self.articleDate = [aDecoder decodeObjectForKey:kInformatDataArticleDate];
    self.articleComment = [aDecoder decodeObjectForKey:kInformatDataArticleComment];
    self.articleCommentOpen = [aDecoder decodeObjectForKey:kInformatDataArticleCommentOpen];
    self.articlePic = [aDecoder decodeObjectForKey:kInformatDataArticlePic];
    self.articleReferrals = [aDecoder decodeObjectForKey:kInformatDataArticleReferrals];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_articleFormatDate forKey:kInformatDataArticleFormatDate];
    [aCoder encodeObject:_articleFilterContent forKey:kInformatDataArticleFilterContent];
    [aCoder encodeObject:_articleRzlx forKey:kInformatDataArticleRzlx];
    [aCoder encodeObject:_articleId forKey:kInformatDataArticleId];
    [aCoder encodeObject:_articleFormatPic forKey:kInformatDataArticleFormatPic];
    [aCoder encodeObject:_articleCategory forKey:kInformatDataArticleCategory];
    [aCoder encodeObject:_articleTitle forKey:kInformatDataArticleTitle];
    [aCoder encodeObject:_articleContentImgList forKey:kInformatDataArticleContentImgList];
    [aCoder encodeObject:_articleUrl forKey:kInformatDataArticleUrl];
    [aCoder encodeObject:_articleFavorite forKey:kInformatDataArticleFavorite];
    [aCoder encodeObject:_articleCollection forKey:kInformatDataArticleCollection];
    [aCoder encodeObject:_articleDate forKey:kInformatDataArticleDate];
    [aCoder encodeObject:_articleComment forKey:kInformatDataArticleComment];
    [aCoder encodeObject:_articleCommentOpen forKey:kInformatDataArticleCommentOpen];
    [aCoder encodeObject:_articlePic forKey:kInformatDataArticlePic];
    [aCoder encodeObject:_articleReferrals forKey:kInformatDataArticleReferrals];
}

- (id)copyWithZone:(NSZone *)zone
{
    InformatData *copy = [[InformatData alloc] init];
    
    if (copy) {

        copy.articleFormatDate = [self.articleFormatDate copyWithZone:zone];
        copy.articleFilterContent = [self.articleFilterContent copyWithZone:zone];
        copy.articleRzlx = [self.articleRzlx copyWithZone:zone];
        copy.articleId = [self.articleId copyWithZone:zone];
        copy.articleFormatPic = [self.articleFormatPic copyWithZone:zone];
        copy.articleCategory = [self.articleCategory copyWithZone:zone];
        copy.articleTitle = [self.articleTitle copyWithZone:zone];
        copy.articleContentImgList = [self.articleContentImgList copyWithZone:zone];
        copy.articleUrl = [self.articleUrl copyWithZone:zone];
        copy.articleFavorite = [self.articleFavorite copyWithZone:zone];
        copy.articleCollection = [self.articleCollection copyWithZone:zone];
        copy.articleDate = [self.articleDate copyWithZone:zone];
        copy.articleComment = [self.articleComment copyWithZone:zone];
        copy.articleCommentOpen = [self.articleCommentOpen copyWithZone:zone];
        copy.articlePic = [self.articlePic copyWithZone:zone];
        copy.articleReferrals = [self.articleReferrals copyWithZone:zone];
    }
    
    return copy;
}


- (void)dealloc
{
    [_articleFormatDate release];
    [_articleFilterContent release];
    [_articleRzlx release];
    [_articleId release];
    [_articleFormatPic release];
    [_articleCategory release];
    [_articleTitle release];
    [_articleContentImgList release];
    [_articleUrl release];
    [_articleFavorite release];
    [_articleCollection release];
    [_articleDate release];
    [_articleComment release];
    [_articleCommentOpen release];
    [_articlePic release];
    [_articleReferrals release];
    [super dealloc];
}

@end
