//
//  InterfArticleMallClient.h
//
//  Created by   on 15/3/10
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface InterfArticleMallClient : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *mallNo;
@property (nonatomic, strong) NSString *productNo;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
