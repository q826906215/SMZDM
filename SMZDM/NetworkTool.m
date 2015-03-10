//
//  NetworkTool.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/5.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "NetworkTool.h"
#import <AFNetworking.h>
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
    
//    NSLog(@"weqweqweqw");
    
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
        
//        NSLog(@"wwwwww------%@",responseObject);
        
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
//        NSLog(@"%@",responseObject);
        
        NSDictionary * dic =responseObject;
        
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
}

+(void)getFistPagefoundCompletionBlock:(void (^)(NSDictionary *dic))block{
    
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    
    NSString *urlString =@"http://api.smzdm.com/v1/faxian/articles?f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0";
    
    NSString *encodedString = (NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL, NULL, kCFStringEncodingUTF8);
    
    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSLog(@"%@",responseObject);
        
        NSDictionary * dic =responseObject;
        
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
    
    
}

+(void)getFistPageBaskInContentDataCompletionBlock:(void (^)(NSDictionary *dic))block{
    AFHTTPRequestOperationManager *manager =[AFHTTPRequestOperationManager manager];
    
    NSString *urlString =@"http://api.smzdm.com/v1/show/articles?f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0";
    
    NSString *encodedString =(NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL,NULL,kCFStringEncodingUTF8);
    
    [manager GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSLog(@"%@",responseObject );
        
        NSDictionary *dic=responseObject;
        
        block(dic);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
}

+(void)getFistPageExperienceDataCompletionBlock:(void (^)(NSDictionary *dic))block{
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    
    NSString *urlString =@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0";
    
    NSString *encodedString = (NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)urlString, NULL, NULL, kCFStringEncodingUTF8);
    
    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSLog(@"%@",responseObject);
        
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
//        NSLog(@"%@",responseObject);
        
        NSDictionary * dic =responseObject;
        
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error:%@",error);
    }];
    
}



