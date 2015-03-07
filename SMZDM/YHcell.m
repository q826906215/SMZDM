




//
//  YHcell.m
//  WhatToBuy
//
//  Created by dushuai on 3/5/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import "YHcell.h"
#import "UIImageView+WebCache.h"
#import "MiddleLine.h"
@implementation YHcell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:@"cell"];
    if (self)
    {
        }
    
    return self;
}


// 所有UI布局；
-(void)getDayList:(NSInteger)sender dataArray:(NSArray*)arr  indexRow:(NSInteger)indexPath {
     
   
    int index = sender;
    NSLog(@"----------index------ %d",sender);
    if (index==0)
    {
        NSLog(@"cell-------");
        [self getViewYouHui];
         NSDictionary * dataDic = arr[indexPath];
         NSString * strPic =[dataDic  objectForKey:@"article_pic"];
        [_leftImage  setImageWithURL:[NSURL URLWithString:strPic] ];
         _leftLab.text = [dataDic objectForKey:@"article_mall"];
        _rightLab.text =[dataDic objectForKey:@"article_format_date"];
        self.middleLab.text =[dataDic objectForKey:@"article_title"];
        self.thirdRowLab.text=[dataDic objectForKey:@"article_price"];
        self.downLab.text =[dataDic objectForKey:@"article_comment"];
    }
    else if (index==1) 
    {
        [self getViewYouHui];
        NSDictionary * dataDic = arr[indexPath];
        NSString * strPic =[dataDic  objectForKey:@"article_pic"];
        [_leftImage  setImageWithURL:[NSURL URLWithString:strPic] ];
        _leftLab.text = [dataDic objectForKey:@"article_mall"];
        _rightLab.text =[dataDic objectForKey:@"article_format_date"];
        self.middleLab.text =[dataDic objectForKey:@"article_title"];
        self.thirdRowLab.text=[dataDic objectForKey:@"article_price"];
        self.downLab.text =[dataDic objectForKey:@"article_comment"];
    }
    else if( index ==2)
    {
        [self getViewFind];
        NSDictionary * dataDic = arr[indexPath*2];
         //--左边
         NSString * strPic =[dataDic  objectForKey:@"article_pic"];
        [_leftImage  setImageWithURL:[NSURL URLWithString:strPic] ];
        _leftLab.text = [dataDic objectForKey:@"article_mall"];
        _rightLab.text =[dataDic objectForKey:@"article_format_date"];
        self.middleLab.text =[dataDic objectForKey:@"article_title"];
        self.thirdRowLab.text=[dataDic objectForKey:@"article_price"];
        self.downLab.text =[dataDic objectForKey:@"article_comment"];
        // --右边
            NSDictionary * dataDic1= arr[indexPath*2+1];
            NSString * strPic1 =[dataDic1  objectForKey:@"article_pic"];
            [_leftImageR  setImageWithURL:[NSURL URLWithString:strPic1] ];
            _leftLabR.text = [dataDic1 objectForKey:@"article_mall"];
            _rightLabR.text =[dataDic1 objectForKey:@"article_format_date"];
            self.middleLabR.text =[dataDic1 objectForKey:@"article_title"];
            self.thirdRowLabR.text=[dataDic1 objectForKey:@"article_price"];
            self.downLabR.text =[dataDic1 objectForKey:@"article_comment"];
             
    }
    else if( index==3)
    {
        [self getViewBask];
        
        NSDictionary * dataDic = arr[indexPath];
        NSString * strPic =[dataDic  objectForKey:@"article_pic"];
        [_leftImage  setImageWithURL:[NSURL URLWithString:strPic]];
        _userLab.text =[dataDic  objectForKey:@"article_referrals"];
        self.middleLab.text =[dataDic objectForKey:@"article_title"];
        self.downLab.text =[dataDic objectForKey:@"article_comment"];
        
        
    }
    else if( index==4)
    {
        [self getInformation];
        
        NSDictionary * dataDic = arr[indexPath];
        NSString * strPic =[dataDic  objectForKey:@"article_pic"];
        [_leftImage  setImageWithURL:[NSURL URLWithString:strPic] ];
        _leftLab.text = [dataDic objectForKey:@"article_mall"];
        _rightLab.text =[dataDic objectForKey:@"article_format_date"];
        self.filterLab.text =[dataDic objectForKey:@"article_filter_content"];
        self.downLab.text =[dataDic objectForKey:@"article_comment"];
        
        
        
        self.middleLab.text =[dataDic objectForKey:@"article_title"];

        
    }
    else if( index==5)
    {
        [self getInformation];
        
        NSDictionary * dataDic = arr[indexPath];
        NSString * strPic =[dataDic  objectForKey:@"article_pic"];
        [_leftImage  setImageWithURL:[NSURL URLWithString:strPic] ];
        _leftLab.text = [dataDic objectForKey:@"article_mall"];
        _rightLab.text =[dataDic objectForKey:@"article_format_date"];
        self.filterLab.text =[dataDic objectForKey:@"article_filter_content"];
        self.downLab.text =[dataDic objectForKey:@"article_comment"];
        
        
        
        self.middleLab.text =[dataDic objectForKey:@"article_title"];
        
        
        NSLog(@"---------------789");
        
    }

}


