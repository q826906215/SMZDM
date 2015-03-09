//
//  PersonalInformationcell.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/8.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "PersonalInformationcell.h"

@implementation PersonalInformationcell

- (void)awakeFromNib {
    // Initialization code
    
    int  lie = 3;
    for (int i= 0 ; i<6  ; i++) {
        float  row =  i / lie; //  1
        float  clume = i % lie; // 3 2 1 0
        float   width = 320/3;
        float  height = 100;
        UIButton * optionBtn =[UIButton   buttonWithType:UIButtonTypeSystem];
        optionBtn.tag  =  i+ 10;
        optionBtn.frame = CGRectMake(clume * width , 50+row * height, width, height);
        [self  addSubview:optionBtn];
        
        UIImageView * imageV =[[UIImageView alloc] init];
        imageV.frame= CGRectMake(40, 30, 25, 25);
        imageV.image= [UIImage imageNamed:[NSString stringWithFormat:@"%d@2x",i+1]];
        [optionBtn addSubview:imageV];
        NSArray * array =@[@"排行榜",@"白菜党",@"神价格",@"奇葩物"];
        UILabel * lab =[[UILabel alloc]init];
        lab.frame = CGRectMake(23, 70, 60, 30);
        lab.textAlignment =NSTextAlignmentCenter;
        lab.text=[array objectAtIndex:i];
        lab.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
        [optionBtn addSubview:lab];
    }
    

    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
