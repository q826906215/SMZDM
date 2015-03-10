//
//  AllTableView.h
//  WhatToBuy
//
//  Created by dushuai on 3/6/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AllTableView : UIViewController<UIScrollViewDelegate,UITableViewDataSource,UITableViewDelegate>
{
//    //->
//    @public
//    
//    UITableView         *_faborableTable;
    UIScrollView * _scrollViewDown;
    UIScrollView * _scrollViewTop;
    UIView *  _downView ;
    long       _number;
    long        _page;
    
 }

@property (nonatomic,retain)UITableView  *publicTable;


@property (nonatomic,retain)NSMutableArray * bigArray;



-(void)sendRequest  ;



@end