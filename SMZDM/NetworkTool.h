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
+(void)getFistPageInformationDataCompletionBlock:(void (^)(NSDictionary *dic))block;

@end
