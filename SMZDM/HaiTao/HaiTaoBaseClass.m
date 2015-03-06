//
//  HaiTaoBaseClass.m
//
//  Created by   on 15/3/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "HaiTaoBaseClass.h"
#import "HaiTaoData.h"


NSString *const kHaiTaoBaseClassErrorMsg = @"error_msg";
NSString *const kHaiTaoBaseClassData = @"data";
NSString *const kHaiTaoBaseClassS = @"s";
NSString *const kHaiTaoBaseClassErrorCode = @"error_code";


@interface HaiTaoBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HaiTaoBaseClass

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
            self.errorMsg = [self objectOrNilForKey:kHaiTaoBaseClassErrorMsg fromDictionary:dict];
            self.data = [HaiTaoData modelObjectWithDictionary:[dict objectForKey:kHaiTaoBaseClassData]];
            self.s = [self objectOrNilForKey:kHaiTaoBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kHaiTaoBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kHaiTaoBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kHaiTaoBaseClassData];
    [mutableDict setValue:self.s forKey:kHaiTaoBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kHaiTaoBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kHaiTaoBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kHaiTaoBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kHaiTaoBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kHaiTaoBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kHaiTaoBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kHaiTaoBaseClassData];
    [aCoder encodeObject:_s forKey:kHaiTaoBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kHaiTaoBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    HaiTaoBaseClass *copy = [[HaiTaoBaseClass alloc] init];
    
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
