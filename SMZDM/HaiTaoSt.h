//
//  HaiTaoSt.h
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/10.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModels.h"


@interface HaiTaoSt : UIViewController<UIScrollViewDelegate,UIWebViewDelegate>{
    
    HaiBaseClass *preferentialClass;
    
    UIWebView *webView;
    
    UITableView *tableViewdo;
    
}

@property (nonatomic, retain)HaiTaoRows *good;

@end
