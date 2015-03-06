//
//  preferentialBaseClass.m
//
//  Created by   on 15/3/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "preferentialBaseClass.h"
#import "preferentialData.h"


NSString *const kpreferentialBaseClassErrorMsg = @"error_msg";
NSString *const kpreferentialBaseClassData = @"data";
NSString *const kpreferentialBaseClassS = @"s";
NSString *const kpreferentialBaseClassErrorCode = @"error_code";


@interface preferentialBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation preferentialBaseClass

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
            self.errorMsg = [self objectOrNilForKey:kpreferentialBaseClassErrorMsg fromDictionary:dict];
            self.data = [preferentialData modelObjectWithDictionary:[dict objectForKey:kpreferentialBaseClassData]];
            self.s = [self objectOrNilForKey:kpreferentialBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kpreferentialBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kpreferentialBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kpreferentialBaseClassData];
    [mutableDict setValue:self.s forKey:kpreferentialBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kpreferentialBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kpreferentialBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kpreferentialBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kpreferentialBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kpreferentialBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kpreferentialBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kpreferentialBaseClassData];
    [aCoder encodeObject:_s forKey:kpreferentialBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kpreferentialBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    preferentialBaseClass *copy = [[preferentialBaseClass alloc] init];
    
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