// 优惠 海淘 UI
-(void)getViewYouHui
{
    _leftImage =[UIImageView  new];
    _leftImage.frame = CGRectMake(5, 10, 100, 105);
    [[self contentView] addSubview:_leftImage];
    
    
    _leftLab =[UILabel new];
    _leftLab.frame = CGRectMake(110, 8, 90, 20);
    _leftLab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
    [[self contentView] addSubview:_leftLab];
    
    _rightLab =[UILabel new];
    _rightLab.frame = CGRectMake(250, 8, 50, 20);
    _rightLab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
    [[self contentView] addSubview:_rightLab];
    
    _middleLab =[UILabel new];
    _middleLab.frame = CGRectMake(110, 30, 200, 55);
    [_middleLab setFont:[UIFont systemFontOfSize:20]];
    _middleLab.numberOfLines=2;
    [[self contentView] addSubview:_middleLab];
    
    _thirdRowLab=[UILabel  new];
    _thirdRowLab.frame =CGRectMake(110, 85, 110, 25);
    [_thirdRowLab setFont:[UIFont systemFontOfSize:18]];
    
    [_thirdRowLab setTextColor:[UIColor redColor]];
    [_thirdRowLab setEnabled:false];
    [[self  contentView]addSubview:_thirdRowLab];
    
    _smallImage =[UIImageView new];
    _smallImage.frame = CGRectMake(105, 110, 25, 20);
    _smallImage.image =[UIImage imageNamed:@"ic_no_comment@2x"];
    [[self contentView] addSubview:_smallImage];
    
    _downLab =[[UILabel alloc]  init];
    _downLab.frame =CGRectMake(135, 110, 30, 20);
    _downLab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
    [self addSubview:_downLab];

    
    
}

