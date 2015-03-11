//
//  Network.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/10.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "Network.h"
#import <AFNetworking.h>
#import "DataModels.h"

@implementation Network

////+(void)getFistPageScrollImageDataGoodsID:(NSString *)goodId CompletionBlock:(void(^)(NSDictionary *dic))block{
//    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
//    
//    NSString *urlString =[NSString stringWithFormat:@"http://api.smzdm.com/v1/util/banner/%@?f=iphone&type=home&s=54f6f2008e2df721067",goodId];
//    
//    NSString *encodedString =(__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL, NULL, kCFStringEncodingUTF8);
//    
//    
//    
//    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        
//                NSLog(@"%@",responseObject);
//        NSDictionary *dic = responseObject;
//        block(dic);
//        
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        NSLog(@"Error:%@",error);
//    }];
//    
//}
+(void)getFistPageSelectDataWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block{
    
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    
    NSString *urlString =[NSString stringWithFormat:@"http://api.smzdm.com/v1/home/articles/%@?have_zhuanti=1&f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0",goodId];
    
    NSString *encodedString =(__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL, NULL, kCFStringEncodingUTF8);
    
    //    NSLog(@"weqweqweqw");
    
    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
//                NSLog(@"----------%@",responseObject);
        
        NSDictionary *dic =responseObject;
        
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
}


+(void)getFistPagePreferentialDataWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block{
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    NSString *urlString =[NSString stringWithFormat:@"http://api.smzdm.com/v1/youhui/articles/%@?f=iphone&filtervideo=1&s=54f6f2008e2df721067&imgmode=0",goodId];
//NSLog(@"---------------------%@",urlString);
    
    NSString *encodedString =(__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL, NULL, kCFStringEncodingUTF8);

    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        //NSLog(@"wwwwww------%@",responseObject);
        
        NSDictionary *dic =responseObject;
        
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
}
+(void)getFistPageHaiTaoDataWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block{
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    
    NSString *urlstring=[NSString stringWithFormat:@"http://api.smzdm.com/v1/haitao/articles/%@?f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0",goodId];
    NSString *encodedString =(NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlstring, NULL, NULL, kCFStringEncodingUTF8);
    
    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //        NSLog(@"%@",responseObject);
        
        NSDictionary * dic =responseObject;
        
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
}

+(void)getFistPagefoundWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block{
    
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    
    NSString *urlString =[NSString stringWithFormat:@"http://api.smzdm.com/v1/faxian/articles/%@?f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0",goodId];
    
    NSString *encodedString = (NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL, NULL, kCFStringEncodingUTF8);
    
    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //        NSLog(@"%@",responseObject);
        
        NSDictionary * dic =responseObject;
        
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
    
    
}
+(void)getFistPageBaskInContentDataWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block{
    AFHTTPRequestOperationManager *manager =[AFHTTPRequestOperationManager manager];
    
    NSString *urlString =[NSString stringWithFormat:@"http://api.smzdm.com/v1/show/articles/%@?f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0",goodId];
    
    NSString *encodedString =(NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL,NULL,kCFStringEncodingUTF8);
    
    [manager GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //        NSLog(@"%@",responseObject );
        
        NSDictionary *dic=responseObject;
        
        block(dic);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
}

+(void)getFistPageExperienceDataWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block{
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    
    NSString *urlString =[NSString stringWithFormat:@"http://api.smzdm.com/v1/jingyan/articles/%@?f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0",goodId];
    
    NSString *encodedString = (NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL, NULL, kCFStringEncodingUTF8);
    
    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //        NSLog(@"%@",responseObject);
        
        NSDictionary * dic =responseObject;
        
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
    
}

+(void)getFistPageInformationDataWithGoodsID:(NSString *)goodId CompletionBlock:(void (^)(NSDictionary *dic))block{
    
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    
    NSString *urlString =[NSString stringWithFormat:@"http://api.smzdm.com/v1/news/articles/%@?f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0",goodId];
    
    NSString *encodedString = (NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL, NULL, kCFStringEncodingUTF8);
    
    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //        NSLog(@"%@",responseObject);
        
        NSDictionary * dic =responseObject;
        
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
    
}






+(void)getPriceIndex:(NSInteger)sender   CompletionBlock:(void(^)(NSDictionary * dic))block {
    
    NSArray * array = @[@"http://api.smzdm.com/v1/youhui/articles/%@?limit=20&f=iphone&s=54f96cdacdb53897493&tag=19855&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles/%@?limit=20&f=iphone&s=54f96cdacdb53897493&tag=19855&imgmode=0"];
    
    
    NSString * urlString = [array objectAtIndex:sender];
    
    
    AFHTTPSessionManager * manager =[ AFHTTPSessionManager manager];
    [manager GET:urlString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        block(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"---失败");
    }];
    
    
    
    
    
}


@end
