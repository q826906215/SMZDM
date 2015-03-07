//
//  BaskInContentData.m
//
//  Created by   on 15/3/7
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "BaskInContentData.h"
#import "BaskInContentRows.h"


NSString *const kBaskInContentDataRows = @"rows";


@interface BaskInContentData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation BaskInContentData

@synthesize rows = _rows;


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
    NSObject *receivedBaskInContentRows = [dict objectForKey:kBaskInContentDataRows];
    NSMutableArray *parsedBaskInContentRows = [NSMutableArray array];
    if ([receivedBaskInContentRows isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedBaskInContentRows) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedBaskInContentRows addObject:[BaskInContentRows modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedBaskInContentRows isKindOfClass:[NSDictionary class]]) {
       [parsedBaskInContentRows addObject:[BaskInContentRows modelObjectWithDictionary:(NSDictionary *)receivedBaskInContentRows]];
    }

    self.rows = [NSArray arrayWithArray:parsedBaskInContentRows];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForRows = [NSMutableArray array];
    for (NSObject *subArrayObject in self.rows) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForRows addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForRows addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForRows] forKey:kBaskInContentDataRows];

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

    self.rows = [aDecoder decodeObjectForKey:kBaskInContentDataRows];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_rows forKey:kBaskInContentDataRows];
}

- (id)copyWithZone:(NSZone *)zone
{
    BaskInContentData *copy = [[BaskInContentData alloc] init];
    
    if (copy) {

        copy.rows = [self.rows copyWithZone:zone];
    }
    
    return copy;
}


- (void)dealloc
{
    [_rows release];
    [super dealloc];
}

@end
