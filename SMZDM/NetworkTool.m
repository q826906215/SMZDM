//
//  NetworkTool.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/5.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "NetworkTool.h"
#import "AFNetworking.h"
#import "DataModels.h"

@implementation NetworkTool


+(void)getFistPageScrollImageDataCompletionBlock:(void(^)(NSDictionary *dic))block
{
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    
    NSString *urlString =@"http://api.smzdm.com/v1/util/banner?f=iphone&type=home&s=54f6f2008e2df721067";
    
    NSString *encodedString =(__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL, NULL, kCFStringEncodingUTF8);
    
    
    
    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
//        NSLog(@"%@",responseObject);
        NSDictionary *dic = responseObject;
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];

}
+(void)getFistPageSelectDataCompletionBlock:(void (^)(NSDictionary *dic))block{
    
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    
    NSString *urlString =@"http://api.smzdm.com/v1/home/articles?have_zhuanti=1&f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0";
    
    NSString *encodedString =(__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL, NULL, kCFStringEncodingUTF8);
    
    NSLog(@"weqweqweqw");
    
    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
//        NSLog(@"----------%@",responseObject);
        
        NSDictionary *dic =responseObject;
        
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
}
+(void)getFistPagePreferentialDataCompletionBlock:(void (^)(NSDictionary *dic))block{
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    
    NSString *urlString =@"http://api.smzdm.com/v1/youhui/articles?f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0";
    
    NSString *encodedString =(__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL, NULL, kCFStringEncodingUTF8);
    
    NSLog(@"weqweqweqw");
    
    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSLog(@"wwwwww------%@",responseObject);
        
        NSDictionary *dic =responseObject;
        
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];

}

+(void)getFistPageHaiTaoDataCompletionBlock:(void (^)(NSDictionary *dic))block{
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    
    NSString *urlstring=@"http://api.smzdm.com/v1/haitao/articles?f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0";
    NSString *encodedString =(NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlstring, NULL, NULL, kCFStringEncodingUTF8);
    
    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",responseObject);
        
        NSDictionary * dic =responseObject;
        
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
}
+(void)getFistPageInformationDataCompletionBlock:(void (^)(NSDictionary *dic))block{
    
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    
    NSString *urlString =@"http://api.smzdm.com/v1/news/articles?f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0";
    
    NSString *encodedString = (NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL, NULL, kCFStringEncodingUTF8);
    
    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",responseObject);
        NSDictionary * dic =responseObject;
        
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
    
}
@end
