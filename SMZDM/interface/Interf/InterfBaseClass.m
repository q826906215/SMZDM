//
//  InterfBaseClass.m
//
//  Created by   on 15/3/10
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "InterfBaseClass.h"
#import "InterfData.h"


NSString *const kInterfBaseClassErrorMsg = @"error_msg";
NSString *const kInterfBaseClassData = @"data";
NSString *const kInterfBaseClassS = @"s";
NSString *const kInterfBaseClassErrorCode = @"error_code";


@interface InterfBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation InterfBaseClass

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
            self.errorMsg = [self objectOrNilForKey:kInterfBaseClassErrorMsg fromDictionary:dict];
            self.data = [InterfData modelObjectWithDictionary:[dict objectForKey:kInterfBaseClassData]];
            self.s = [self objectOrNilForKey:kInterfBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kInterfBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kInterfBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kInterfBaseClassData];
    [mutableDict setValue:self.s forKey:kInterfBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kInterfBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kInterfBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kInterfBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kInterfBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kInterfBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kInterfBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kInterfBaseClassData];
    [aCoder encodeObject:_s forKey:kInterfBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kInterfBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    InterfBaseClass *copy = [[InterfBaseClass alloc] init];
    
    if (copy) {

        copy.errorMsg = [self.errorMsg copyWithZone:zone];
        copy.data = [self.data copyWithZone:zone];
        copy.s = [self.s copyWithZone:zone];
        copy.errorCode = [self.errorCode copyWithZone:zone];
    }
    
    return copy;
}


@end
