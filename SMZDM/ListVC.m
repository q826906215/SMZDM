


//
//  ListVC.m
//  WhatToBuy
//
//  Created by dushuai on 3/5/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import "ListVC.h"
#import "AllTableView.h"
@interface ListVC ()

@end

@implementation ListVC



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    AllTableView * tableView =[[AllTableView alloc] init];
    
    [self addChildViewController:tableView];
    
    [self.view addSubview:tableView.view];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
