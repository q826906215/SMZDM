//
//  ScrollBaseClass.h
//
//  Created by   on 15/3/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ScrollData;

@interface ScrollBaseClass : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *errorMsg;
@property (nonatomic, strong) ScrollData *data;
@property (nonatomic, strong) NSString *s;
@property (nonatomic, strong) NSString *errorCode;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
