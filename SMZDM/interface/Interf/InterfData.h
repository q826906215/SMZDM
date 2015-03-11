//
//  InterfData.h
//
//  Created by   on 15/3/10
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class InterfArticleMallClient, InterfArticleCategory;

@interface InterfData : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) InterfArticleMallClient *articleMallClient;
@property (nonatomic, strong) NSString *articlePicWidth;
@property (nonatomic, strong) NSString *articlePicHeight;
@property (nonatomic, strong) NSString *articleFormatDate;
@property (nonatomic, strong) NSString *articleLinkType;
@property (nonatomic, strong) NSArray *articleLinkList;
@property (nonatomic, strong) NSString *articleTitle;
@property (nonatomic, strong) NSString *articleIsSoldOut;
@property (nonatomic, strong) NSString *articleUrl;
@property (nonatomic, strong) NSString *articleFilterContent;
@property (nonatomic, strong) NSString *articleCommentOpen;
@property (nonatomic, strong) NSString *articleWorthy;
@property (nonatomic, strong) NSString *articleId;
@property (nonatomic, strong) NSString *articleIsTimeout;
@property (nonatomic, strong) NSString *articleFormatPic;
@property (nonatomic, strong) NSString *articleDate;
@property (nonatomic, strong) NSString *articleUnworthy;
@property (nonatomic, assign) BOOL articleAnonymous;
@property (nonatomic, strong) NSString *articlePic;
@property (nonatomic, strong) NSString *articleReferrals;
@property (nonatomic, strong) NSString *articleComment;
@property (nonatomic, strong) NSArray *articleContentImgList;
@property (nonatomic, strong) NSString *articleCollection;
@property (nonatomic, strong) InterfArticleCategory *articleCategory;
@property (nonatomic, strong) NSString *articleMall;
@property (nonatomic, strong) NSString *articleLink;
@property (nonatomic, strong) NSString *articleTag;
@property (nonatomic, strong) NSString *articlePrice;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
