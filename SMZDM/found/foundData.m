//
//  foundData.m
//
//  Created by   on 15/3/9
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "foundData.h"
#import "foundRows.h"


NSString *const kfoundDataRows = @"rows";


@interface foundData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation foundData

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
    NSObject *receivedfoundRows = [dict objectForKey:kfoundDataRows];
    NSMutableArray *parsedfoundRows = [NSMutableArray array];
    if ([receivedfoundRows isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedfoundRows) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedfoundRows addObject:[foundRows modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedfoundRows isKindOfClass:[NSDictionary class]]) {
       [parsedfoundRows addObject:[foundRows modelObjectWithDictionary:(NSDictionary *)receivedfoundRows]];
    }

    self.rows = [NSArray arrayWithArray:parsedfoundRows];

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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForRows] forKey:kfoundDataRows];

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

    self.rows = [aDecoder decodeObjectForKey:kfoundDataRows];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_rows forKey:kfoundDataRows];
}

- (id)copyWithZone:(NSZone *)zone
{
    foundData *copy = [[foundData alloc] init];
    
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
