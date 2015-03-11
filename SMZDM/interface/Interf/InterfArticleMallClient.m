//
//  InterfArticleMallClient.m
//
//  Created by   on 15/3/10
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "InterfArticleMallClient.h"


NSString *const kInterfArticleMallClientMallNo = @"mall_no";
NSString *const kInterfArticleMallClientProductNo = @"product_no";


@interface InterfArticleMallClient ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation InterfArticleMallClient

@synthesize mallNo = _mallNo;
@synthesize productNo = _productNo;


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
            self.mallNo = [self objectOrNilForKey:kInterfArticleMallClientMallNo fromDictionary:dict];
            self.productNo = [self objectOrNilForKey:kInterfArticleMallClientProductNo fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.mallNo forKey:kInterfArticleMallClientMallNo];
    [mutableDict setValue:self.productNo forKey:kInterfArticleMallClientProductNo];

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

    self.mallNo = [aDecoder decodeObjectForKey:kInterfArticleMallClientMallNo];
    self.productNo = [aDecoder decodeObjectForKey:kInterfArticleMallClientProductNo];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_mallNo forKey:kInterfArticleMallClientMallNo];
    [aCoder encodeObject:_productNo forKey:kInterfArticleMallClientProductNo];
}

- (id)copyWithZone:(NSZone *)zone
{
    InterfArticleMallClient *copy = [[InterfArticleMallClient alloc] init];
    
    if (copy) {

        copy.mallNo = [self.mallNo copyWithZone:zone];
        copy.productNo = [self.productNo copyWithZone:zone];
    }
    
    return copy;
}


@end
