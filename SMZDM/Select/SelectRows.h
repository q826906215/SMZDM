//
//  SelectRows.h
//
//  Created by   on 15/3/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface SelectRows : NSObject <NSCoding, NSCopying>

@property (nonatomic, retain) NSString *articleTag;
@property (nonatomic, retain) NSString *articleFormatDate;
@property (nonatomic, retain) NSString *articleLinkType;
@property (nonatomic, retain) NSArray *articleLinkList;
@property (nonatomic, retain) NSString *articleTitle;
@property (nonatomic, retain) NSString *articleIsSoldOut;
@property (nonatomic, retain) NSString *articleUrl;
@property (nonatomic, retain) NSString *articleWorthy;
@property (nonatomic, retain) NSString *articleId;
@property (nonatomic, retain) NSString *articleIsTimeout;
@property (nonatomic, retain) NSString *articleChannelName;
@property (nonatomic, retain) NSString *articleDate;
@property (nonatomic, retain) NSString *articleUnixDate;
@property (nonatomic, retain) NSString *articleUnworthy;
@property (nonatomic, retain) NSString *articleAnonymous;
@property (nonatomic, retain) NSString *articlePic;
@property (nonatomic, retain) NSString *articleReferrals;
@property (nonatomic, retain) NSString *articleComment;
@property (nonatomic, retain) NSString *articleChannelId;
@property (nonatomic, retain) NSString *timeSort;
@property (nonatomic, retain) NSString *articleCollection;
@property (nonatomic, retain) NSString *articleMall;
@property (nonatomic, retain) NSString *articleLink;
@property (nonatomic, retain) NSString *articlePrice;
@property (nonatomic, retain) NSString *articleTop;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
