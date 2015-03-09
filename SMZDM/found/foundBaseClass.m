//
//  foundBaseClass.m
//
//  Created by   on 15/3/9
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "foundBaseClass.h"
#import "foundData.h"


NSString *const kfoundBaseClassErrorMsg = @"error_msg";
NSString *const kfoundBaseClassData = @"data";
NSString *const kfoundBaseClassS = @"s";
NSString *const kfoundBaseClassErrorCode = @"error_code";


@interface foundBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation foundBaseClass

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
            self.errorMsg = [self objectOrNilForKey:kfoundBaseClassErrorMsg fromDictionary:dict];
            self.data = [foundData modelObjectWithDictionary:[dict objectForKey:kfoundBaseClassData]];
            self.s = [self objectOrNilForKey:kfoundBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kfoundBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kfoundBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kfoundBaseClassData];
    [mutableDict setValue:self.s forKey:kfoundBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kfoundBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kfoundBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kfoundBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kfoundBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kfoundBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kfoundBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kfoundBaseClassData];
    [aCoder encodeObject:_s forKey:kfoundBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kfoundBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    foundBaseClass *copy = [[foundBaseClass alloc] init];
    
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
