//
//  foundStBaseClass.m
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "foundStBaseClass.h"
#import "foundStData.h"


NSString *const kfoundStBaseClassErrorMsg = @"error_msg";
NSString *const kfoundStBaseClassData = @"data";
NSString *const kfoundStBaseClassS = @"s";
NSString *const kfoundStBaseClassErrorCode = @"error_code";


@interface foundStBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation foundStBaseClass

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
            self.errorMsg = [self objectOrNilForKey:kfoundStBaseClassErrorMsg fromDictionary:dict];
            self.data = [foundStData modelObjectWithDictionary:[dict objectForKey:kfoundStBaseClassData]];
            self.s = [self objectOrNilForKey:kfoundStBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kfoundStBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kfoundStBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kfoundStBaseClassData];
    [mutableDict setValue:self.s forKey:kfoundStBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kfoundStBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kfoundStBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kfoundStBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kfoundStBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kfoundStBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kfoundStBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kfoundStBaseClassData];
    [aCoder encodeObject:_s forKey:kfoundStBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kfoundStBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    foundStBaseClass *copy = [[foundStBaseClass alloc] init];
    
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
