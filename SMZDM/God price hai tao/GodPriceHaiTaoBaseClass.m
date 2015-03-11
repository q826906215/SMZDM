//
//  GodPriceHaiTaoBaseClass.m
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "GodPriceHaiTaoBaseClass.h"
#import "GodPriceHaiTaoData.h"


NSString *const kGodPriceHaiTaoBaseClassErrorMsg = @"error_msg";
NSString *const kGodPriceHaiTaoBaseClassData = @"data";
NSString *const kGodPriceHaiTaoBaseClassS = @"s";
NSString *const kGodPriceHaiTaoBaseClassErrorCode = @"error_code";


@interface GodPriceHaiTaoBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GodPriceHaiTaoBaseClass

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
            self.errorMsg = [self objectOrNilForKey:kGodPriceHaiTaoBaseClassErrorMsg fromDictionary:dict];
            self.data = [GodPriceHaiTaoData modelObjectWithDictionary:[dict objectForKey:kGodPriceHaiTaoBaseClassData]];
            self.s = [self objectOrNilForKey:kGodPriceHaiTaoBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kGodPriceHaiTaoBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kGodPriceHaiTaoBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kGodPriceHaiTaoBaseClassData];
    [mutableDict setValue:self.s forKey:kGodPriceHaiTaoBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kGodPriceHaiTaoBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kGodPriceHaiTaoBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kGodPriceHaiTaoBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kGodPriceHaiTaoBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kGodPriceHaiTaoBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kGodPriceHaiTaoBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kGodPriceHaiTaoBaseClassData];
    [aCoder encodeObject:_s forKey:kGodPriceHaiTaoBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kGodPriceHaiTaoBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    GodPriceHaiTaoBaseClass *copy = [[GodPriceHaiTaoBaseClass alloc] init];
    
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
