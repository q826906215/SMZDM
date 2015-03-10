//
//  MiracleTableVC.h
//  SMZDM
//
//  Created by dushuai on 3/9/15.
//  Copyright (c) 2015 布鲁斯.韦恩 . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MiracleTableVC : UIViewController<UIScrollViewDelegate,UITableViewDataSource,UITableViewDelegate>{
    UIScrollView * _scrollViewDown;
    UIScrollView * _scrollViewTop;
    UIView *  _downView ;
    long       _number;
    long        _page;
    
}
@property (nonatomic,retain)UITableView  *publicTable;
@property (nonatomic,retain)NSMutableArray * bigArray;




@end
