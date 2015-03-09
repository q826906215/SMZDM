//
//  foundArticleMallClient.m
//
//  Created by   on 15/3/9
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "foundArticleMallClient.h"


NSString *const kfoundArticleMallClientMallNo = @"mall_no";
NSString *const kfoundArticleMallClientProductNo = @"product_no";


@interface foundArticleMallClient ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation foundArticleMallClient

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
            self.mallNo = [self objectOrNilForKey:kfoundArticleMallClientMallNo fromDictionary:dict];
            self.productNo = [self objectOrNilForKey:kfoundArticleMallClientProductNo fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.mallNo forKey:kfoundArticleMallClientMallNo];
    [mutableDict setValue:self.productNo forKey:kfoundArticleMallClientProductNo];

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

    self.mallNo = [aDecoder decodeObjectForKey:kfoundArticleMallClientMallNo];
    self.productNo = [aDecoder decodeObjectForKey:kfoundArticleMallClientProductNo];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_mallNo forKey:kfoundArticleMallClientMallNo];
    [aCoder encodeObject:_productNo forKey:kfoundArticleMallClientProductNo];
}

- (id)copyWithZone:(NSZone *)zone
{
    foundArticleMallClient *copy = [[foundArticleMallClient alloc] init];
    
    if (copy) {

        copy.mallNo = [self.mallNo copyWithZone:zone];
        copy.productNo = [self.productNo copyWithZone:zone];
    }
    
    return copy;
}


- (void)dealloc
{
    [_mallNo release];
    [_productNo release];
    [super dealloc];
}

@end
