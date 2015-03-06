//
//  SelectBaseClass.m
//
//  Created by   on 15/3/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "SelectBaseClass.h"
#import "SelectData.h"


NSString *const kSelectBaseClassErrorMsg = @"error_msg";
NSString *const kSelectBaseClassData = @"data";
NSString *const kSelectBaseClassS = @"s";
NSString *const kSelectBaseClassErrorCode = @"error_code";


@interface SelectBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation SelectBaseClass

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
            self.errorMsg = [self objectOrNilForKey:kSelectBaseClassErrorMsg fromDictionary:dict];
            self.data = [SelectData modelObjectWithDictionary:[dict objectForKey:kSelectBaseClassData]];
            self.s = [self objectOrNilForKey:kSelectBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kSelectBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kSelectBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kSelectBaseClassData];
    [mutableDict setValue:self.s forKey:kSelectBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kSelectBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kSelectBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kSelectBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kSelectBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kSelectBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kSelectBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kSelectBaseClassData];
    [aCoder encodeObject:_s forKey:kSelectBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kSelectBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    SelectBaseClass *copy = [[SelectBaseClass alloc] init];
    
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
