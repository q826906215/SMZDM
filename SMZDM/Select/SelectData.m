//
//  SelectData.m
//
//  Created by   on 15/3/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "SelectData.h"
#import "SelectRows.h"


NSString *const kSelectDataRows = @"rows";


@interface SelectData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation SelectData

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
    NSObject *receivedSelectRows = [dict objectForKey:kSelectDataRows];
    NSMutableArray *parsedSelectRows = [NSMutableArray array];
    if ([receivedSelectRows isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedSelectRows) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedSelectRows addObject:[SelectRows modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedSelectRows isKindOfClass:[NSDictionary class]]) {
       [parsedSelectRows addObject:[SelectRows modelObjectWithDictionary:(NSDictionary *)receivedSelectRows]];
    }

    self.rows = [NSArray arrayWithArray:parsedSelectRows];

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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForRows] forKey:kSelectDataRows];

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

    self.rows = [aDecoder decodeObjectForKey:kSelectDataRows];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_rows forKey:kSelectDataRows];
}

- (id)copyWithZone:(NSZone *)zone
{
    SelectData *copy = [[SelectData alloc] init];
    
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
