//
//  SearchVC.m
//  WhatToBuy
//
//  Created by dushuai on 3/5/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import "SearchVC.h"
#import "ListVC.h"
@interface SearchVC ()

@end

@implementation SearchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   _searchField =[[UITextField alloc] init];
    _searchField.frame =CGRectMake(70, 30, 320-100, 40);
//    _searchField.backgroundColor=[UIColor  lightGrayColor];
    _searchField.backgroundColor=[UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1];
    [_searchField setPlaceholder:@" 🔍  搜索  什么值得买..."];
    [_searchField addTarget:self action:@selector(searchField) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_searchField];
    
    _button =[UIButton buttonWithType:UIButtonTypeCustom];
    [_button  setBackgroundImage:[UIImage imageNamed:@"ic_red_back@2x"] forState:UIControlStateNormal];
    _button.frame = CGRectMake(20 , 33, 20, 25);
    [_button addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button];
    
     _classBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [ _classBtn   setTitle:@"分类筛选" forState:UIControlStateNormal];
    [ _classBtn   setTitleColor:[UIColor redColor] forState:UIControlStateNormal  ];
    [ _classBtn   addTarget:self action:@selector(classClick) forControlEvents:UIControlEventTouchUpInside];
     _classBtn .frame =CGRectMake(20, 80, 80, 30) ;
    [self.view addSubview: _classBtn ];
    
    
    _shopBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [_shopBtn  setTitle:@"商城筛选"  forState:UIControlStateNormal];
    _shopBtn.frame =CGRectMake(130, 80, 80, 30);
    [_shopBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_shopBtn  addTarget:self action:@selector(shopClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_shopBtn];

    _downView =[UIView new];
    _downView.frame =CGRectMake(20, 110, 80, 2);
    _downView.backgroundColor=[UIColor redColor];
    [self.view addSubview:_downView];
    
    [self  hotLable];
    [self  classOption];
    [self  hotOption];
    
}

-(void)searchField
{
    
 
    
}

-(void)classClick
{
    [_classBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [UIView animateWithDuration:0.5 animations:^{
        _downView.frame =CGRectMake(20, 110, 80, 2);

    }];
    [_shopBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}

-(void)shopClick
{
     [_shopBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [_classBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
     [UIView animateWithDuration:0.5 animations:^{
         _downView.frame=CGRectMake(130, 110, 80, 2);
     }];
    
    
}



-(void)backClick
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

//-热门标签

-(void)hotLable
{
    _scrollView =[[UIScrollView alloc] init ];
    _scrollView.frame = CGRectMake(0, 120, 375, 590);
    _scrollView.contentSize =CGSizeMake(375, 880);
    _scrollView.backgroundColor= [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    [self.view addSubview:_scrollView];

    CustomLine*view =[ CustomLine  new];
    view.frame = CGRectMake(0, 0,375  , 800 );
    view.backgroundColor =[UIColor grayColor];
    [_scrollView addSubview:view];
    
    UILabel *hotLab =[[UILabel alloc] init];
    hotLab.text=@"热门标签";
    hotLab.textColor = [UIColor blackColor];
    hotLab.frame=CGRectMake(30, 5, 80, 50);
    [view addSubview:hotLab];

    UILabel *lable =[[UILabel alloc] init];
    lable.text=@"分类筛选" ;
    lable.textColor = [UIColor blackColor];
    lable.frame=CGRectMake(30, 255, 80, 50);
    [_scrollView addSubview:lable];


}

// 添加热门选项

-(void)hotOption
{
    
    int  lie = 3;
    for (int i= 0 ; i<15  ; i++) {
        float  row =  i / lie; //  1
        float  clume = i % lie; // 3 2 1 0
        float   width = 375/3;
        float  height = 100;
        UIButton * optionBtn =[UIButton   buttonWithType:UIButtonTypeSystem];
        optionBtn.tag  =  i+20;
        optionBtn.frame = CGRectMake(clume * width , 300+row * height, width, height);
        [optionBtn addTarget:self action:@selector(clickPic:) forControlEvents:UIControlEventTouchUpInside];
        //[optionBtn setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d@2x",i+1]] forState:UIControlStateNormal];
        
        [_scrollView  addSubview:optionBtn];
        
        UIImageView * imageV =[[UIImageView alloc] init];
        imageV.frame= CGRectMake(50, 30, 25, 25);
        if (i <8 || i==8) {
             imageV.image= [UIImage imageNamed:[NSString stringWithFormat:@"ic_search_0%d@2x",i+1]];
        }
        else{
            imageV.image= [UIImage imageNamed:[NSString stringWithFormat:@"ic_search_%d@2x",i+1]];
        }
       
        [optionBtn addSubview:imageV];
        
        NSArray * array =@[@"电脑数码",@"家用电器",@"运动户外",@"服饰鞋包",@"个护化妆",@"母婴用品",@"日用百货",@"食品保健",@"礼品钟表",@"图书音像",@"玩模乐器",@"办公设备",@"家具家装",@"汽车用品",@"其他分类"];
        UILabel * lab =[[UILabel alloc]init];
        lab.frame = CGRectMake(30, 70, 80, 30);
        lab.text=[array objectAtIndex:i];
        lab.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
        [optionBtn addSubview:lab];
    }
}
// 添加分类选项
- (void)classOption
{
    int  lie = 3;
    for (int i= 0 ; i<4  ; i++) {
        float  row =  i / lie; //  1
        float  clume = i % lie; // 3 2 1 0
        float   width = 375/3;
        float  height = 100;
        UIButton * optionBtn =[UIButton   buttonWithType:UIButtonTypeSystem];
        optionBtn.tag  =  i+ 10;
        optionBtn.frame = CGRectMake(clume * width , 50+row * height, width, height);
       [optionBtn addTarget:self action:@selector(clickPic:) forControlEvents:UIControlEventTouchUpInside];
       
        
        [_scrollView  addSubview:optionBtn];
        
        UIImageView * imageV =[[UIImageView alloc] init];
        imageV.frame= CGRectMake(50, 30, 25, 25);
        imageV.image= [UIImage imageNamed:[NSString stringWithFormat:@"%d@2x",i+1]];
        [optionBtn addSubview:imageV];
        
        NSArray * array =@[@"排行榜",@"白菜党",@"神价格",@"奇葩物"];
        UILabel * lab =[[UILabel alloc]init];
        lab.frame = CGRectMake(40, 70, 60, 30);
        lab.text=[array objectAtIndex:i];
        lab.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
        [optionBtn addSubview:lab];
    }

    
    
}









-(void)clickPic:(UIButton *)sender
{
    
    long  index = sender.tag;
    if (index == 10) {
        ListVC * lvc =[[ListVC alloc] init];
        [self presentViewController:lvc animated:YES completion:nil];
    }
}








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
