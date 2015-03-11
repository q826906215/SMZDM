//
//  foundStArticleMallClient.m
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "foundStArticleMallClient.h"


NSString *const kfoundStArticleMallClientMallNo = @"mall_no";
NSString *const kfoundStArticleMallClientProductNo = @"product_no";


@interface foundStArticleMallClient ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation foundStArticleMallClient

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
            self.mallNo = [self objectOrNilForKey:kfoundStArticleMallClientMallNo fromDictionary:dict];
            self.productNo = [self objectOrNilForKey:kfoundStArticleMallClientProductNo fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.mallNo forKey:kfoundStArticleMallClientMallNo];
    [mutableDict setValue:self.productNo forKey:kfoundStArticleMallClientProductNo];

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

    self.mallNo = [aDecoder decodeObjectForKey:kfoundStArticleMallClientMallNo];
    self.productNo = [aDecoder decodeObjectForKey:kfoundStArticleMallClientProductNo];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_mallNo forKey:kfoundStArticleMallClientMallNo];
    [aCoder encodeObject:_productNo forKey:kfoundStArticleMallClientProductNo];
}

- (id)copyWithZone:(NSZone *)zone
{
    foundStArticleMallClient *copy = [[foundStArticleMallClient alloc] init];
    
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
