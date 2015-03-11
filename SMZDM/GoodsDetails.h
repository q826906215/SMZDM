//
//  GoodsDetails.h
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/9.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModels.h"

@interface GoodsDetails : UIViewController<UIScrollViewDelegate,UIWebViewDelegate>
{
    PrefeBaseClass *preferentialClass;
    
    UIWebView *webView;
    UIWebView * web;
    
    UITableView *tableViewdo;

}
@property (nonatomic, retain)preferentialRows *good;

@end
