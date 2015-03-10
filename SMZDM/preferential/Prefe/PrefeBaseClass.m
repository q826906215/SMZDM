//
//  PrefeBaseClass.m
//
//  Created by   on 15/3/10
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "PrefeBaseClass.h"
#import "PrefeData.h"


NSString *const kPrefeBaseClassErrorMsg = @"error_msg";
NSString *const kPrefeBaseClassData = @"data";
NSString *const kPrefeBaseClassS = @"s";
NSString *const kPrefeBaseClassErrorCode = @"error_code";


@interface PrefeBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation PrefeBaseClass

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
            self.errorMsg = [self objectOrNilForKey:kPrefeBaseClassErrorMsg fromDictionary:dict];
            self.data = [PrefeData modelObjectWithDictionary:[dict objectForKey:kPrefeBaseClassData]];
            self.s = [self objectOrNilForKey:kPrefeBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kPrefeBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kPrefeBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kPrefeBaseClassData];
    [mutableDict setValue:self.s forKey:kPrefeBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kPrefeBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kPrefeBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kPrefeBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kPrefeBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kPrefeBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kPrefeBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kPrefeBaseClassData];
    [aCoder encodeObject:_s forKey:kPrefeBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kPrefeBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    PrefeBaseClass *copy = [[PrefeBaseClass alloc] init];
    
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
