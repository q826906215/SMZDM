//
//  InformatData.h
//
//  Created by   on 15/3/11
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class InformatArticleCategory;

@interface InformatData : NSObject <NSCoding, NSCopying>

@property (nonatomic, retain) NSString *articleFormatDate;
@property (nonatomic, retain) NSString *articleFilterContent;
@property (nonatomic, retain) NSString *articleRzlx;
@property (nonatomic, retain) NSString *articleId;
@property (nonatomic, retain) NSString *articleFormatPic;
@property (nonatomic, retain) InformatArticleCategory *articleCategory;
@property (nonatomic, retain) NSString *articleTitle;
@property (nonatomic, retain) NSArray *articleContentImgList;
@property (nonatomic, retain) NSString *articleUrl;
@property (nonatomic, retain) NSString *articleFavorite;
@property (nonatomic, retain) NSString *articleCollection;
@property (nonatomic, retain) NSString *articleDate;
@property (nonatomic, retain) NSString *articleComment;
@property (nonatomic, retain) NSString *articleCommentOpen;
@property (nonatomic, retain) NSString *articlePic;
@property (nonatomic, retain) NSString *articleReferrals;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
