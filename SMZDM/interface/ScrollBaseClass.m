//
//  ScrollBaseClass.m
//
//  Created by   on 15/3/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ScrollBaseClass.h"
#import "ScrollData.h"


NSString *const kScrollBaseClassErrorMsg = @"error_msg";
NSString *const kScrollBaseClassData = @"data";
NSString *const kScrollBaseClassS = @"s";
NSString *const kScrollBaseClassErrorCode = @"error_code";


@interface ScrollBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ScrollBaseClass

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
            self.errorMsg = [self objectOrNilForKey:kScrollBaseClassErrorMsg fromDictionary:dict];
            self.data = [ScrollData modelObjectWithDictionary:[dict objectForKey:kScrollBaseClassData]];
            self.s = [self objectOrNilForKey:kScrollBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kScrollBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kScrollBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kScrollBaseClassData];
    [mutableDict setValue:self.s forKey:kScrollBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kScrollBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kScrollBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kScrollBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kScrollBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kScrollBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kScrollBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kScrollBaseClassData];
    [aCoder encodeObject:_s forKey:kScrollBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kScrollBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    ScrollBaseClass *copy = [[ScrollBaseClass alloc] init];
    
    if (copy) {

        copy.errorMsg = [self.errorMsg copyWithZone:zone];
        copy.data = [self.data copyWithZone:zone];
        copy.s = [self.s copyWithZone:zone];
        copy.errorCode = [self.errorCode copyWithZone:zone];
    }
    
    return copy;
}


@end
