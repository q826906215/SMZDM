//
//  foundStArticleCategory.h
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface foundStArticleCategory : NSObject <NSCoding, NSCopying>

@property (nonatomic, retain) NSString *iDProperty;
@property (nonatomic, retain) NSString *title;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