//--------------------日排行－－－－－－－－－－－－－－－－－－－－－－－－－
+(void)getDayListIndex:(NSInteger)sender getValue :(NSInteger)value
       CompletionBlock:(void(^)(NSDictionary * dic))block
{
    NSMutableArray * bigArray = [[NSMutableArray alloc] init];
    
    
    NSArray * arrayList = @[@"http://api.smzdm.com/v1/youhui/articles?imgmode=0&f=iphone&s=54f96cdacdb53897493&filter=hot_1&limit=20&offset=0",@"http://api.smzdm.com/v1/haitao/articles?imgmode=0&f=iphone&s=54f96cdacdb53897493&filter=hot_1&limit=20&offset=0",@"http://api.smzdm.com/v1/faxian/articles?imgmode=0&f=iphone&s=54f96cdacdb53897493&filter=hot_1&limit=20&offset=0",@"http://api.smzdm.com/v1/show/articles?imgmode=0&f=iphone&s=54f96cdacdb53897493&filter=hot_1&limit=20&offset=0",@"http://api.smzdm.com/v1/jingyan/articles?imgmode=0&f=iphone&s=54f96cdacdb53897493&filter=hot_1&limit=20&offset=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    
    NSArray * numberArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=163&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=163&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=163&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=163&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=163&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=163&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    NSArray * eleArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=27&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=27&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=27&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=27&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=27&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=27&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    
    NSArray * sportArray =@[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=191&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=191&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=191&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=191&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=191&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=191&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    NSArray * clothArray =@[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=57&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=57&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=57&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=57&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=57&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=57&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    NSArray * personArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=113&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=113&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=113&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=113&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=113&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=113&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    NSArray * childArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=75&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=75&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=75&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=75&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=75&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=75&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    
    NSArray *  dayUseArray =@[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=1515&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=1515&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=1515&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=1515&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=1515&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=1515&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    
    NSArray * foodArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=95&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=95&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=95&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=95&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=95&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=95&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    NSArray * giftArray =@[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=131&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=131&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=131&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=131&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=131&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=131&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    
    NSArray * bookArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=7&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=7&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=7&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=7&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=7&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=7&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    
    NSArray * playArry = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=93&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=93&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=93&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=93&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=93&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=93&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    
    NSArray *workArray =@[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=177&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=177&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=177&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=177&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=177&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=177&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    
    NSArray * homeArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=37&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=37&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=37&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=37&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=37&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=37&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    NSArray * carArray =@[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=147&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=147&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=147&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=147&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=147&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=147&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    
    NSArray * otherArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&category=1523&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?f=iphone&category=1523&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&category=1523&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/show/articles?f=iphone&category=1523&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/jingyan/articles?f=iphone&category=1523&s=54f96cdacdb53897493&limit=20&imgmode=0",@"http://api.smzdm.com/v1/news/articles?f=iphone&category=1523&s=54f96cdacdb53897493&limit=20&imgmode=0"];
    //--
    [bigArray addObjectsFromArray:@[numberArray,eleArray,sportArray,clothArray,personArray,childArray,dayUseArray,foodArray,giftArray,bookArray,playArry,workArray,homeArray,carArray,otherArray]];

    
    if (value == 10) {
        
        NSString * urlString = [arrayList objectAtIndex:sender];
        
        
        AFHTTPSessionManager * manager =[AFHTTPSessionManager manager];
        [manager GET:urlString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject)
         {
             block(responseObject);
         } failure:^(NSURLSessionDataTask *task, NSError *error) {
             NSLog(@"---失败");
         }];
        
    }
    else{
        
        NSArray * smallArray =[ bigArray  objectAtIndex:(value-20)];
        NSString * urlString = [smallArray objectAtIndex:sender];
        
        
        AFHTTPSessionManager * manager =[ AFHTTPSessionManager manager];
        [manager GET:urlString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
            block(responseObject);
        } failure:^(NSURLSessionDataTask *task, NSError *error) {
            NSLog(@"---失败");
        }];
        
    }
    
}
//--神价物－－－－
+(void)getPriceIndex:(NSInteger)sender   CompletionBlock:(void(^)(NSDictionary * dic))block {
    
    NSArray * array = @[@"http://api.smzdm.com/v1/youhui/articles?limit=20&f=iphone&s=54f96cdacdb53897493&tag=19855&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?limit=20&f=iphone&s=54f96cdacdb53897493&tag=19855&imgmode=0"];
    
    
    NSString * urlString = [array objectAtIndex:sender];
    
    
    AFHTTPSessionManager * manager =[ AFHTTPSessionManager manager];
    [manager GET:urlString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        block(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"---失败");
    }];
    
    
    
    
    
}

+(void)getCabbageIndex:(NSInteger)sender CompletionBlock:(void(^)(NSDictionary * dic))block{
    
    
    NSArray * array = @[@"http://api.smzdm.com/v1/youhui/articles?limit=20&f=iphone&s=54f96cdacdb53897493&tag=35253&imgmode=0",@"http://api.smzdm.com/v1/haitao/articles?limit=20&f=iphone&s=54f96cdacdb53897493&tag=35253&imgmode=0"];
    
    
    NSString * urlString = [array objectAtIndex:sender];
    
    
    AFHTTPSessionManager * manager =[ AFHTTPSessionManager manager];
    [manager GET:urlString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        block(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"---失败");
    }];
    
    
}
//--奇葩物
+(void)getMiracheIndex:(NSInteger)sender CompletionBlock:(void(^)(NSDictionary * dic))block
{
    
    NSArray * array = @[@"http://api.smzdm.com/v1/youhui/articles?imgmode=0&f=iphone&s=54f96cdacdb53897493&tag=9149&limit=20",@"http://api.smzdm.com/v1/haitao/articles?limit=20&f=iphone&s=54f96cdacdb53897493&tag=9149&imgmode=0"];
    
    NSString * urlString = [array objectAtIndex:sender];
    AFHTTPSessionManager * manager =[ AFHTTPSessionManager manager];
    [manager GET:urlString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        block(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"---失败");
    }];
    
}
//---------------------商城筛选－－－－－－－－－－－－－
+(void)getShopIndex:(NSInteger)sender getValue:(NSInteger)value CompletionBlock:(void(^)(NSDictionary * dic))block
{
    NSMutableArray * bigUpArray = [[NSMutableArray alloc] init];
    
    NSArray * jDArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E4%BA%AC%E4%B8%9C&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E4%BA%AC%E4%B8%9C&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    
    NSArray * tMArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E5%A4%A9%E7%8C%AB%E7%B2%BE%E9%80%89&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E5%A4%A9%E7%8C%AB%E7%B2%BE%E9%80%89&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * ymxArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E4%BA%9A%E9%A9%AC%E9%80%8A%E4%B8%AD%E5%9B%BD&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E4%BA%9A%E9%A9%AC%E9%80%8A%E4%B8%AD%E5%9B%BD&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * snyArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E8%8B%8F%E5%AE%81%E6%98%93%E8%B4%AD&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E8%8B%8F%E5%AE%81%E6%98%93%E8%B4%AD&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * yhdArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=1%E5%8F%B7%E5%BA%97&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=1%E5%8F%B7%E5%BA%97&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * sfyxArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E9%A1%BA%E4%B8%B0%E4%BC%98%E9%80%89&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E9%A1%BA%E4%B8%B0%E4%BC%98%E9%80%89&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * zlwmwArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E4%B8%AD%E7%B2%AE%E6%88%91%E4%B9%B0%E7%BD%91&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E4%B8%AD%E7%B2%AE%E6%88%91%E4%B9%B0%E7%BD%91&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * tbjxArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E6%B7%98%E5%AE%9D%E7%B2%BE%E9%80%89&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E6%B7%98%E5%AE%9D%E7%B2%BE%E9%80%89&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * yxwArray = @[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E6%98%93%E8%BF%85%E7%BD%91&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E6%98%93%E8%BF%85%E7%BD%91&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    
    //-----
    NSArray * gmzxArray =@[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E5%9B%BD%E7%BE%8E%E5%9C%A8%E7%BA%BF&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E5%9B%BD%E7%BE%8E%E5%9C%A8%E7%BA%BF&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * ddArray =@[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E5%BD%93%E5%BD%93&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E5%BD%93%E5%BD%93&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * ygwArray =@[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E4%BC%98%E8%B4%AD%E7%BD%91&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E4%BC%98%E8%B4%AD%E7%BD%91&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * ttgsArray =@[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E6%B2%B1%E6%B2%B1%E5%B7%A5%E7%A4%BE&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E6%B2%B1%E6%B2%B1%E5%B7%A5%E7%A4%BE&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * jywArray =@[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E5%81%A5%E4%B8%80%E7%BD%91&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E5%81%A5%E4%B8%80%E7%BD%91&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * xdzgArray =@[@"http://api.smzdm.com/v1/youhui/articles?f=iphone&mall=%E6%96%B0%E8%9B%8B%E4%B8%AD%E5%9B%BD&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E6%96%B0%E8%9B%8B%E4%B8%AD%E5%9B%BD&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    //-------
    NSArray * mgymxArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=%E7%BE%8E%E5%9B%BD%E4%BA%9A%E9%A9%AC%E9%80%8A&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E7%BE%8E%E5%9B%BD%E4%BA%9A%E9%A9%AC%E9%80%8A&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * rbymxArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=%E6%97%A5%E6%9C%AC%E4%BA%9A%E9%A9%AC%E9%80%8A&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E6%97%A5%E6%9C%AC%E4%BA%9A%E9%A9%AC%E9%80%8A&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * ebayArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=ebay&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=ebay&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * bpmArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=6PM&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=6PM&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * stpArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=STP&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=STP&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * ashfordArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=Ashford&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=Ashford&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * wootArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=woot&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=woot&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * gncArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=GNC%E7%BE%8E%E5%9B%BD%E5%AE%98%E7%BD%91&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=GNC%E7%BE%8E%E5%9B%BD%E5%AE%98%E7%BD%91&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * myhabltArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=MYHABIT&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=MYHABIT&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * reiArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=REI&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=REI&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * drugstoreArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=drugstore&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=drugstore&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray *  dgymxArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=%E5%BE%B7%E5%9B%BD%E4%BA%9A%E9%A9%AC%E9%80%8A&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E5%BE%B7%E5%9B%BD%E4%BA%9A%E9%A9%AC%E9%80%8A&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    
    NSArray *  jomashopArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=%E5%BE%B7%E5%9B%BD%E4%BA%9A%E9%A9%AC%E9%80%8A&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=%E5%BE%B7%E5%9B%BD%E4%BA%9A%E9%A9%AC%E9%80%8A&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray *  thew2atchArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=TheWatchery&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=TheWatchery&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    NSArray * joeArray = @[@"http://api.smzdm.com/v1/haitao/articles?f=iphone&mall=Joe's%20NB%20Outlet&s=54f6f2008e2df721067&limit=20&imgmode=0",@"http://api.smzdm.com/v1/faxian/articles?f=iphone&mall=Joe's%20NB%20Outlet&s=54f6f2008e2df721067&limit=20&imgmode=0"];
    
    
    [bigUpArray  addObjectsFromArray:@[jDArray,tMArray,ymxArray,snyArray,yhdArray,sfyxArray,zlwmwArray,tbjxArray,yxwArray,gmzxArray,ddArray,ygwArray,ttgsArray,jywArray,xdzgArray,mgymxArray,rbymxArray,ebayArray,bpmArray,stpArray,ashfordArray,wootArray,gncArray,myhabltArray,reiArray,drugstoreArray,joeArray,dgymxArray,jomashopArray,thew2atchArray] ];
    
    NSArray * smallArray =[bigUpArray  objectAtIndex:(value-1000)];
    
    NSString * urlString =[smallArray objectAtIndex:sender];
    
    
    AFHTTPSessionManager * manager =[ AFHTTPSessionManager manager];
    [manager GET:urlString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        //        NSLog(@"-%@",responseObject);
        block(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"---失败");
    }];
    
    
    
    
    
}

@end