//--发现UI-------------------
-(void)getViewFind;
{
    MiddleLine*  aView =[[ MiddleLine alloc]init];
    aView.frame = CGRectMake(0, 0, 320, 250);
    [[self contentView] addSubview:aView];
    
    for (int i = 0; i< 2; i++) {
        UIButton * button =[UIButton  buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(i * 160, 0, 160, 180);
        [aView addSubview:button];
    }
    
    _leftImage=[[UIImageView alloc]init];
    _leftImage.frame = CGRectMake(10, 20, 140, 130);
    [aView addSubview:_leftImage];
    
    _leftLab =[UILabel new];
    _leftLab.frame = CGRectMake(15, 150, 40, 20);
    [aView addSubview:_leftLab];
    
    _rightLab =[UILabel new];
    _rightLab.frame = CGRectMake(100, 150, 45, 20);
    [aView addSubview:_rightLab];
    
    _middleLab=[UILabel new];
    _middleLab.frame = CGRectMake(10, 175, 140, 55);
    [aView  addSubview:_middleLab];
    
    _thirdRowLab = [UILabel new];
    _thirdRowLab.frame = CGRectMake(10, 230, 100, 25);
    [aView addSubview:_thirdRowLab];
    
    _smallImage =[UIImageView new];
    _smallImage.frame = CGRectMake(10, 255, 25, 20);
    _smallImage.image =[UIImage imageNamed:@"ic_no_comment@2x"];
    [aView addSubview:_smallImage];
    
    _downLab =[[UILabel alloc]  init];
    _downLab.frame =CGRectMake(40  , 225, 40, 20);
    _downLab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
    [aView addSubview:_downLab];
    //--------右边
    _leftImageR=[[UIImageView alloc]init];
    _leftImageR.frame = CGRectMake(170, 20, 140, 130);
    [aView addSubview:_leftImageR];
    
    _leftLabR =[UILabel new];
    _leftLabR.frame = CGRectMake(175, 150, 40, 20);
    [aView addSubview:_leftLabR];
    
    _rightLabR =[UILabel new];
    _rightLabR.frame = CGRectMake(260, 150, 45, 20);
    [aView addSubview:_rightLabR];
    
    _middleLabR=[UILabel new];
    _middleLabR.frame = CGRectMake(170, 175, 140, 55);
    [aView  addSubview:_middleLabR];
    
    _thirdRowLabR = [UILabel new];
    _thirdRowLabR.frame = CGRectMake(170, 230, 100, 25);
    [aView addSubview:_thirdRowLabR];
    
    _smallImageR =[UIImageView new];
    _smallImageR.frame = CGRectMake(170, 255, 25, 20);
    _smallImageR.image =[UIImage imageNamed:@"ic_no_comment@2x"];
    [aView addSubview:_smallImageR];
    
    _downLabR =[[UILabel alloc]  init];
    _downLabR.frame =CGRectMake(200  , 225, 40, 20);
    _downLabR.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
    [aView addSubview:_downLabR];


}


// --晒物UI
-(void)getViewBask
{
    _leftImage =[UIImageView new];
    _leftImage.frame = CGRectMake(0, 2, 320, 198);
    [[self contentView] addSubview:_leftImage];
    
    _peopleImage= [UIImageView new];
    _peopleImage.image =[UIImage imageNamed:@"defaultAvatar_new@2x"];
    _peopleImage.frame=CGRectMake(10, 120, 30, 30);
    [[self contentView] addSubview:_peopleImage];
    
    _userLab =[UILabel new];
    _userLab.frame = CGRectMake(50, 125, 100, 20);
    [[self contentView] addSubview:_userLab];
    
    _smallImage =[UIImageView new];
    _smallImage.frame = CGRectMake(240, 125, 25, 20);
    _smallImage.image =[UIImage imageNamed:@"ic_no_comment@2x"];
    [[self contentView] addSubview:_smallImage];
    
    _middleLab = [UILabel new];
    _middleLab.frame =CGRectMake(30, 155,240, 40);
    [[self contentView] addSubview:_middleLab];
    
    _downLab =[UILabel new];
    _downLab.frame =CGRectMake(265, 125, 40, 20);
    [[self contentView] addSubview:_downLab];
    
}

// 经验 ， 资讯 UI
-(void)getInformation
{
   //---------需写自适应
    _middleLab = [UILabel new];
    _middleLab .numberOfLines =2;
    _middleLab.frame = CGRectMake(10, 10, 300, 60);
    [[self contentView] addSubview:_middleLab];
    
    
    _leftImage =[UIImageView  new];
    _leftImage.frame = CGRectMake(10, 70, 100, 120);
    [[self contentView] addSubview:_leftImage];
    
    
    _leftLab =[UILabel new];
    _leftLab.frame = CGRectMake(130, 60 , 80, 20);
    _leftLab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
    [[self contentView] addSubview:_leftLab];
    
    _rightLab =[UILabel new];
    _rightLab.frame = CGRectMake(270, 60, 50, 20);
    _rightLab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
    [[self contentView] addSubview:_rightLab];
    
    _filterLab =[UILabel new];
    _filterLab.frame = CGRectMake(130, 80, 180, 70);
    [_filterLab setFont:[UIFont systemFontOfSize:20]];
    _filterLab.numberOfLines=1;
    [[self contentView] addSubview:_filterLab];
    
    
    _smallImage =[UIImageView new];
    _smallImage.frame = CGRectMake(130,150 , 25, 20);
    _smallImage.image =[UIImage imageNamed:@"ic_no_comment@2x"];
    [[self contentView] addSubview:_smallImage];
    
    _downLab =[[UILabel alloc]  init];
    _downLab.frame =CGRectMake(160, 150, 50, 20);
    _downLab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
    [self addSubview:_downLab];
    
    
}








- (void)awakeFromNib {
    // Initialization code
 }

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
