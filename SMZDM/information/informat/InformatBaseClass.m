//
//  InformatBaseClass.m
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "InformatBaseClass.h"
#import "InformatData.h"


NSString *const kInformatBaseClassErrorMsg = @"error_msg";
NSString *const kInformatBaseClassData = @"data";
NSString *const kInformatBaseClassS = @"s";
NSString *const kInformatBaseClassErrorCode = @"error_code";


@interface InformatBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation InformatBaseClass

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
            self.errorMsg = [self objectOrNilForKey:kInformatBaseClassErrorMsg fromDictionary:dict];
            self.data = [InformatData modelObjectWithDictionary:[dict objectForKey:kInformatBaseClassData]];
            self.s = [self objectOrNilForKey:kInformatBaseClassS fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kInformatBaseClassErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorMsg forKey:kInformatBaseClassErrorMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kInformatBaseClassData];
    [mutableDict setValue:self.s forKey:kInformatBaseClassS];
    [mutableDict setValue:self.errorCode forKey:kInformatBaseClassErrorCode];

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

    self.errorMsg = [aDecoder decodeObjectForKey:kInformatBaseClassErrorMsg];
    self.data = [aDecoder decodeObjectForKey:kInformatBaseClassData];
    self.s = [aDecoder decodeObjectForKey:kInformatBaseClassS];
    self.errorCode = [aDecoder decodeObjectForKey:kInformatBaseClassErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorMsg forKey:kInformatBaseClassErrorMsg];
    [aCoder encodeObject:_data forKey:kInformatBaseClassData];
    [aCoder encodeObject:_s forKey:kInformatBaseClassS];
    [aCoder encodeObject:_errorCode forKey:kInformatBaseClassErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    InformatBaseClass *copy = [[InformatBaseClass alloc] init];
    
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
