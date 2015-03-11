//
//  InterfBaseClass.h
//
//  Created by   on 15/3/10
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class InterfData;

@interface InterfBaseClass : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *errorMsg;
@property (nonatomic, strong) InterfData *data;
@property (nonatomic, strong) NSString *s;
@property (nonatomic, strong) NSString *errorCode;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
