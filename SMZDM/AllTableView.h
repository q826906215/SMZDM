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
    //->
    @public
    
    UITableView         *_faborableTable;
    UITableView         *_seaWashTable;
    UITableView         *_findTable;
    UITableView         *_baskTable;
    UITableView         *_experienceTable;
    UITableView         *_messageTable;
    
    NSMutableArray      *_dataArray;
    
}

@property (nonatomic,retain)UITableView  *publicTable;

//@property (nonatomic,)



@end
