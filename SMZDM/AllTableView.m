
//
//  AllTableView.m
//  WhatToBuy
//
//  Created by dushuai on 3/6/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import "AllTableView.h"
#import "YHcell.h"
#import "NetworkTool.h"


@interface AllTableView ()

@end

@implementation AllTableView


-(void)viewWillAppear:(BOOL)animated
{
    [NetworkTool  getDayListIndex:0 CompletionBlock:^(NSDictionary *dic) {
        NSDictionary * dataDic = dic;
        _dataArray = [[[dataDic objectForKey:@"data"] objectForKey:@"rows"] retain];
        UITableView * table = (UITableView *)[self.view viewWithTag:_number+50];
        [table  reloadData];
        
    }];
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
      [self downView];

    for (int i = 0; i< 6; i++) {
        _publicTable = [[UITableView alloc] initWithFrame:CGRectMake(i * 320, 0, 320,575-101) style:UITableViewStylePlain];
        _publicTable.delegate=self;
        _publicTable.dataSource=self;
        _publicTable.tag= i + 50;
        [_scrollViewDown addSubview:_publicTable];
        
        [_publicTable registerClass:[YHcell class] forCellReuseIdentifier:@"cell"];
        
    }
    
    _dataArray=[NSMutableArray new];
    // ---top UI
       [self topView];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(gotoRequest) name:@"requestData"  object:nil];
  
}

-(void)gotoRequest
{
    [NetworkTool  getDayListIndex:_number CompletionBlock:^(NSDictionary *dic) {
        NSDictionary * dataDic = dic;
        _dataArray = [[[dataDic objectForKey:@"data"] objectForKey:@"rows"] retain];
        //--
        UITableView * table = (UITableView *)[self.view viewWithTag:_number+50];
        [table  reloadData];
             NSLog(@"----numbt ======= %d",_number); 
    }];

    NSLog(@"----numbt  %d",_number);
    
}





#pragma mark- UITableViewDelegate 

//
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (_number==2) {
        return _dataArray.count/2;
    }
    
    
    return  _dataArray.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    YHcell * cell  =[_publicTable dequeueReusableCellWithIdentifier:@"cell"];
    
    
    [cell getDayList:_number dataArray:_dataArray indexRow:indexPath.row];
    
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (_number==2) {
        return 250;
    }else if (_number==3)
    {
        return 200;
    }else if (_number==4 ||_number==5)
    {
        return 190;
    }
    else
    {
    return 135;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [_publicTable deselectRowAtIndexPath:indexPath  animated:NO];
    
}



//-------------top UI
-(void)topView
{
    
    UIView * aView =[[UIView alloc]init];
    aView.frame = CGRectMake(0, 0, 320, 100);
    [aView  setBackgroundColor:[UIColor  whiteColor]];
    [self.view addSubview:aView];
    
    UIButton * button =[UIButton buttonWithType:UIButtonTypeSystem];
    [button  setBackgroundImage:[UIImage imageNamed:@"ic_red_back@2x"] forState:UIControlStateNormal];
    button.frame = CGRectMake(20 , 30, 20, 25);
    [button addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    [aView addSubview:button];
    
    UILabel * lab =[[UILabel alloc] init];
    lab.text  = @"日排行";
    [lab setFont:[UIFont systemFontOfSize:25]];
    lab.frame = CGRectMake(120, 30,100 , 25);
    [aView addSubview:lab] ;
    
    UIScrollView * scrollView =[[UIScrollView alloc] init];
    scrollView.frame = CGRectMake(0, 60, 320,40 );
    scrollView.contentSize = CGSizeMake(400, 40);
    scrollView.showsHorizontalScrollIndicator=NO;
    //    scrollView.backgroundColor =[UIColor grayColor];
    [aView addSubview: scrollView];
    
    NSArray * array =@[@"优惠",@"海淘",@"发现",@"晒物",@"经验",@"资讯"];
    int lie = 6;
    for (int i= 0; i < 6; i++) {
        int    width = 40;
        float  colum = i% 6;
        
        float  interval =  (400 - width* lie)/lie;
        
       UIButton* btnList =[UIButton buttonWithType:UIButtonTypeSystem];
        btnList .frame =CGRectMake( 10+colum * (width+interval), 5, width, 40);
        [btnList.titleLabel setFont:[UIFont systemFontOfSize:20]];
        btnList.tag = i+ 100;
       
        [btnList addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        
        [btnList setTitle:[array objectAtIndex:i] forState:UIControlStateNormal];
        if (i==0) {
            [btnList setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        }else
        {
            [btnList setTitleColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1] forState:UIControlStateNormal];
        }
        
        [scrollView addSubview:btnList];
    }
    
    _downView =[[UIView alloc] init];
    _downView.frame = CGRectMake(10, 38, 40, 2);
    _downView.backgroundColor =[UIColor redColor];
    [scrollView addSubview:_downView];
    
    UIView * lineView=[UIView new];
    lineView.frame = CGRectMake(0,100 , 320, 1);
    lineView.backgroundColor =[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    [aView addSubview:lineView];
    
}


-(void)downView
{
    _scrollViewDown =[[UIScrollView alloc] init];
    _scrollViewDown.frame =CGRectMake(0, 101, 320,575-101 );
     _scrollViewDown.contentSize = CGSizeMake(320*6, 575-101);
    _scrollViewDown.backgroundColor=[UIColor grayColor];
    [self.view addSubview:_scrollViewDown];

}

// 小scrollView 选择
-(void)clickBtn:(UIButton*)sender
{
    int   index = sender.tag-100;
    _scrollViewDown.contentOffset = CGPointMake(index * 320, 0);
    [UIView animateWithDuration:0.5 animations:^{
        _downView.frame =CGRectMake(index* (160/6+40) + 10, 38, 40, 2);
    }];
    for (int i=0; i<6; i++)
    {
        UIButton * btn =(UIButton *)[self.view viewWithTag:i + 100];
        
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:btn.tag] forKey:@"tag"];
        
        if (sender.tag ==btn.tag) {
            [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        }
        else
        {
            [btn setTitleColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1] forState:UIControlStateNormal];
        }
    }
    
    _number=index;
    NSLog(@"--3333-----%d",_number);
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"requestData" object:self userInfo:nil];
    

}




-(void)backClick
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
