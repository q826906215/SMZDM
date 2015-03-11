//
//  InterfArticleCategory.m
//
//  Created by   on 15/3/10
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "InterfArticleCategory.h"


NSString *const kInterfArticleCategoryID = @"ID";
NSString *const kInterfArticleCategoryTitle = @"title";


@interface InterfArticleCategory ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation InterfArticleCategory

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
            self.iDProperty = [self objectOrNilForKey:kInterfArticleCategoryID fromDictionary:dict];
            self.title = [self objectOrNilForKey:kInterfArticleCategoryTitle fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.iDProperty forKey:kInterfArticleCategoryID];
    [mutableDict setValue:self.title forKey:kInterfArticleCategoryTitle];

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

    self.iDProperty = [aDecoder decodeObjectForKey:kInterfArticleCategoryID];
    self.title = [aDecoder decodeObjectForKey:kInterfArticleCategoryTitle];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_iDProperty forKey:kInterfArticleCategoryID];
    [aCoder encodeObject:_title forKey:kInterfArticleCategoryTitle];
}

- (id)copyWithZone:(NSZone *)zone
{
    InterfArticleCategory *copy = [[InterfArticleCategory alloc] init];
    
    if (copy) {

        copy.iDProperty = [self.iDProperty copyWithZone:zone];
        copy.title = [self.title copyWithZone:zone];
    }
    
    return copy;
}


@end
