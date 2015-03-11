//
//  foundStData.h
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class foundStArticleMallClient, foundStArticleCategory;

@interface foundStData : NSObject <NSCoding, NSCopying>

@property (nonatomic, retain) foundStArticleMallClient *articleMallClient;
@property (nonatomic, retain) NSString *articlePicHeight;
@property (nonatomic, retain) NSString *articleFormatDate;
@property (nonatomic, retain) NSString *articleLinkType;
@property (nonatomic, retain) NSString *articleCommentOpen;
@property (nonatomic, retain) NSString *articleTitle;
@property (nonatomic, retain) NSString *articleUrl;
@property (nonatomic, retain) NSString *articleFilterContent;
@property (nonatomic, retain) NSString *articleId;
@property (nonatomic, retain) NSString *articleFormatPic;
@property (nonatomic, retain) NSString *articleFavorite;
@property (nonatomic, retain) NSString *articleDate;
@property (nonatomic, assign) BOOL articleAnonymous;
@property (nonatomic, retain) NSString *articlePic;
@property (nonatomic, retain) NSString *articleReferrals;
@property (nonatomic, retain) NSString *articleComment;
@property (nonatomic, retain) NSArray *articleContentImgList;
@property (nonatomic, retain) NSString *articleCollection;
@property (nonatomic, retain) foundStArticleCategory *articleCategory;
@property (nonatomic, retain) NSString *articleMall;
@property (nonatomic, retain) NSString *articlePrice;
@property (nonatomic, retain) NSString *articleLink;
@property (nonatomic, retain) NSString *articlePicWidth;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
