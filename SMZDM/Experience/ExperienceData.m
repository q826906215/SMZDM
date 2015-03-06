//
//  ExperienceData.m
//
//  Created by   on 15/3/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ExperienceData.h"
#import "ExperienceRows.h"


NSString *const kExperienceDataRows = @"rows";


@interface ExperienceData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ExperienceData

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
    NSObject *receivedExperienceRows = [dict objectForKey:kExperienceDataRows];
    NSMutableArray *parsedExperienceRows = [NSMutableArray array];
    if ([receivedExperienceRows isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedExperienceRows) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedExperienceRows addObject:[ExperienceRows modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedExperienceRows isKindOfClass:[NSDictionary class]]) {
       [parsedExperienceRows addObject:[ExperienceRows modelObjectWithDictionary:(NSDictionary *)receivedExperienceRows]];
    }

    self.rows = [NSArray arrayWithArray:parsedExperienceRows];

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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForRows] forKey:kExperienceDataRows];

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

    self.rows = [aDecoder decodeObjectForKey:kExperienceDataRows];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_rows forKey:kExperienceDataRows];
}

- (id)copyWithZone:(NSZone *)zone
{
    ExperienceData *copy = [[ExperienceData alloc] init];
    
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
