//
//  GodPriceHaiTaoArticleLinkList.m
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "GodPriceHaiTaoArticleLinkList.h"


NSString *const kGodPriceHaiTaoArticleLinkListName = @"name";
NSString *const kGodPriceHaiTaoArticleLinkListLink = @"link";
NSString *const kGodPriceHaiTaoArticleLinkListBuyBtnDomain = @"buy_btn_domain";


@interface GodPriceHaiTaoArticleLinkList ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GodPriceHaiTaoArticleLinkList

@synthesize name = _name;
@synthesize link = _link;
@synthesize buyBtnDomain = _buyBtnDomain;


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
            self.name = [self objectOrNilForKey:kGodPriceHaiTaoArticleLinkListName fromDictionary:dict];
            self.link = [self objectOrNilForKey:kGodPriceHaiTaoArticleLinkListLink fromDictionary:dict];
            self.buyBtnDomain = [self objectOrNilForKey:kGodPriceHaiTaoArticleLinkListBuyBtnDomain fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.name forKey:kGodPriceHaiTaoArticleLinkListName];
    [mutableDict setValue:self.link forKey:kGodPriceHaiTaoArticleLinkListLink];
    [mutableDict setValue:self.buyBtnDomain forKey:kGodPriceHaiTaoArticleLinkListBuyBtnDomain];

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

    self.name = [aDecoder decodeObjectForKey:kGodPriceHaiTaoArticleLinkListName];
    self.link = [aDecoder decodeObjectForKey:kGodPriceHaiTaoArticleLinkListLink];
    self.buyBtnDomain = [aDecoder decodeObjectForKey:kGodPriceHaiTaoArticleLinkListBuyBtnDomain];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_name forKey:kGodPriceHaiTaoArticleLinkListName];
    [aCoder encodeObject:_link forKey:kGodPriceHaiTaoArticleLinkListLink];
    [aCoder encodeObject:_buyBtnDomain forKey:kGodPriceHaiTaoArticleLinkListBuyBtnDomain];
}

- (id)copyWithZone:(NSZone *)zone
{
    GodPriceHaiTaoArticleLinkList *copy = [[GodPriceHaiTaoArticleLinkList alloc] init];
    
    if (copy) {

        copy.name = [self.name copyWithZone:zone];
        copy.link = [self.link copyWithZone:zone];
        copy.buyBtnDomain = [self.buyBtnDomain copyWithZone:zone];
    }
    
    return copy;
}


- (void)dealloc
{
    [_name release];
    [_link release];
    [_buyBtnDomain release];
    [super dealloc];
}

@end
