//
//  preferentialData.m
//
//  Created by   on 15/3/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "preferentialData.h"
#import "preferentialRows.h"


NSString *const kpreferentialDataRows = @"rows";


@interface preferentialData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation preferentialData

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
    NSObject *receivedpreferentialRows = [dict objectForKey:kpreferentialDataRows];
    NSMutableArray *parsedpreferentialRows = [NSMutableArray array];
    if ([receivedpreferentialRows isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedpreferentialRows) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedpreferentialRows addObject:[preferentialRows modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedpreferentialRows isKindOfClass:[NSDictionary class]]) {
       [parsedpreferentialRows addObject:[preferentialRows modelObjectWithDictionary:(NSDictionary *)receivedpreferentialRows]];
    }

    self.rows = [NSArray arrayWithArray:parsedpreferentialRows];

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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForRows] forKey:kpreferentialDataRows];

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

    self.rows = [aDecoder decodeObjectForKey:kpreferentialDataRows];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_rows forKey:kpreferentialDataRows];
}

- (id)copyWithZone:(NSZone *)zone
{
    preferentialData *copy = [[preferentialData alloc] init];
    
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
