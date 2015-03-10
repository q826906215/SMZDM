
//
//  ShopCell.m
//  SMZDM
//
//  Created by dushuai on 3/10/15.
//  Copyright (c) 2015 布鲁斯.韦恩 . All rights reserved.
//

#import "ShopCell.h"
#import "UIImageView+WebCache.h"
#import "MiddleLine.h"
@implementation ShopCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)getShopList:(NSInteger)sender dataArray:(NSArray*)arr  indexRow:(NSInteger)indexPath {
    
//    [self clear];
    long index = sender;
    if (index==0)
    {
        NSLog(@"cell-------");
        [self getViewYouHui];
        NSDictionary * dataDic = arr[indexPath];
        NSString * strPic =[dataDic  objectForKey:@"article_pic"];
        [_leftImage  sd_setImageWithURL:[NSURL URLWithString:strPic] ];
        _leftLabR.text = [dataDic objectForKey:@"article_mall"];
        _rightLab.text =[dataDic objectForKey:@"article_format_date"];
        self.middleLab.text =[dataDic objectForKey:@"article_title"];
        self.thirdRowLab.text=[dataDic objectForKey:@"article_price"];
        self.downLab.text =[dataDic objectForKey:@"article_comment"];
    }
      else if( index ==1)
    {
        [self getViewFind];
        NSDictionary * dataDic = arr[indexPath*2];
        //--左边
        NSString * strPic =[dataDic  objectForKey:@"article_pic"];
        [_leftImage  sd_setImageWithURL:[NSURL URLWithString:strPic] ];
        _leftLabR.text = [dataDic objectForKey:@"article_mall"];
        _rightLab.text =[dataDic objectForKey:@"article_format_date"];
        self.middleLab.text =[dataDic objectForKey:@"article_title"];
        self.thirdRowLab.text=[dataDic objectForKey:@"article_price"];
        self.downLab.text =[dataDic objectForKey:@"article_comment"];
        // --右边
        NSDictionary * dataDic1= arr[indexPath*2+1];
        NSString * strPic1 =[dataDic1  objectForKey:@"article_pic"];
        [_leftImageR  sd_setImageWithURL:[NSURL URLWithString:strPic1] ];
        _leftLabR.text = [dataDic1 objectForKey:@"article_mall"];
        _rightLabR.text =[dataDic1 objectForKey:@"article_format_date"];
        self.middleLabR.text =[dataDic1 objectForKey:@"article_title"];
        self.thirdRowLabR.text=[dataDic1 objectForKey:@"article_price"];
        self.downLabR.text =[dataDic1 objectForKey:@"article_comment"];
        
    }
    
}








