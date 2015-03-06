//
//  ScrollRows.m
//
//  Created by   on 15/3/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ScrollRows.h"


NSString *const kScrollRowsBannerPic = @"banner_pic";
NSString *const kScrollRowsBannerTitle = @"banner_title";
NSString *const kScrollRowsBannerPich = @"banner_pich";
NSString *const kScrollRowsArticleChannelId = @"article_channel_id";
NSString *const kScrollRowsBannerPicw = @"banner_picw";
NSString *const kScrollRowsBannerId = @"banner_id";
NSString *const kScrollRowsArticleId = @"article_id";
NSString *const kScrollRowsBannerOrder = @"banner_order";
NSString *const kScrollRowsBannerUrl = @"banner_url";


@interface ScrollRows ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ScrollRows

@synthesize bannerPic = _bannerPic;
@synthesize bannerTitle = _bannerTitle;
@synthesize bannerPich = _bannerPich;
@synthesize articleChannelId = _articleChannelId;
@synthesize bannerPicw = _bannerPicw;
@synthesize bannerId = _bannerId;
@synthesize articleId = _articleId;
@synthesize bannerOrder = _bannerOrder;
@synthesize bannerUrl = _bannerUrl;


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
            self.bannerPic = [self objectOrNilForKey:kScrollRowsBannerPic fromDictionary:dict];
            self.bannerTitle = [self objectOrNilForKey:kScrollRowsBannerTitle fromDictionary:dict];
            self.bannerPich = [self objectOrNilForKey:kScrollRowsBannerPich fromDictionary:dict];
            self.articleChannelId = [self objectOrNilForKey:kScrollRowsArticleChannelId fromDictionary:dict];
            self.bannerPicw = [self objectOrNilForKey:kScrollRowsBannerPicw fromDictionary:dict];
            self.bannerId = [self objectOrNilForKey:kScrollRowsBannerId fromDictionary:dict];
            self.articleId = [self objectOrNilForKey:kScrollRowsArticleId fromDictionary:dict];
            self.bannerOrder = [self objectOrNilForKey:kScrollRowsBannerOrder fromDictionary:dict];
            self.bannerUrl = [self objectOrNilForKey:kScrollRowsBannerUrl fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.bannerPic forKey:kScrollRowsBannerPic];
    [mutableDict setValue:self.bannerTitle forKey:kScrollRowsBannerTitle];
    [mutableDict setValue:self.bannerPich forKey:kScrollRowsBannerPich];
    [mutableDict setValue:self.articleChannelId forKey:kScrollRowsArticleChannelId];
    [mutableDict setValue:self.bannerPicw forKey:kScrollRowsBannerPicw];
    [mutableDict setValue:self.bannerId forKey:kScrollRowsBannerId];
    [mutableDict setValue:self.articleId forKey:kScrollRowsArticleId];
    [mutableDict setValue:self.bannerOrder forKey:kScrollRowsBannerOrder];
    [mutableDict setValue:self.bannerUrl forKey:kScrollRowsBannerUrl];

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

    self.bannerPic = [aDecoder decodeObjectForKey:kScrollRowsBannerPic];
    self.bannerTitle = [aDecoder decodeObjectForKey:kScrollRowsBannerTitle];
    self.bannerPich = [aDecoder decodeObjectForKey:kScrollRowsBannerPich];
    self.articleChannelId = [aDecoder decodeObjectForKey:kScrollRowsArticleChannelId];
    self.bannerPicw = [aDecoder decodeObjectForKey:kScrollRowsBannerPicw];
    self.bannerId = [aDecoder decodeObjectForKey:kScrollRowsBannerId];
    self.articleId = [aDecoder decodeObjectForKey:kScrollRowsArticleId];
    self.bannerOrder = [aDecoder decodeObjectForKey:kScrollRowsBannerOrder];
    self.bannerUrl = [aDecoder decodeObjectForKey:kScrollRowsBannerUrl];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_bannerPic forKey:kScrollRowsBannerPic];
    [aCoder encodeObject:_bannerTitle forKey:kScrollRowsBannerTitle];
    [aCoder encodeObject:_bannerPich forKey:kScrollRowsBannerPich];
    [aCoder encodeObject:_articleChannelId forKey:kScrollRowsArticleChannelId];
    [aCoder encodeObject:_bannerPicw forKey:kScrollRowsBannerPicw];
    [aCoder encodeObject:_bannerId forKey:kScrollRowsBannerId];
    [aCoder encodeObject:_articleId forKey:kScrollRowsArticleId];
    [aCoder encodeObject:_bannerOrder forKey:kScrollRowsBannerOrder];
    [aCoder encodeObject:_bannerUrl forKey:kScrollRowsBannerUrl];
}

- (id)copyWithZone:(NSZone *)zone
{
    ScrollRows *copy = [[ScrollRows alloc] init];
    
    if (copy) {

        copy.bannerPic = [self.bannerPic copyWithZone:zone];
        copy.bannerTitle = [self.bannerTitle copyWithZone:zone];
        copy.bannerPich = [self.bannerPich copyWithZone:zone];
        copy.articleChannelId = [self.articleChannelId copyWithZone:zone];
        copy.bannerPicw = [self.bannerPicw copyWithZone:zone];
        copy.bannerId = [self.bannerId copyWithZone:zone];
        copy.articleId = [self.articleId copyWithZone:zone];
        copy.bannerOrder = [self.bannerOrder copyWithZone:zone];
        copy.bannerUrl = [self.bannerUrl copyWithZone:zone];
    }
    
    return copy;
}


@end
