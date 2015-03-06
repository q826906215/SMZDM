//
//  ExperienceBaseClass.m
//
//  Created by   on 15/3/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ExperienceBaseClass.h"
#import "ExperienceData.h"


NSString *const kExperienceBaseClassErrorMsg = @"error_msg";
NSString *const kExperienceBaseClassData = @"data";
NSString *const kExperienceBaseClassS = @"s";
NSString *const kExperienceBaseClassErrorCode = @"error_code";


@interface ExperienceBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ExperienceBaseClass

@synthesize errorMsg = _errorMsg;
@synthesize data = _data;
@synthesize s = _s;
@synthesize errorCode = _errorCode;


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
            self.errorMsg = [self objectOrNilForKey:kExperienceBaseClassErrorMsg fromDictionary:dict];
            self.data = [ExperienceData modelObjectWithDictionary:[dict objectForKey:kExperienceBaseClassData]];
            self.s = [self objectOrNilForKey:kExperienceBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kExperienceBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kExperienceBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kExperienceBaseClassData];
    [mutableDict setValue:self.s forKey:kExperienceBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kExperienceBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kExperienceBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kExperienceBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kExperienceBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kExperienceBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kExperienceBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kExperienceBaseClassData];
    [aCoder encodeObject:_s forKey:kExperienceBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kExperienceBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    ExperienceBaseClass *copy = [[ExperienceBaseClass alloc] init];
    
    if (copy) {

        copy.errorMsg = [self.errorMsg copyWithZone:zone];
        copy.data = [self.data copyWithZone:zone];
        copy.s = [self.s copyWithZone:zone];
        copy.errorCode = [self.errorCode copyWithZone:zone];
    }
    
    return copy;
}


- (void)dealloc
{
    [_errorMsg release];
    [_data release];
    [_s release];
    [_errorCode release];
    [super dealloc];
}

@end
