//
//  foundStBaseClass.h
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class foundStData;

@interface foundStBaseClass : NSObject <NSCoding, NSCopying>

@property (nonatomic, retain) NSString *errorMsg;
@property (nonatomic, retain) foundStData *data;
@property (nonatomic, retain) NSString *s;
@property (nonatomic, retain) NSString *errorCode;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
