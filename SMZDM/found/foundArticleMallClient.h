//
//  foundArticleMallClient.h
//
//  Created by   on 15/3/9
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface foundArticleMallClient : NSObject <NSCoding, NSCopying>

@property (nonatomic, retain) NSString *mallNo;
@property (nonatomic, retain) NSString *productNo;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
