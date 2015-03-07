


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
    
<<<<<<< HEAD
=======
    NSDictionary * dataDic =  _dataArray[indexPath.row];
    NSString * strPic =[dataDic  objectForKey:@"article_pic"];
    [cell.leftImage  sd_setImageWithURL:[NSURL URLWithString:strPic] ];
    cell.leftLab.text = [dataDic objectForKey:@"article_mall"];
    cell.rightLab.text =[dataDic objectForKey:@"article_format_date"];
    cell.middleLab.text =[dataDic objectForKey:@"article_title"];
    cell.thirdRowLab.text=[dataDic objectForKey:@"article_price"];
    cell.downLab.text =[dataDic objectForKey:@"article_comment"];
    return cell;
>>>>>>> origin/master
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
