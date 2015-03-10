//
//  SearchVC.m
//  WhatToBuy
//
//  Created by dushuai on 3/5/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import "SearchVC.h"
#import "ListVC.h"
#import "PriceVC.h"
#import "CabbageVC.h"
#import "MiracleVC.h"
#import "RightViewLine.h"
#import "MiddleViewLine.h"

#import "ShopSelectVC.h"




@interface SearchVC ()
{
    RightViewLine * _rightBg ;
    MiddleViewLine * _midView;
    UIButton *  _middleButton;
    BOOL        _isYES;
    
    BOOL        _isOpen;
    UIButton *  _middleButtonDown;
    RightViewLine * _rightBgDown ;
    MiddleViewLine * _midViewDown;
    UIView * _bgViewDown;
}
@end

@implementation SearchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.automaticallyAdjustsScrollViewInsets=NO;
    
    UIView *aView =[[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    aView.backgroundColor =[UIColor colorWithRed:0.98 green:0.98 blue:0.98 alpha:1];
    [self.view addSubview:aView];
    
    _searchField =[[UITextField alloc] init];
    _searchField.frame =CGRectMake(65, 28, 320-80, 40);
//    _searchField.backgroundColor=[UIColor  lightGrayColor];
    _searchField.backgroundColor=[UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1];
    [_searchField setPlaceholder:@" 🔍  搜索  什么值得买..."];
    [_searchField addTarget:self action:@selector(searchField) forControlEvents:UIControlEventTouchUpInside];
    [aView addSubview:_searchField];
    
    _button =[UIButton buttonWithType:UIButtonTypeCustom];
    [_button  setBackgroundImage:[UIImage imageNamed:@"ic_red_back@2x"] forState:UIControlStateNormal];
    _button.frame = CGRectMake(20 , 33, 20, 25);
    [_button addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    [aView addSubview:_button];
    
     _classBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [ _classBtn   setTitle:@"分类筛选" forState:UIControlStateNormal];
    [ _classBtn   setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [ _classBtn   addTarget:self action:@selector(classClick) forControlEvents:UIControlEventTouchUpInside];
     _classBtn .frame =CGRectMake(20, 80, 80, 30) ;
    [aView addSubview: _classBtn ];
    
    
    _shopBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [_shopBtn  setTitle:@"商城筛选"  forState:UIControlStateNormal];
    _shopBtn.frame =CGRectMake(130, 80, 80, 30);
    [_shopBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_shopBtn  addTarget:self action:@selector(shopClick) forControlEvents:UIControlEventTouchUpInside];
    [aView addSubview:_shopBtn];

    _downView =[UIView new];
    _downView.frame =CGRectMake(20, 117.5, 80, 2.5);
    _downView.backgroundColor=[UIColor redColor];
    [aView addSubview:_downView];
    
   
    
    [self  hotLable];
    [self  classOption];
    [self  hotOption];
    [self  rightShopView];
    
}

-(void)searchField
{
    
 
    
}

-(void)classClick
{
    [_classBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [UIView animateWithDuration:0.5 animations:^{
        _downView.frame =CGRectMake(20, 117.5, 80, 2.5);
       _hoziScrollView.contentOffset= CGPointMake(0, 0);
    }];
    [_shopBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    
    
    
}

-(void)shopClick
{
     [_shopBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [_classBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
     [UIView animateWithDuration:0.5 animations:^{
         _downView.frame=CGRectMake(130, 117.5, 80, 2.5);
          _hoziScrollView.contentOffset = CGPointMake(320, 0);

     }];
    
       
    
    
}



-(void)backClick
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

//-热门标签

-(void)hotLable
{
    _hoziScrollView =[[UIScrollView alloc] initWithFrame:CGRectMake(0, 120, 320, 575-120)];
    _hoziScrollView.contentSize =CGSizeMake(320*2,575-120 );
    
    _hoziScrollView.backgroundColor= [UIColor colorWithRed:0.9 green:0.9     blue:0.9 alpha:1];
    _hoziScrollView.delegate=self;
    _hoziScrollView.pagingEnabled= YES;
    
    [self.view addSubview:_hoziScrollView];
    
    

    
    
    _scrollView =[[UIScrollView alloc] init ];
    _scrollView.frame = CGRectMake(0, 0, 320, 448);
    _scrollView.contentSize =CGSizeMake(320 , 800);
    _scrollView.backgroundColor= [UIColor colorWithRed:0.9 green:0.9     blue:0.9 alpha:1];
    [_hoziScrollView addSubview:_scrollView];

    CustomLine*view =[ CustomLine  new];
    view.frame = CGRectMake(0, 0,320, 800 );
    view.backgroundColor =[UIColor grayColor];
    [_scrollView addSubview:view];
    [view release];
    
    
    UILabel *hotLab =[[UILabel alloc] init];
    hotLab.text=@"热门标签";
    hotLab.textColor = [UIColor blackColor];
    hotLab.frame=CGRectMake(20, 3, 80, 50);
    [_scrollView addSubview:hotLab];
    [hotLab release];

    UILabel *lable =[[UILabel alloc] init];
    lable.text=@"分类筛选" ;
    lable.textColor = [UIColor blackColor];
    lable.frame=CGRectMake(20, 255, 80, 50);
    [_scrollView addSubview:lable];
    [lable release];

}

// 添加热门选项

-(void)hotOption
{
    
    int  lie = 3;
    for (int i= 0 ; i<15  ; i++) {
        float  row =  i / lie; //  1
        float  clume = i % lie; // 3 2 1 0
        float   width = 320/3;
        float  height = 100;
        UIButton * optionBtn =[UIButton   buttonWithType:UIButtonTypeSystem];
        optionBtn.tag  =  i+20;
        optionBtn.frame = CGRectMake(clume * width , 300+row * height, width, height);
        [optionBtn addTarget:self action:@selector(clickPic:) forControlEvents:UIControlEventTouchUpInside];
        //[optionBtn setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d@2x",i+1]] forState:UIControlStateNormal];
        
        [_scrollView  addSubview:optionBtn];
        [optionBtn release];
        
        UIImageView * imageV =[[UIImageView alloc] init];
        imageV.frame= CGRectMake(40, 30, 25, 25);
        if (i <8 || i==8) {
             imageV.image= [UIImage imageNamed:[NSString stringWithFormat:@"ic_search_0%d@2x",i+1]];
        }
        else{
            imageV.image= [UIImage imageNamed:[NSString stringWithFormat:@"ic_search_%d@2x",i+1]];
        }
       
        [optionBtn addSubview:imageV];
        [imageV release];
        
        NSArray * array =@[@"电脑数码",@"家用电器",@"运动户外",@"服饰鞋包",@"个护化妆",@"母婴用品",@"日用百货",@"食品保健",@"礼品钟表",@"图书音像",@"玩模乐器",@"办公设备",@"家具家装",@"汽车用品",@"其他分类"];
        UILabel * lab =[[UILabel alloc]init];
        lab.frame = CGRectMake(15, 70, 80, 30);
        lab.textAlignment =NSTextAlignmentCenter;
        lab.text=[array objectAtIndex:i];
        lab.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
        [optionBtn addSubview:lab];
        
        [lab release];
    }
}
// 添加分类选项
- (void)classOption
{
    int  lie = 3;
    for (int i= 0 ; i<4  ; i++) {
        float  row =  i / lie; //  1
        float  clume = i % lie; // 3 2 1 0
        float   width = 320/3;
        float  height = 100;
        UIButton * optionBtn =[UIButton   buttonWithType:UIButtonTypeSystem];
        optionBtn.tag  =  i + 10;
        optionBtn.frame = CGRectMake(clume * width , 50+row * height, width, height);
       [optionBtn addTarget:self action:@selector(clickPic:) forControlEvents:UIControlEventTouchUpInside];
       
        
        [_scrollView  addSubview:optionBtn];
        [optionBtn release];
        
        
        UIImageView * imageV =[[UIImageView alloc] init];
        imageV.frame= CGRectMake(40, 30, 25, 25);
        imageV.image= [UIImage imageNamed:[NSString stringWithFormat:@"%d@2x",i+1]];
        [optionBtn addSubview:imageV];
        [imageV release];
        
        NSArray * array =@[@"排行榜",@"白菜党",@"神价格",@"奇葩物"];
        UILabel * lab =[[UILabel alloc]init];
        lab.frame = CGRectMake(23, 70, 60, 30);
        lab.textAlignment =NSTextAlignmentCenter;
        lab.text=[array objectAtIndex:i];
        lab.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
        [optionBtn addSubview:lab];
        [lab release];
    }

    
    
}

-(void)clickPic:(UIButton *)sender
{
    
    long  index = sender.tag;

    if (index==11) {
        CabbageVC * cvc =[[CabbageVC alloc] init];
        [self  presentViewController:cvc animated:YES completion:nil];
        [cvc release];
    }
    
    
    if (index==12) {

        PriceVC * pvc =[[PriceVC alloc]init];
        [self presentViewController:pvc animated:YES completion:nil];
        [pvc release];
    }
    
    if (index==13) {
        MiracleVC * mvc =[MiracleVC new];
        [self presentViewController:mvc animated:YES completion:nil];
        [mvc release];
    }
    
    
    
    if ((index >=20 &&  index <=35) || index ==10) {
        
        NSLog(@"--------%ld",index);
        [[NSUserDefaults standardUserDefaults] setFloat:sender.tag  forKey:@"button"];
        
        
        ListVC * lvc =[[ListVC alloc] init];
        [self presentViewController:lvc animated:YES completion:nil];
        [lvc release];
}
    
    
    
    
    
}


#pragma mark -

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    int page = _hoziScrollView.contentOffset.x /320;
    
    [UIView animateWithDuration:0.2 animations:^{
        _downView.frame = CGRectMake(20+ page *110, 117.5, 80, 2.5);
    }];
    
    if (page==0) {
        [_classBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_shopBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }else
    {
        [_shopBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_classBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
    }
    
    
    
}

//-----------商城筛选 UI
-(void)rightShopView
{
    _rightScrollView = [UIScrollView new];
    _rightScrollView.frame = CGRectMake(320 , 0, 320, 575-120);
    _rightScrollView.contentSize= CGSizeMake(320, 1200);
    
//    _rightScrollView.backgroundColor=[UIColor redColor];
    [_hoziScrollView addSubview:_rightScrollView];
    
    
    
    //---------上半部分－－
    
    
      RightViewLine*rightBg = [RightViewLine new];
    rightBg.frame = CGRectMake(0, 0, 320, 350);
    [_rightScrollView addSubview:rightBg];
    [rightBg release];
    
    UILabel * titleLab =[UILabel new];
    titleLab.frame = CGRectMake(5, 0, 100, 50);
    titleLab.text= @"国内商城";
    titleLab.textColor=[UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1];
    [titleLab setFont: [UIFont systemFontOfSize:20]];
    [rightBg addSubview:titleLab];
    
    _midView =[[MiddleViewLine alloc ] initWithFrame:CGRectMake(0, 350, 320, 200)];
    [_rightScrollView addSubview:_midView];

    

    _middleButton =[UIButton buttonWithType:UIButtonTypeCustom];
    [_middleButton setTitle:@"点击收起" forState:UIControlStateNormal];
    [_middleButton addTarget:self action:@selector(addClick) forControlEvents:UIControlEventTouchUpInside];
      [_middleButton  setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _middleButton.backgroundColor=[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    _middleButton.frame = CGRectMake(0,550, 320, 50);
    [_rightScrollView addSubview:_middleButton];
    
    
    
    
    
    for (int i = 0; i < 6; i++) {
        int lie = 3 ;
        float row = i / lie;
        float colum = i % lie;
        float  width = 320/3 ;
        
        UIButton  * bgBtn = [UIButton  buttonWithType:UIButtonTypeCustom];
        bgBtn.frame = CGRectMake( colum * width , row *  100 , width, 100);
        
        bgBtn.tag = i + 1009;
        [bgBtn addTarget:self action:@selector(requestClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [_midView addSubview:bgBtn];
        
        
        
        NSArray * midArray = @[@"国美在线",@"当当",@"优购网",@"沱沱工社",@"健一网",@"新蛋中国"];
        
        UILabel * lab =[[UILabel alloc]init];
        lab.frame = CGRectMake(11, 70, 90, 30);
        lab.textAlignment =NSTextAlignmentCenter;
        lab.text=[midArray objectAtIndex:i];
        lab.textColor= [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
        [bgBtn addSubview:lab];
        [lab release];

        
    }
    
    
    int lie = 3 ;
    for (int i = 0; i < 9; i++) {
        float row = i / lie;
        float colum = i % lie;
        float  width = 320/3 ;
        
        UIButton  * bgBtn = [UIButton  buttonWithType:UIButtonTypeCustom];
        bgBtn.frame = CGRectMake( colum * width  , row *  100 + 50 , width, 100);
        bgBtn.tag = i + 1000;
        [bgBtn addTarget:self action:@selector(requestClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [rightBg addSubview:bgBtn];
        [bgBtn release];
        
        NSArray * upTitleArray = @[@"京东",@"天猫精选",@"亚马逊中国",@"苏宁易购",@"1号店",@"顺丰优选",@"中粮我买网",@"淘宝精选",@"易迅网"];
      
        UILabel * lab =[[UILabel alloc]init];
        lab.frame = CGRectMake(11, 70, 90, 30);
        lab.textAlignment =NSTextAlignmentCenter;
        lab.text=[upTitleArray objectAtIndex:i];
        lab.textColor= [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
        [bgBtn addSubview:lab];
        [lab release];
        
    }

    
    
    
    
    
    
    
    //------下半部分－－－－－
    
   _bgViewDown = [[UIView alloc] init];
    _bgViewDown.frame = CGRectMake(0, 600, 320, 600);
    _bgViewDown.backgroundColor =[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    [_rightScrollView addSubview:_bgViewDown];
    
    
    RightViewLine*rightBgDown = [RightViewLine new];
    rightBgDown.frame = CGRectMake(0, 0, 320, 350);
    [_bgViewDown addSubview:rightBgDown];
    [rightBgDown release];
    
    UILabel * titleLabDown=[UILabel new];
    titleLabDown.frame = CGRectMake(5, 0, 100, 50);
    titleLabDown.text= @"国外商城";
    titleLabDown.textColor=[UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1];
    [titleLabDown setFont: [UIFont systemFontOfSize:20]];
    [_bgViewDown addSubview:titleLabDown];
    [titleLabDown release];
    
    
    
    
    
    _midViewDown =[[MiddleViewLine alloc ] initWithFrame:CGRectMake(0, 350, 320, 200)];
    [_bgViewDown addSubview:_midViewDown];
    
    
    
    _middleButtonDown =[UIButton buttonWithType:UIButtonTypeCustom];
    [_middleButtonDown setTitle:@"点击收起" forState:UIControlStateNormal];
    [_middleButtonDown addTarget:self action:@selector(openClick) forControlEvents:UIControlEventTouchUpInside];
    [_middleButtonDown  setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _middleButtonDown.backgroundColor=[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    _middleButtonDown.frame = CGRectMake(0,550, 320, 50);
    [_bgViewDown addSubview:_middleButtonDown];
    
    UIView * lineV =[UIView new];
    lineV.frame = CGRectMake(0, 40, 320, 1);
    lineV.backgroundColor=[UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1];
    [_middleButtonDown addSubview: lineV];
    
    
    
    
    
    _upAView = [UIView  new];
    _upAView.frame = CGRectMake(0,600 , 320,200 );
    _upAView.backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    [_bgViewDown addSubview:_upAView];


//
    for (int i = 0; i < 6; i++) {
        int lie = 3 ;
        float row = i / lie;
        float colum = i % lie;
        float  width = 320/3 ;
        
        UIButton  * bgBtn = [UIButton  buttonWithType:UIButtonTypeCustom];
        bgBtn.frame = CGRectMake( colum * width, row *100 , width, 100);
        
        bgBtn.tag = i + 1024;
        [bgBtn addTarget:self action:@selector(requestClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [_midViewDown addSubview:bgBtn];
        [bgBtn release];
        
        NSArray * midArray = @[@"REI",@"druastore",@"Joe's NB Outlet.chls",@"德国亚马逊",@"JOMASHOP",@"TheWatchery",];

        
        UILabel * lab =[[UILabel alloc]init];
        lab.frame = CGRectMake(11, 70, 90, 30);
        lab.textAlignment =NSTextAlignmentCenter;
        lab.text=[midArray objectAtIndex:i];
        lab.adjustsFontSizeToFitWidth=YES;
        lab.textColor= [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
        [bgBtn addSubview:lab];
        [lab release];

        
        
        
        
        
    }
    
    
    
    for (int i = 0; i < 9; i++) {
        int lie = 3 ;
        float row = i / lie;
        float colum = i % lie;
        float  width = 320/3 ;
        
        UIButton  * bgBtn = [UIButton  buttonWithType:UIButtonTypeCustom];
        bgBtn.frame = CGRectMake( colum * width, row *  100 +50 , width, 100);
        
        bgBtn.tag = i + 1015;
        [bgBtn addTarget:self action:@selector(requestClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [rightBgDown addSubview:bgBtn];
        [bgBtn release];;
        
        
        
        NSArray * midArray = @[@"美国亚马逊",@"日本亚马逊",@"ebay",@"6PM",@"STP",@"Ashford",@"woot",@"GNCC美国官网",@"MYHABIT"];
        
        UILabel * lab =[[UILabel alloc]init];
        lab.frame = CGRectMake(0, 70, 100, 30);
        lab.textAlignment =NSTextAlignmentCenter;
        lab.text=[midArray objectAtIndex:i];
        lab.textColor= [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
        [bgBtn addSubview:lab];
        [lab release];

        

        
    }

    
    
    
}

-(void)addClick
{
    
    
    if (!_isYES)
    {
        [UIView animateWithDuration:0.5 animations:^{
            _midView.frame = CGRectMake(0, 350, 320, 0);
            _middleButton.frame = CGRectMake(0, 350, 320, 50);
            _bgViewDown.frame = CGRectMake(0, 400, 320, 600);
             [_middleButton setTitle:@"查看更多国内商城" forState:UIControlStateNormal];

       }];
    }
    else
    {
        [UIView animateWithDuration:0.5 animations:^{
         _midView.frame = CGRectMake(0, 350, 320, 200);
        _middleButton.frame = CGRectMake(0, 550, 320, 50);
            _bgViewDown.frame = CGRectMake(0, 600, 320, 600);
              [_middleButton setTitle:@"点击收起" forState:UIControlStateNormal];
           
        }];

    }
     _isYES = !_isYES;

}

-(void)openClick
{
    
    
    if (!_isOpen)
    {
        [UIView animateWithDuration:0.5 animations:^{
            
            _midViewDown.frame = CGRectMake(0, 350, 320, 0);
            
            _middleButtonDown.frame = CGRectMake(0, 350, 320, 50);
           
      [_middleButtonDown setTitle:@"查看更多国外商城" forState:UIControlStateNormal];
            
            _upAView.frame = CGRectMake(0, 400 , 320, 200);
            
        }];
    }
    else
    {
        [UIView animateWithDuration:0.5 animations:^{
            
               _upAView.frame = CGRectMake(0, 600, 320, 200);
            _midViewDown.frame = CGRectMake(0, 350, 320, 200);
            _middleButtonDown.frame = CGRectMake(0, 550, 320, 50);
            

              [_middleButtonDown setTitle:@"点击收起" forState:UIControlStateNormal];
                        
            
        }];
        
    }
    _isOpen = !_isOpen;
    
}
//---------请求
-(void)requestClick:(UIButton *)sender
{
    NSLog(@"---商城");
   long  index = sender.tag;
    NSLog(@"-----%ld",index);
    if (index >=1000 &&index <=1029)
    {
        [[NSUserDefaults standardUserDefaults] setFloat:index forKey:@"upButton"];
        
        ShopSelectVC * vc =[ShopSelectVC new];
       [self presentViewController:vc animated:YES completion:nil];
      
    }
    
    
    
}



-(void)dealloc
{
    
    [_button release];
    [_classBtn release];
    [_shopBtn release];
    [_downView release];
    [_searchField release];
    [_scrollView release];
    
    [super dealloc];
    
    
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
