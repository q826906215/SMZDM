//
//  InformationBaseClass.m
//
//  Created by   on 15/3/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "InformationBaseClass.h"
#import "InformationData.h"


NSString *const kInformationBaseClassErrorMsg = @"error_msg";
NSString *const kInformationBaseClassData = @"data";
NSString *const kInformationBaseClassS = @"s";
NSString *const kInformationBaseClassErrorCode = @"error_code";


@interface InformationBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation InformationBaseClass

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
            self.errorMsg = [self objectOrNilForKey:kInformationBaseClassErrorMsg fromDictionary:dict];
            self.data = [InformationData modelObjectWithDictionary:[dict objectForKey:kInformationBaseClassData]];
            self.s = [self objectOrNilForKey:kInformationBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kInformationBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kInformationBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kInformationBaseClassData];
    [mutableDict setValue:self.s forKey:kInformationBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kInformationBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kInformationBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kInformationBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kInformationBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kInformationBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kInformationBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kInformationBaseClassData];
    [aCoder encodeObject:_s forKey:kInformationBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kInformationBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    InformationBaseClass *copy = [[InformationBaseClass alloc] init];
    
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
