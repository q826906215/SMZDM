//
//  SelectSt.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/10.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "SelectSt.h"

#import "Network.h"
#import <AFNetworking.h>
#import "StrechyParallaxScrollView.h"
#import "InterfBaseClass.h"
#import <UIImageView+WebCache.h>
#import "LogInToRegister.h"

@interface SelectSt ()
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

@implementation SelectSt

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor =[UIColor whiteColor];
    
    [Network getFistPageSelectDataWithGoodsID:self.good.articleId CompletionBlock:^(NSDictionary *dic) {
        preferentialClass =[InterfBaseClass modelObjectWithDictionary:dic];
        
        [webView loadHTMLString:preferentialClass.data.articleFilterContent baseURL:nil];

    }];
    
    CGFloat width = [[UIScreen mainScreen] bounds].size.width;
    
    _imageBG = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, width,300)];
    
    [_imageBG sd_setImageWithURL:[NSURL URLWithString:self.good.bannerPic]];
    
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
    
    theNameThe.text=preferentialClass.data.articleMall;
    
    theNameThe.textColor=[UIColor whiteColor];
    
    theNameThe.font=[UIFont systemFontOfSize:13];
    
    [strechy addSubview:theNameThe];
    
    UILabel *theNameOfThe=[[UILabel alloc]initWithFrame:CGRectMake(50, 175, 170, 20)];
    
    theNameOfThe.text =[NSString stringWithFormat:@"推荐人: %@",preferentialClass.data.articleReferrals];
    
    theNameOfThe.textColor=[UIColor whiteColor];
    
    theNameOfThe.font=[UIFont systemFontOfSize:13];
    
    [strechy addSubview:theNameOfThe];
    
    
    UILabel *time =[[UILabel alloc]initWithFrame:CGRectMake(270, 175, 40, 20)];
    
    time.text =preferentialClass.data.articleFormatDate;
    
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
    
    webView =[[UIWebView alloc]initWithFrame:CGRectMake(0, 300, 320, 268)];
    
    webView.delegate = self;
    
    [webView loadHTMLString:preferentialClass.data.articleFilterContent baseURL:nil];
    
    [strechy addSubview:webView];
    

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
    
    
    UILabel *things =[[UILabel alloc]initWithFrame:CGRectMake(0,0, 320, 50)];
    
    things.backgroundColor =[UIColor blackColor];
    
    [view addSubview:things];
    
    UILabel *theRice =[[UILabel alloc]initWithFrame:CGRectMake(0,50, 320, 50)];
    
    theRice.backgroundColor =[UIColor blueColor];
    
    [view addSubview:theRice];
    
    
    
    //    NSLog(@"%@",self.good.articleUrl);
    return view;
}



- (void)backBtnClick:(UIButton *)btn
{
    if (btn.tag==100) {
        
        [self.navigationController popViewControllerAnimated:NO];
        
    }else if (btn.tag ==101){
        
        NSLog(@"wwwww");
        LogInToRegister *vc =[[LogInToRegister alloc]init];
        
        [self.navigationController pushViewController:vc animated:YES];
        
        
    }else{
        
    }
    
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
