//
//  TheMainInterface.h
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/5.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModels.h"


@interface TheMainInterface : UIViewController<UIScrollViewDelegate,UITableViewDataSource,UITableViewDelegate>{
    
    ScrollBaseClass  * baseClass;
    
    SelectBaseClass *selectClass;
    
    preferentialBaseClass *preferentialClass;
    
    HaiTaoBaseClass *haiTaoClass;
    
    BaskInContentBaseClass *contentCless;
    
    foundBaseClass *foundClass;
    
    ExperienceBaseClass *experienceCless;
    
    InformationBaseClass *informationClass;
    
    UIButton *ification;
    
    UIScrollView *articleClassification;
    
    UIScrollView *hostInterface;
    
    UIImageView *_markimage;
    
    UITableView *showTable;
    
    UITableView *preferential;
    
    UITableView *haiTao;
    
    UITableView *found;
    
    UITableView *baskinContent;
    
    UITableView *experience;
    
    UITableView *information;
    
    UIPageControl *pageControl;
    
    UIScrollView *hostInterfaceView;
    
    UIRefreshControl *refreshControl;
    UIRefreshControl *refreshControl1;
    UIRefreshControl *refreshControl2;
    UIRefreshControl *refreshControl3;
    UIRefreshControl *refreshControl4;
    UIRefreshControl *refreshControl5;
    UIRefreshControl *refreshControl6;
    
    int yyy;
    int offsetx;
    
}


@end
