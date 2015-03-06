//
//  HaiTaoRows.h
//
//  Created by   on 15/3/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface HaiTaoRows : NSObject <NSCoding, NSCopying>

@property (nonatomic, retain) NSString *articleLink;
@property (nonatomic, retain) NSString *articleFormatDate;
@property (nonatomic, retain) NSString *articleLinkType;
@property (nonatomic, retain) NSArray *articleLinkList;
@property (nonatomic, retain) NSString *articleWorthy;
@property (nonatomic, retain) NSString *articleTitle;
@property (nonatomic, retain) NSString *articleUrl;
@property (nonatomic, retain) NSString *articleFilterContent;
@property (nonatomic, retain) NSString *articleIsSoldOut;
@property (nonatomic, retain) NSString *articleId;
@property (nonatomic, retain) NSString *articleIsTimeout;
@property (nonatomic, retain) NSString *articleDate;
@property (nonatomic, retain) NSString *articleUnworthy;
@property (nonatomic, retain) NSString *articlePic;
@property (nonatomic, retain) NSString *articleReferrals;
@property (nonatomic, retain) NSString *articleComment;
@property (nonatomic, retain) NSString *articleCollection;
@property (nonatomic, retain) NSString *articleMall;
@property (nonatomic, retain) NSString *articlePrice;
@property (nonatomic, retain) NSString *articleTop;
@property (nonatomic, retain) NSString *articleTag;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
