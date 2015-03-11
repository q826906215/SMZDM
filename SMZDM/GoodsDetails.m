//
//  GoodsDetails.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/9.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "GoodsDetails.h"
#import "Network.h"
#import <AFNetworking.h>
#import "StrechyParallaxScrollView.h"
#import "PrefeBaseClass.h"
#import <UIImageView+WebCache.h>
#import "LogInToRegister.h"
#import <ShareSDK/ShareSDK.h>
#import "AppDelegate.h"
#import <TencentOpenAPI/QQApiInterface.h>
#import <TencentOpenAPI/TencentOAuth.h>
#import "WXApi.h"
#import "WeiboApi.h"
#import "WeiboSDK.h"
#import <RennSDK/RennSDK.h>

#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width


@interface GoodsDetails ()
{
    UIImageView *_imageBG;
    
    StrechyParallaxScrollView *strechy;
    
    NSMutableArray * _indexArray;
    float colHeight[2];
    
    UIView *_viewHH;
    
    UILabel *timeL;
    UIButton *addrBtn;
}

@end

@implementation GoodsDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor =[UIColor whiteColor];
    
    [Network getFistPagePreferentialDataWithGoodsID:self.good.articleId CompletionBlock:^(NSDictionary *dic) {
        
        preferentialClass =[PrefeBaseClass modelObjectWithDictionary:dic];
        
        [webView loadHTMLString:preferentialClass.data.articleFilterContent baseURL:nil];
    
    }];
    
    CGFloat width = [[UIScreen mainScreen] bounds].size.width;
    
    _imageBG = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, width,300)];
    
    [_imageBG sd_setImageWithURL:[NSURL URLWithString:self.good.articlePic]];
    
    _imageBG.backgroundColor=[UIColor redColor];
    
    strechy=[[StrechyParallaxScrollView alloc]initWithFrame:self.view.frame andTopView:_imageBG];
    
    
    strechy.backgroundColor =[UIColor brownColor];
    strechy.contentSize =CGSizeMake(320, 568);
    
    [self.view addSubview:strechy];
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 170, 320, 130)];
    
    view.backgroundColor =[UIColor grayColor];
    
    view.alpha =0.4;
    
    [strechy addSubview:view];
    
    
    UILabel *theNameThe=[[UILabel alloc]initWithFrame:CGRectMake(10, 175, 40, 20)];
    
    theNameThe.text=self.good.articleMall;
    
    theNameThe.textColor=[UIColor whiteColor];
    
    theNameThe.font=[UIFont systemFontOfSize:13];
    
    [strechy addSubview:theNameThe];
    
    UILabel *theNameOfThe=[[UILabel alloc]initWithFrame:CGRectMake(50, 175, 170, 20)];
    
    theNameOfThe.text =[NSString stringWithFormat:@"推荐人: %@",self.good.articleReferrals];
    
    theNameOfThe.textColor=[UIColor whiteColor];
    
    theNameOfThe.font=[UIFont systemFontOfSize:13];
    
    [strechy addSubview:theNameOfThe];
    
    
    UILabel *time =[[UILabel alloc]initWithFrame:CGRectMake(270, 175, 40, 20)];

    time.text =self.good.articleFormatDate;
    
    time.textColor=[UIColor whiteColor];
    
    time.font=[UIFont systemFontOfSize:13];

    
    [strechy addSubview:time];
    
    
    float itemStartY = strechy.frame.size.height + 10;
    for (int i = 1; i <= 10; i++) {
        [strechy addSubview:[self scrollViewItemWithY:itemStartY andNumber:i]];
    }
    
    [strechy setContentSize:CGSizeMake(width, itemStartY)];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(5, 30, 40, 40);
    
    backBtn.tag =100;
    [backBtn setBackgroundImage:[UIImage imageNamed:@"ic_xq_back@2x"] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
    
    UIButton *collection = [UIButton buttonWithType:UIButtonTypeCustom];
    collection.frame = CGRectMake(220, 30, 40, 40);
    collection.tag =101;
    [collection setBackgroundImage:[UIImage imageNamed:@"ic_xq_collect_OK@2x"] forState:UIControlStateNormal];
    [collection addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:collection];
    
    UIButton *share = [UIButton buttonWithType:UIButtonTypeCustom];
    share.frame = CGRectMake(270, 30, 40, 40);
    share.tag =102;
    [share setBackgroundImage:[UIImage imageNamed:@"ic_xq_share@2x"] forState:UIControlStateNormal];
    [share addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:share];
//    
//    UIImageView *image=[[UIImageView alloc]initWithFrame:CGRectMake(60, 528, 40, 40)];
//    
//    image.image =[UIImage imageNamed:@"ico_zhi@2x.png "];
//    
//    [self.view addSubview:image];
//    
    UIButton *shareSet= [UIButton buttonWithType:UIButtonTypeCustom];
    shareSet.frame = CGRectMake(0, 508, 160, 60);
    
    shareSet.backgroundColor=[UIColor whiteColor];
    shareSet.tag =104;
//    [shareSet setBackgroundImage:[UIImage imageNamed:@"ic_xq_share@2x"] forState:UIControlStateNormal];
    [shareSet addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:shareSet];
    
    UIButton *shareSt = [UIButton buttonWithType:UIButtonTypeCustom];
    shareSt.frame = CGRectMake(160,508, 160, 60);
    shareSt.tag =105;
    shareSt.backgroundColor=[UIColor whiteColor];
    [shareSt setBackgroundImage:[UIImage imageNamed:@"ic_xq_share@2x"] forState:UIControlStateNormal];
    [shareSt addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:shareSt];
    
    UIButton *shareAt = [UIButton buttonWithType:UIButtonTypeCustom];
    shareAt.frame = CGRectMake(130, 490, 60, 60);
    shareAt.tag =103;
    [shareAt setBackgroundImage:[UIImage imageNamed:@"night_ico_shopping_cart@2x"] forState:UIControlStateNormal];
    [shareAt addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:shareAt];
    
    webView =[[UIWebView alloc]initWithFrame:CGRectMake(0, 300, 320, 268)];
   
    webView.delegate = self;
    
    [webView loadHTMLString:preferentialClass.data.articleFilterContent baseURL:nil];
    
    [strechy addSubview:webView];
    
    

}

