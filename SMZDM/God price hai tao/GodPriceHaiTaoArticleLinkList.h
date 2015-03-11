//
//  GodPriceHaiTaoArticleLinkList.h
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface GodPriceHaiTaoArticleLinkList : NSObject <NSCoding, NSCopying>

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *link;
@property (nonatomic, retain) NSString *buyBtnDomain;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