// 优惠 海淘 UI
-(void)getViewYouHui
{
    _leftImage =[UIImageView  new];
    _leftImage.frame = CGRectMake(5, 10, 100, 105);
    [[self contentView] addSubview:_leftImage];
    
    
    _leftLabR =[UILabel new];
    _leftLabR.frame = CGRectMake(110, 8, 90, 20);
    _leftLabR.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
    [[self contentView] addSubview:_leftLabR];
    
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
    aView.frame = CGRectMake(0, 0, 320, 290);
    [[self contentView] addSubview:aView];
    
    for (int i = 0; i< 2; i++) {
        UIButton * button =[UIButton  buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(i * 160, 0, 160, 290);
        [aView addSubview:button];
    }
    
    _leftImage=[[UIImageView alloc]init];
    _leftImage.frame = CGRectMake(10, 10, 140, 150);
    
    [aView addSubview:_leftImage];
    
    _leftLab =[UILabel new];
    _leftLab.frame = CGRectMake(15, 160, 80, 20);
    _leftLab.textColor =[UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1];
    [_leftLab setFont:[UIFont systemFontOfSize:15]];
    [aView addSubview:_leftLab];
    
    
    _rightLab =[UILabel new];
    _rightLab.frame = CGRectMake(100, 160, 45, 20);
    _rightLab.textColor=[UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1];
    [_rightLab setFont:[UIFont systemFontOfSize:15]];
    [aView addSubview:_rightLab];
    
    _middleLab=[UILabel new];
    _middleLab.frame = CGRectMake(15, 170, 140, 60);
    //    _middleLab.adjustsFontSizeToFitWidth=YES;
    [_middleLab setFont:[UIFont systemFontOfSize:18]];
    _middleLab.numberOfLines=2;
    [aView  addSubview:_middleLab];
    
    _thirdRowLab = [UILabel new];
    _thirdRowLab.frame=CGRectMake(15, 235, 80, 25);
    _thirdRowLab.textColor =[UIColor redColor];
    [aView addSubview:_thirdRowLab];
    
    
    _smallImage =[UIImageView new];
    _smallImage.frame = CGRectMake(10, 265, 25, 20);
    _smallImage.image =[UIImage imageNamed:@"ic_no_comment@2x"];
    [aView addSubview:_smallImage];
    
    _downLab =[[UILabel alloc]  init];
    _downLab.frame =CGRectMake(40 , 265, 40, 20);
    _downLab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
    [aView addSubview:_downLab];
    //--------右边
    _leftImageR=[[UIImageView alloc]init];
    _leftImageR.frame = CGRectMake(170, 10, 140, 150);
    [aView addSubview:_leftImageR];
    
    _leftLabR =[UILabel new];
    _leftLabR.frame = CGRectMake(175, 160, 80, 20);
    _leftLabR.textColor =[UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1];
    [_leftLabR setFont:[UIFont systemFontOfSize:15]];
    [aView addSubview:_leftLabR];
    
    
    _rightLabR =[UILabel new];
    _rightLabR.frame = CGRectMake(270, 160, 45, 20);
    _rightLabR.textColor=[UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1];
    [_rightLabR setFont:[UIFont systemFontOfSize:15]];
    [aView addSubview:_rightLabR];
    
    _thirdRowLabR = [UILabel new];
    _thirdRowLabR.frame=CGRectMake(175, 235, 80, 25);
    _thirdRowLabR.textColor =[UIColor redColor];
    [aView addSubview:_thirdRowLabR];
    
    _middleLabR=[UILabel new];
    _middleLabR.frame = CGRectMake(175, 170, 130, 60);
    //    _middleLabR.adjustsFontSizeToFitWidth=YES;
    _middleLabR.numberOfLines=2;
    [aView  addSubview:_middleLabR];
    [_middleLabR setFont:[UIFont systemFontOfSize:18]];
    
    
    _smallImageR =[UIImageView new];
    _smallImageR.frame = CGRectMake(175, 265, 25, 20);
    _smallImageR.image =[UIImage imageNamed:@"ic_no_comment@2x"];
    [aView addSubview:_smallImageR];
    
    _downLabR =[[UILabel alloc]  init];
    _downLabR.frame =CGRectMake(215  , 265, 40, 20);
    _downLabR.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
    [aView addSubview:_downLabR];
    
    
}








-(void)clear
{
    if (self.leftImage) {
        [self.leftImage removeFromSuperview];
    }
    if (self.middleLab) {
        [self.middleLab removeFromSuperview];
    }
    if (self.leftLab) {
        [self.leftLab removeFromSuperview];
        
    }
    if (self.filterLab) {
        [self.filterLab  removeFromSuperview];
    }
    if (self.downLab) {
        [self.downLab removeFromSuperview];
    }
    
}

-(void)dealloc
{
    self.smallImage =nil;
    self.rightLab=nil;
    self.thirdRowLab=nil;
    self.downLab=nil;
    self.userLab=nil;
    self.filterLab=nil;
    self.leftImageR=nil;
    self.smallImage=nil;
    self.leftLabR=nil;
    self.rightLabR=nil;
    self.middleLabR=nil;
    self.downLabR=nil;
    
    [super dealloc];
}


@end
