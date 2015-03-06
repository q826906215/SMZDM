
//
//  AllTableView.m
//  WhatToBuy
//
//  Created by dushuai on 3/6/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import "AllTableView.h"

@interface AllTableView ()

@end

@implementation AllTableView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   /*
    _seaWashTable=[UITableView new];
    _findTable=[UITableView new];
    _baskTable=[UITableView new];
    _experienceTable=[UITableView new];
    _messageTable=[UITableView new];
    
    _seaWashTable.delegate=self;
    _findTable.delegate=self;
    _baskTable.delegate=self;
    _experienceTable.delegate=self;
    _messageTable.delegate=self;
    
    _seaWashTable.dataSource=self;
    _findTable.dataSource=self;
    _baskTable.dataSource=self;
    _experienceTable.dataSource=self;
    _messageTable.dataSource=self;
    
    _seaWashTable.frame= CGRectMake(0, 140, 375,667);
    _findTable.frame= CGRectMake(0, 140, 375,667);
    _baskTable.frame= CGRectMake(0, 140, 375,667);
    _experienceTable.frame= CGRectMake(0, 140, 375,667);
    _messageTable.frame= CGRectMake(0, 140, 375,667);
    
    [self.view addSubview:_seaWashTable];
    [self.view addSubview:_findTable];
    [self.view addSubview:_baskTable];
    [self.view addSubview:_experienceTable];
    [self.view addSubview:_messageTable];
    */
    
    for (int i = 0; i< 6; i++) {
        _publicTable = [UITableView new];
        _publicTable.frame=CGRectMake(0, 140, 375,667);
        _publicTable.delegate=self;
        _publicTable.dataSource=self;
        _publicTable.tag= i + 50;
        [self.view addSubview:_publicTable];
    }

    
    _dataArray=[NSMutableArray new];
    
    
    
      
    
}

#pragma mark- UITableViewDelegate 

// 海淘
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  _dataArray.count;
}




// 发现



















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
