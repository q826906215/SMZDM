//
//  InformationRows.m
//
//  Created by   on 15/3/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "InformationRows.h"


NSString *const kInformationRowsArticleRzlx = @"article_rzlx";
NSString *const kInformationRowsArticleComment = @"article_comment";
NSString *const kInformationRowsArticleTitle = @"article_title";
NSString *const kInformationRowsArticleFilterContent = @"article_filter_content";
NSString *const kInformationRowsArticleUrl = @"article_url";
NSString *const kInformationRowsArticleId = @"article_id";
NSString *const kInformationRowsArticlePic = @"article_pic";
NSString *const kInformationRowsArticleCollection = @"article_collection";
NSString *const kInformationRowsArticleFormatDate = @"article_format_date";
NSString *const kInformationRowsArticleDate = @"article_date";


@interface InformationRows ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation InformationRows

@synthesize articleRzlx = _articleRzlx;
@synthesize articleComment = _articleComment;
@synthesize articleTitle = _articleTitle;
@synthesize articleFilterContent = _articleFilterContent;
@synthesize articleUrl = _articleUrl;
@synthesize articleId = _articleId;
@synthesize articlePic = _articlePic;
@synthesize articleCollection = _articleCollection;
@synthesize articleFormatDate = _articleFormatDate;
@synthesize articleDate = _articleDate;


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
            self.articleRzlx = [self objectOrNilForKey:kInformationRowsArticleRzlx fromDictionary:dict];
            self.articleComment = [self objectOrNilForKey:kInformationRowsArticleComment fromDictionary:dict];
            self.articleTitle = [self objectOrNilForKey:kInformationRowsArticleTitle fromDictionary:dict];
            self.articleFilterContent = [self objectOrNilForKey:kInformationRowsArticleFilterContent fromDictionary:dict];
            self.articleUrl = [self objectOrNilForKey:kInformationRowsArticleUrl fromDictionary:dict];
            self.articleId = [self objectOrNilForKey:kInformationRowsArticleId fromDictionary:dict];
            self.articlePic = [self objectOrNilForKey:kInformationRowsArticlePic fromDictionary:dict];
            self.articleCollection = [self objectOrNilForKey:kInformationRowsArticleCollection fromDictionary:dict];
            self.articleFormatDate = [self objectOrNilForKey:kInformationRowsArticleFormatDate fromDictionary:dict];
            self.articleDate = [self objectOrNilForKey:kInformationRowsArticleDate fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.articleRzlx forKey:kInformationRowsArticleRzlx];
    [mutableDict setValue:self.articleComment forKey:kInformationRowsArticleComment];
    [mutableDict setValue:self.articleTitle forKey:kInformationRowsArticleTitle];
    [mutableDict setValue:self.articleFilterContent forKey:kInformationRowsArticleFilterContent];
    [mutableDict setValue:self.articleUrl forKey:kInformationRowsArticleUrl];
    [mutableDict setValue:self.articleId forKey:kInformationRowsArticleId];
    [mutableDict setValue:self.articlePic forKey:kInformationRowsArticlePic];
    [mutableDict setValue:self.articleCollection forKey:kInformationRowsArticleCollection];
    [mutableDict setValue:self.articleFormatDate forKey:kInformationRowsArticleFormatDate];
    [mutableDict setValue:self.articleDate forKey:kInformationRowsArticleDate];

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

    self.articleRzlx = [aDecoder decodeObjectForKey:kInformationRowsArticleRzlx];
    self.articleComment = [aDecoder decodeObjectForKey:kInformationRowsArticleComment];
    self.articleTitle = [aDecoder decodeObjectForKey:kInformationRowsArticleTitle];
    self.articleFilterContent = [aDecoder decodeObjectForKey:kInformationRowsArticleFilterContent];
    self.articleUrl = [aDecoder decodeObjectForKey:kInformationRowsArticleUrl];
    self.articleId = [aDecoder decodeObjectForKey:kInformationRowsArticleId];
    self.articlePic = [aDecoder decodeObjectForKey:kInformationRowsArticlePic];
    self.articleCollection = [aDecoder decodeObjectForKey:kInformationRowsArticleCollection];
    self.articleFormatDate = [aDecoder decodeObjectForKey:kInformationRowsArticleFormatDate];
    self.articleDate = [aDecoder decodeObjectForKey:kInformationRowsArticleDate];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_articleRzlx forKey:kInformationRowsArticleRzlx];
    [aCoder encodeObject:_articleComment forKey:kInformationRowsArticleComment];
    [aCoder encodeObject:_articleTitle forKey:kInformationRowsArticleTitle];
    [aCoder encodeObject:_articleFilterContent forKey:kInformationRowsArticleFilterContent];
    [aCoder encodeObject:_articleUrl forKey:kInformationRowsArticleUrl];
    [aCoder encodeObject:_articleId forKey:kInformationRowsArticleId];
    [aCoder encodeObject:_articlePic forKey:kInformationRowsArticlePic];
    [aCoder encodeObject:_articleCollection forKey:kInformationRowsArticleCollection];
    [aCoder encodeObject:_articleFormatDate forKey:kInformationRowsArticleFormatDate];
    [aCoder encodeObject:_articleDate forKey:kInformationRowsArticleDate];
}

- (id)copyWithZone:(NSZone *)zone
{
    InformationRows *copy = [[InformationRows alloc] init];
    
    if (copy) {

        copy.articleRzlx = [self.articleRzlx copyWithZone:zone];
        copy.articleComment = [self.articleComment copyWithZone:zone];
        copy.articleTitle = [self.articleTitle copyWithZone:zone];
        copy.articleFilterContent = [self.articleFilterContent copyWithZone:zone];
        copy.articleUrl = [self.articleUrl copyWithZone:zone];
        copy.articleId = [self.articleId copyWithZone:zone];
        copy.articlePic = [self.articlePic copyWithZone:zone];
        copy.articleCollection = [self.articleCollection copyWithZone:zone];
        copy.articleFormatDate = [self.articleFormatDate copyWithZone:zone];
        copy.articleDate = [self.articleDate copyWithZone:zone];
    }
    
    return copy;
}


- (void)dealloc
{
    [_articleRzlx release];
    [_articleComment release];
    [_articleTitle release];
    [_articleFilterContent release];
    [_articleUrl release];
    [_articleId release];
    [_articlePic release];
    [_articleCollection release];
    [_articleFormatDate release];
    [_articleDate release];
    [super dealloc];
}

@end
