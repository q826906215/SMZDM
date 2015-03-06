//
//  ScrollData.m
//
//  Created by   on 15/3/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ScrollData.h"
#import "ScrollRows.h"


NSString *const kScrollDataRows = @"rows";


@interface ScrollData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ScrollData

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
    NSObject *receivedScrollRows = [dict objectForKey:kScrollDataRows];
    NSMutableArray *parsedScrollRows = [NSMutableArray array];
    if ([receivedScrollRows isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedScrollRows) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedScrollRows addObject:[ScrollRows modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedScrollRows isKindOfClass:[NSDictionary class]]) {
       [parsedScrollRows addObject:[ScrollRows modelObjectWithDictionary:(NSDictionary *)receivedScrollRows]];
    }

    self.rows = [NSArray arrayWithArray:parsedScrollRows];

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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForRows] forKey:kScrollDataRows];

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

    self.rows = [aDecoder decodeObjectForKey:kScrollDataRows];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_rows forKey:kScrollDataRows];
}

- (id)copyWithZone:(NSZone *)zone
{
    ScrollData *copy = [[ScrollData alloc] init];
    
    if (copy) {

        copy.rows = [self.rows copyWithZone:zone];
    }
    
    return copy;
}


@end
