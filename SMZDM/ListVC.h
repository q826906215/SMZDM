//
//  ListVC.h
//  WhatToBuy
//
//  Created by dushuai on 3/5/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFNetworking.h"
#import "YHcell.h"
#import  "UIImageView+WebCache.h"
@interface ListVC : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView * _table;
    NSArray *  _dataArray;
}
@end
