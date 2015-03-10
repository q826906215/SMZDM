//
//  PriceCell.m
//  SMZDM
//
//  Created by dushuai on 3/9/15.
//  Copyright (c) 2015 布鲁斯.韦恩 . All rights reserved.
//

#import "PriceCell.h"
#import "UIImageView+WebCache.h"
@implementation PriceCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
// 所有UI布局；
-(void)getDayList:(NSInteger)sender dataArray:(NSArray*)arr  indexRow:(NSInteger)indexPath {
    
    [self clear];
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
    else if (index==1)
    {
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
 
}
// 优惠 海淘 UI
-(void)getViewYouHui
{
    _leftImage =[UIImageView  new];
    _leftImage.frame = CGRectMake(5, 10, 100, 105);
    [[self contentView] addSubview:_leftImage];
    
    UIImageView * picView =[UIImageView new];
    picView.image =[UIImage imageNamed:@"ico_sjg@2x"];
    picView.frame =CGRectMake(5, 5, 35, 20);
    [[self contentView] addSubview:picView];
    [picView release];

    _leftLabR =[UILabel new];
    _leftLabR.frame = CGRectMake(110, 8, 90, 20);
    _leftLab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
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
    }if (self.leftLabR) {
        [self.leftLabR removeFromSuperview];
    }if (self.rightLab) {
        [self.rightLab removeFromSuperview];
    }if (self.thirdRowLab) {
        [self.thirdRowLab removeFromSuperview];
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
    self.leftLabR =nil;
    self.smallImage=nil;
    
    [super dealloc];
}



@end
