//
//  HaiBaseClass.m
//
//  Created by   on 15/3/10
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "HaiBaseClass.h"
#import "HaiData.h"


NSString *const kHaiBaseClassErrorMsg = @"error_msg";
NSString *const kHaiBaseClassData = @"data";
NSString *const kHaiBaseClassS = @"s";
NSString *const kHaiBaseClassErrorCode = @"error_code";


@interface HaiBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HaiBaseClass

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
            self.errorMsg = [self objectOrNilForKey:kHaiBaseClassErrorMsg fromDictionary:dict];
            self.data = [HaiData modelObjectWithDictionary:[dict objectForKey:kHaiBaseClassData]];
            self.s = [self objectOrNilForKey:kHaiBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kHaiBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kHaiBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kHaiBaseClassData];
    [mutableDict setValue:self.s forKey:kHaiBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kHaiBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kHaiBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kHaiBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kHaiBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kHaiBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kHaiBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kHaiBaseClassData];
    [aCoder encodeObject:_s forKey:kHaiBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kHaiBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    HaiBaseClass *copy = [[HaiBaseClass alloc] init];
    
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
