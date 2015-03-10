//
//  PrefeData.h
//
//  Created by   on 15/3/10
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PrefeArticleMallClient, PrefeArticleCategory;

@interface PrefeData : NSObject <NSCoding, NSCopying>

@property (nonatomic, retain) PrefeArticleMallClient *articleMallClient;
@property (nonatomic, retain) NSString *articlePicWidth;
@property (nonatomic, retain) NSString *articlePicHeight;
@property (nonatomic, retain) NSString *articleFormatDate;
@property (nonatomic, retain) NSString *articleLinkType;
@property (nonatomic, retain) NSArray *articleLinkList;
@property (nonatomic, retain) NSString *articleTitle;
@property (nonatomic, retain) NSString *articleIsSoldOut;
@property (nonatomic, retain) NSString *articleUrl;
@property (nonatomic, retain) NSString *articleFilterContent;
@property (nonatomic, retain) NSString *articleCommentOpen;
@property (nonatomic, retain) NSString *articleWorthy;
@property (nonatomic, retain) NSString *articleId;
@property (nonatomic, retain) NSString *articleIsTimeout;
@property (nonatomic, retain) NSString *articleFormatPic;
@property (nonatomic, retain) NSString *articleDate;
@property (nonatomic, retain) NSString *articleUnworthy;
@property (nonatomic, assign) BOOL articleAnonymous;
@property (nonatomic, retain) NSString *articlePic;
@property (nonatomic, retain) NSString *articleReferrals;
@property (nonatomic, retain) NSString *articleComment;
@property (nonatomic, retain) NSArray *articleContentImgList;
@property (nonatomic, retain) NSString *articleCollection;
@property (nonatomic, retain) PrefeArticleCategory *articleCategory;
@property (nonatomic, retain) NSString *articleMall;
@property (nonatomic, retain) NSString *articleLink;
@property (nonatomic, retain) NSString *articleTag;
@property (nonatomic, retain) NSString *articlePrice;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
