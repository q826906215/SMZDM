//
//  AllTableView.h
//  WhatToBuy
//
//  Created by dushuai on 3/6/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AllTableView : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
//    //->
//    @public
//    
//    UITableView         *_faborableTable;
    UIScrollView * _scrollViewDown;
    UIView *  _downView ;
    int       _number;
    
 }

@property (nonatomic,retain)UITableView  *publicTable;

@property (nonatomic,retain)NSMutableArray * dataArray;



@end
