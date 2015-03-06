


//
//  ListVC.m
//  WhatToBuy
//
//  Created by dushuai on 3/5/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import "ListVC.h"

@interface ListVC ()

@end

@implementation ListVC

-(void )viewWillAppear:(BOOL)animated
{
    //  请求数据－－－－－－－
     NSString * url =[NSString stringWithFormat:@"http://api.smzdm.com/v1/youhui/articles?imgmode=0&f=iphone&s=54f96cdacdb53897493&filter=hot_1&limit=20&offset=0"];
    AFHTTPSessionManager * manager =[AFHTTPSessionManager manager] ;
    
    [manager GET:url parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        // -----retain ---不然数组被释放；
        _dataArray =[[[responseObject objectForKey:@"data"] objectForKey:@"rows"] retain];
        NSLog(@"-======3--%@",_dataArray);
        [_table reloadData];
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
         NSLog(@"--错--");
    }];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // -----注意table 的高度设置与显示的一样高；
    _table = [[UITableView alloc] initWithFrame:CGRectMake(0, 140, 375,667-140) style:UITableViewStylePlain];
    _table.delegate =self;
    _table.dataSource=self;
    _table.rowHeight = 135 ;
    [self.view addSubview:_table];
    [_table registerClass:[YHcell class] forCellReuseIdentifier:@"cell"];
    [self topView];
}
// -------数据
-(void)clickBtn: (UIButton* )sender
{
    
}
-(void)backClick
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)topView
{
    
    UIView * aView =[[UIView alloc]init];
    aView.frame = CGRectMake(0, 0, 375, 140);
    [aView  setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:aView];
    
    UIButton * button =[UIButton buttonWithType:UIButtonTypeSystem];
    [button  setBackgroundImage:[UIImage imageNamed:@"ic_red_back@2x"] forState:UIControlStateNormal];
    button.frame = CGRectMake(20 , 40, 25 , 30);
    [button addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    [aView addSubview:button];
    
    UILabel * lab =[[UILabel alloc] init];
    lab.text  = @"日排行";
    [lab setFont:[UIFont systemFontOfSize:30]];
    lab.frame = CGRectMake(120, 40,100 , 30);
    [aView addSubview:lab] ;
    
    UIScrollView * scrollView =[[UIScrollView alloc] init];
    scrollView.frame = CGRectMake(0, 100, 375,40 );
    scrollView.contentSize = CGSizeMake(395, 40);
    scrollView.showsHorizontalScrollIndicator=NO;
    //    scrollView.backgroundColor =[UIColor grayColor];
    [aView addSubview: scrollView];
    
    
    NSArray * array =@[@"优惠",@"海淘",@"发现",@"晒物",@"经验",@"资讯"];
    
    int lie = 6;
    for (int i= 0; i < 6; i++) {
        int    width = 40;
        float  colum = i% 6;
        
        float  interval =  (400 - width* lie)/lie;
        
        UIButton * btn =[UIButton buttonWithType:UIButtonTypeSystem];
        btn .frame =CGRectMake( 10+colum * (width+interval), 5, width, 40);
        [btn.titleLabel setFont:[UIFont systemFontOfSize:20]];
        btn.tag = i+ 100;
        [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        
        [btn setTitle:[array objectAtIndex:i] forState:UIControlStateNormal];
        if (i==0) {
            [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        }else
        {
            [btn setTitleColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1] forState:UIControlStateNormal];
        }
        
        [scrollView addSubview:btn];
        
    }
    
    UIView *  downView =[[UIView alloc] init];
    downView.frame = CGRectMake(10, 38, 40, 2);
    downView.backgroundColor =[UIColor redColor];
    [scrollView addSubview:downView];
    
    UIView * lineView=[UIView new];
    lineView.frame = CGRectMake(0,140 , 380, 1);
    lineView.backgroundColor =[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    [aView addSubview:lineView];
    
}

#pragma mark - UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArray.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
       YHcell * cell =[_table  dequeueReusableCellWithIdentifier:@"cell"];
    
    NSDictionary * dataDic =  _dataArray[indexPath.row];
    NSString * strPic =[dataDic  objectForKey:@"article_pic"];
    [cell.leftImage  setImageWithURL:[NSURL URLWithString:strPic] ];
    cell.leftLab.text = [dataDic objectForKey:@"article_mall"];
    cell.rightLab.text =[dataDic objectForKey:@"article_format_date"];
    cell.middleLab.text =[dataDic objectForKey:@"article_title"];
    cell.thirdRowLab.text=[dataDic objectForKey:@"article_price"];
    cell.downLab.text =[dataDic objectForKey:@"article_comment"];
    return cell;
}

#pragma mark - UITableViewDelegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 135;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [_table deselectRowAtIndexPath:indexPath animated:NO];
}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
