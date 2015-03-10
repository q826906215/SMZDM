//
//  Network.h
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/10.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Network : NSObject



+(void)getFistPageScrollImageDataGoodsID:(NSString *)goodId CompletionBlock:(void(^)(NSDictionary *dic))block;
+(void)getFistPageSelectDataWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block;
+(void)getFistPagePreferentialDataWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block;
+(void)getFistPageHaiTaoDataWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block;
+(void)getFistPagefoundWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block;
+(void)getFistPageBaskInContentDataWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block;
+(void)getFistPageExperienceDataWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block;
+(void)getFistPageInformationDataWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block;



@end
