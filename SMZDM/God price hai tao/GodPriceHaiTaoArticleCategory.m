//
//  GodPriceHaiTaoArticleCategory.m
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "GodPriceHaiTaoArticleCategory.h"


NSString *const kGodPriceHaiTaoArticleCategoryID = @"ID";
NSString *const kGodPriceHaiTaoArticleCategoryTitle = @"title";


@interface GodPriceHaiTaoArticleCategory ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GodPriceHaiTaoArticleCategory

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
            self.iDProperty = [self objectOrNilForKey:kGodPriceHaiTaoArticleCategoryID fromDictionary:dict];
            self.title = [self objectOrNilForKey:kGodPriceHaiTaoArticleCategoryTitle fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.iDProperty forKey:kGodPriceHaiTaoArticleCategoryID];
    [mutableDict setValue:self.title forKey:kGodPriceHaiTaoArticleCategoryTitle];

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

    self.iDProperty = [aDecoder decodeObjectForKey:kGodPriceHaiTaoArticleCategoryID];
    self.title = [aDecoder decodeObjectForKey:kGodPriceHaiTaoArticleCategoryTitle];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_iDProperty forKey:kGodPriceHaiTaoArticleCategoryID];
    [aCoder encodeObject:_title forKey:kGodPriceHaiTaoArticleCategoryTitle];
}

- (id)copyWithZone:(NSZone *)zone
{
    GodPriceHaiTaoArticleCategory *copy = [[GodPriceHaiTaoArticleCategory alloc] init];
    
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
