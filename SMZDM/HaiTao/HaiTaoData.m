//
//  HaiTaoData.m
//
//  Created by   on 15/3/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "HaiTaoData.h"
#import "HaiTaoRows.h"


NSString *const kHaiTaoDataRows = @"rows";


@interface HaiTaoData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HaiTaoData

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
    NSObject *receivedHaiTaoRows = [dict objectForKey:kHaiTaoDataRows];
    NSMutableArray *parsedHaiTaoRows = [NSMutableArray array];
    if ([receivedHaiTaoRows isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedHaiTaoRows) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedHaiTaoRows addObject:[HaiTaoRows modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedHaiTaoRows isKindOfClass:[NSDictionary class]]) {
       [parsedHaiTaoRows addObject:[HaiTaoRows modelObjectWithDictionary:(NSDictionary *)receivedHaiTaoRows]];
    }

    self.rows = [NSArray arrayWithArray:parsedHaiTaoRows];

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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForRows] forKey:kHaiTaoDataRows];

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

    self.rows = [aDecoder decodeObjectForKey:kHaiTaoDataRows];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_rows forKey:kHaiTaoDataRows];
}

- (id)copyWithZone:(NSZone *)zone
{
    HaiTaoData *copy = [[HaiTaoData alloc] init];
    
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
