//
//  preferentialArticleMallClient.h
//
//  Created by   on 15/3/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface preferentialArticleMallClient : NSObject <NSCoding, NSCopying>

@property (nonatomic, retain) NSString *mallNo;
@property (nonatomic, retain) NSString *productNo;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
