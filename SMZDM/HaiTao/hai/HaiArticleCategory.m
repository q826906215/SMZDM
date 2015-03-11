//
//  HaiArticleCategory.m
//
//  Created by   on 15/3/10
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "HaiArticleCategory.h"


NSString *const kHaiArticleCategoryID = @"ID";
NSString *const kHaiArticleCategoryTitle = @"title";


@interface HaiArticleCategory ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HaiArticleCategory

@synthesize iDProperty = _iDProperty;
@synthesize title = _title;


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
            self.iDProperty = [self objectOrNilForKey:kHaiArticleCategoryID fromDictionary:dict];
            self.title = [self objectOrNilForKey:kHaiArticleCategoryTitle fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.iDProperty forKey:kHaiArticleCategoryID];
    [mutableDict setValue:self.title forKey:kHaiArticleCategoryTitle];

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

    self.iDProperty = [aDecoder decodeObjectForKey:kHaiArticleCategoryID];
    self.title = [aDecoder decodeObjectForKey:kHaiArticleCategoryTitle];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_iDProperty forKey:kHaiArticleCategoryID];
    [aCoder encodeObject:_title forKey:kHaiArticleCategoryTitle];
}

- (id)copyWithZone:(NSZone *)zone
{
    HaiArticleCategory *copy = [[HaiArticleCategory alloc] init];
    
    if (copy) {

        copy.iDProperty = [self.iDProperty copyWithZone:zone];
        copy.title = [self.title copyWithZone:zone];
    }
    
    return copy;
}


- (void)dealloc
{
    [_iDProperty release];
    [_title release];
    [super dealloc];
}

@end
