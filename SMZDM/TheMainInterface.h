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
    
    ExperienceBaseClass *experienceCless;
    
    InformationBaseClass *informationClass;
    
    UIScrollView *articleClassification;
    
    UIScrollView *hostInterface;
    
    UIImageView *_markimage;
    
    UITableView *showTable;
    
    UITableView *preferential;
    
    UITableView *haiTao;
    
    UITableView *baskinContent;
    
    UITableView *experience;
    
    UITableView *information;
    
    UIPageControl *pageControl;
    
    UIScrollView *hostInterfaceView;
    
    int yyy;
    int offsetx;
    
}

@end
