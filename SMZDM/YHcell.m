




//
//  YHcell.m
//  WhatToBuy
//
//  Created by dushuai on 3/5/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import "YHcell.h"

@implementation YHcell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:@"cell"];
    if (self)
    {
        _leftImage =[UIImageView  new];
        _leftImage.frame = CGRectMake(10, 10, 110, 110);
        [[self contentView] addSubview:_leftImage];
        
        
        _leftLab =[UILabel new];
        _leftLab.frame = CGRectMake(130, 8, 80, 20);
        _leftLab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
        [[self contentView] addSubview:_leftLab];
        
        _rightLab =[UILabel new];
        _rightLab.frame = CGRectMake(300, 8, 50, 20);
        _rightLab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
        [[self contentView] addSubview:_rightLab];
      
        _middleLab =[UILabel new];
        _middleLab.frame = CGRectMake(130, 30, 220, 55);
        [_middleLab setFont:[UIFont systemFontOfSize:20]];
        _middleLab.numberOfLines=2;
        [[self contentView] addSubview:_middleLab];
        
        _thirdRowLab=[UILabel  new];
        _thirdRowLab.frame =CGRectMake(130, 85, 110, 25);
        [_thirdRowLab setFont:[UIFont systemFontOfSize:19]];
        _thirdRowLab.textColor= [UIColor redColor];
        [_thirdRowLab setEnabled:false];
        [[self  contentView]addSubview:_thirdRowLab];
        
        _smallImage =[UIImageView new];
        _smallImage.frame = CGRectMake(125, 110, 25, 20);
        _smallImage.image =[UIImage imageNamed:@"ic_no_comment@2x"];
        [[self contentView] addSubview:_smallImage];
        
        _downLab =[[UILabel alloc]  init];
        _downLab.frame =CGRectMake(155, 110, 30, 20);
        _downLab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
        [self addSubview:_downLab];
}
    
    return self;
}





- (void)awakeFromNib {
    // Initialization code
    
   
    
    NSLog(@"========");
    
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