- (void)backBtnClick:(UIButton *)btn
{
    if (btn.tag==100) {
        
        [self.navigationController popViewControllerAnimated:NO];
        
    }else if (btn.tag ==101){
        LogInToRegister *vc =[[LogInToRegister alloc]init];
        
        [self.navigationController pushViewController:vc animated:YES];
        
        
    }else if(btn.tag==102){
        
        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"ShareSDK" ofType:@"png"];
        
        //构造分享内容
        id<ISSContent> publishContent = [ShareSDK content:@"分享内容"
                                           defaultContent:@"测试一下"
                                                    image:[ShareSDK imageWithPath:imagePath]
                                                    title:@"ShareSDK"
                                                      url:@"http://www.mob.com"
                                              description:@"这是一条测试信息"
                                                mediaType:SSPublishContentMediaTypeNews];
        //创建弹出菜单容器
        id<ISSContainer> container = [ShareSDK container];
        
        [container setIPadContainerWithView:btn arrowDirect:UIPopoverArrowDirectionUp];
        
        //弹出分享菜单
        [ShareSDK showShareActionSheet:container
                             shareList:nil
                               content:publishContent
                         statusBarTips:YES
                           authOptions:nil
                          shareOptions:nil
                                result:^(ShareType type, SSResponseState state, id<ISSPlatformShareInfo> statusInfo, id<ICMErrorInfo> error, BOOL end) {
                                    
                                    if (state == SSResponseStateSuccess)
                                    {
                                        NSLog(NSLocalizedString(@"TEXT_ShARE_SUC", @"分享成功"));
                                    }
                                    else if (state == SSResponseStateFail)
                                    {
                                        NSLog(NSLocalizedString(@"TEXT_ShARE_FAI", @"分享失败,错误码:%d,错误描述:%@"), [error errorCode], [error errorDescription]);
                                    }
                                }];
        
    }else if(btn.tag ==103){
        
        NSURL *url=[NSURL URLWithString:self.good.articleLink];
        
        NSURLRequest*urlRequest =[NSURLRequest requestWithURL:url];
        
        
        web =[[UIWebView alloc]init];
        
        [web setScalesPageToFit:NO];
        
        [web loadRequest:urlRequest];
        
        web.delegate =self;
        
        [self.view addSubview:web];
        
        
    }else if (btn.tag ==104){
        
        
        
    }else  if(btn.tag ==105){
        
    }
    
}

- (void)webViewDidFinishLoad:(UIWebView *)aWebView {
    
    CGRect frame = aWebView.frame;
    frame.size.height = 1;
    aWebView.frame = frame;
    CGSize fittingSize = [aWebView sizeThatFits:CGSizeZero];
    frame.size = fittingSize;
    aWebView.frame = frame;
    
    NSLog(@"size: %f, %f", fittingSize.width, fittingSize.height);
    
    webView.frame = CGRectMake(0, 300, 320, fittingSize.height);
    strechy.contentSize = CGSizeMake(320, 568-268+webView.frame.size.height);
    
}

- (UIView *)scrollViewItemWithY:(CGFloat)y andNumber:(int)num {
    
    UIView *view =[[UIView alloc]initWithFrame:CGRectMake(0, 200, 320, 100)];
    
    view.backgroundColor =[UIColor whiteColor];
    
    
    UILabel *things =[[UILabel alloc]initWithFrame:CGRectMake(10,0, 300, 50)];
    
    things.text =self.good.articleTitle;
    
    things.numberOfLines=0;
    
    [view addSubview:things];
    
    UILabel *theRice =[[UILabel alloc]initWithFrame:CGRectMake(10,50, 300, 50)];
    
    theRice.text=self.good.articlePrice;
    
    theRice.textColor=[UIColor redColor];
    
    [view addSubview:theRice];
 
    
    
//    NSLog(@"%@",self.good.articleUrl);
    return view;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
