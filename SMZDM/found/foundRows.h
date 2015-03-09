//
//  foundRows.h
//
//  Created by   on 15/3/9
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class foundArticleMallClient;

@interface foundRows : NSObject <NSCoding, NSCopying>

@property (nonatomic, retain) NSString *articlePrice;
@property (nonatomic, retain) NSString *articleFilterContent;
@property (nonatomic, retain) NSString *articlePic;
@property (nonatomic, retain) foundArticleMallClient *articleMallClient;
@property (nonatomic, retain) NSString *articleId;
@property (nonatomic, retain) NSString *articleReferrals;
@property (nonatomic, retain) NSString *articleLinkType;
@property (nonatomic, retain) NSString *articleTitle;
@property (nonatomic, retain) NSString *articleMall;
@property (nonatomic, retain) NSString *articleUrl;
@property (nonatomic, retain) NSString *articleCollection;
@property (nonatomic, retain) NSString *articleFavorite;
@property (nonatomic, retain) NSString *articleComment;
@property (nonatomic, retain) NSString *articleDate;
@property (nonatomic, retain) NSString *articleLink;
@property (nonatomic, retain) NSString *articleFormatDate;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
