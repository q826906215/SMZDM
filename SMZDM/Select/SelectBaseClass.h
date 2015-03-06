//
//  SelectBaseClass.h
//
//  Created by   on 15/3/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SelectData;

@interface SelectBaseClass : NSObject <NSCoding, NSCopying>

@property (nonatomic, retain) NSString *errorMsg;
@property (nonatomic, retain) SelectData *data;
@property (nonatomic, retain) NSString *s;
@property (nonatomic, retain) NSString *errorCode;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
