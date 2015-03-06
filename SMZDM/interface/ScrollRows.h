//
//  ScrollRows.h
//
//  Created by   on 15/3/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ScrollRows : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *bannerPic;
@property (nonatomic, strong) NSString *bannerTitle;
@property (nonatomic, strong) NSString *bannerPich;
@property (nonatomic, strong) NSString *articleChannelId;
@property (nonatomic, strong) NSString *bannerPicw;
@property (nonatomic, strong) NSString *bannerId;
@property (nonatomic, strong) NSString *articleId;
@property (nonatomic, strong) NSString *bannerOrder;
@property (nonatomic, strong) NSString *bannerUrl;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
