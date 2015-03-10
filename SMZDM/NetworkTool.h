//
//  NetworkTool.h
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/5.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkTool : NSObject

+(void)getFistPageScrollImageDataCompletionBlock:(void(^)(NSDictionary *dic))block;
+(void)getFistPageSelectDataCompletionBlock:(void (^)(NSDictionary *dic))block;
+(void)getFistPagePreferentialDataCompletionBlock:(void (^)(NSDictionary *dic))block;
+(void)getFistPageHaiTaoDataCompletionBlock:(void (^)(NSDictionary *dic))block;
+(void)getFistPagefoundCompletionBlock:(void (^)(NSDictionary *dic))block;
+(void)getFistPageBaskInContentDataCompletionBlock:(void (^)(NSDictionary *dic))block;
+(void)getFistPageExperienceDataCompletionBlock:(void (^)(NSDictionary *dic))block;
+(void)getFistPageInformationDataCompletionBlock:(void (^)(NSDictionary *dic))block;

//小数据


//----------------日排行－－－－－－－－－－－－
+(void)getDayListIndex:(NSInteger)sender getValue:(NSInteger)value CompletionBlock:(void(^)(NSDictionary * dic))block;

//---神价物
+(void)getPriceIndex:(NSInteger)sender  CompletionBlock:(void(^)(NSDictionary * dic))block ;
// --白菜党
+(void)getCabbageIndex:(NSInteger)sender CompletionBlock:(void(^)(NSDictionary * dic))block ;
//--奇葩物
+(void)getMiracheIndex:(NSInteger)sender CompletionBlock:(void(^)(NSDictionary * dic))block ;

//--------------商城筛选－－－－－

+(void)getShopIndex:(NSInteger)sender getValue:(NSInteger)value CompletionBlock:(void(^)(NSDictionary * dic))block;

@end
