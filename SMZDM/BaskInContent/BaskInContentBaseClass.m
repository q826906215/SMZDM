//
//  BaskInContentBaseClass.m
//
//  Created by   on 15/3/7
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "BaskInContentBaseClass.h"
#import "BaskInContentData.h"


NSString *const kBaskInContentBaseClassErrorMsg = @"error_msg";
NSString *const kBaskInContentBaseClassData = @"data";
NSString *const kBaskInContentBaseClassS = @"s";
NSString *const kBaskInContentBaseClassErrorCode = @"error_code";


@interface BaskInContentBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation BaskInContentBaseClass

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
            self.errorMsg = [self objectOrNilForKey:kBaskInContentBaseClassErrorMsg fromDictionary:dict];
            self.data = [BaskInContentData modelObjectWithDictionary:[dict objectForKey:kBaskInContentBaseClassData]];
            self.s = [self objectOrNilForKey:kBaskInContentBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kBaskInContentBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kBaskInContentBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kBaskInContentBaseClassData];
    [mutableDict setValue:self.s forKey:kBaskInContentBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kBaskInContentBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kBaskInContentBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kBaskInContentBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kBaskInContentBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kBaskInContentBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kBaskInContentBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kBaskInContentBaseClassData];
    [aCoder encodeObject:_s forKey:kBaskInContentBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kBaskInContentBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    BaskInContentBaseClass *copy = [[BaskInContentBaseClass alloc] init];
    
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
