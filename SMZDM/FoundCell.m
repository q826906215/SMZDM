//
//  FoundCell.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/9.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "FoundCell.h"
#import "MiddleLine.h"
#import <UIImageView+WebCache.h>

@implementation FoundCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    
    self =[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        
        MiddleLine*  aView =[[ MiddleLine alloc]init];
        aView.frame = CGRectMake(0, 0, 320, 250);
        [[self contentView] addSubview:aView];
        
        for (int i = 0; i< 2; i++) {
            UIButton * button =[UIButton  buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(i * 160, 0, 160, 180);
            button.tag=i+800;
            [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%d",button.tag] forKey:@"buttag"];
            
            [aView addSubview:button];
        }
        _leftImage=[[UIImageView alloc]init];
        _leftImage.frame = CGRectMake(10, 0, 140, 140);
        [aView addSubview:_leftImage];
        UIView *view =[[UIView alloc]initWithFrame:CGRectMake(10, 110, 140, 30)];
        view.backgroundColor =[UIColor whiteColor];
        view.alpha=0.6;
        [aView addSubview:view];
        _leftLab =[UILabel new];
        _leftLab.frame = CGRectMake(15, 115, 60, 20);
        _leftLab.font =[UIFont systemFontOfSize:14];
        _leftLab.alpha =0.7;
        
        [aView addSubview:_leftLab];
        
        _rightLab =[UILabel new];
        _rightLab.frame = CGRectMake(100, 115, 60, 20);
        _rightLab.font =[UIFont systemFontOfSize:14];
        _rightLab.alpha =0.7;
        [aView addSubview:_rightLab];
        
        _middleLab=[UILabel new];
        _middleLab.frame = CGRectMake(10, 140, 140, 50);
        _middleLab.font =[UIFont systemFontOfSize:16];
        _middleLab.numberOfLines =0;
        [aView  addSubview:_middleLab];
        
        _thirdRowLab = [UILabel new];
        _thirdRowLab.frame = CGRectMake(10, 190, 100, 25);
        _thirdRowLab.textColor=[UIColor redColor];
        [aView addSubview:_thirdRowLab];
        
        _smallImage =[UIImageView new];
        _smallImage.frame = CGRectMake(10, 220, 20, 20);
        _smallImage.image =[UIImage imageNamed:@"ic_no_comment@2x"];
        [aView addSubview:_smallImage];
        
        _downLab =[[UILabel alloc]  init];
        _downLab.frame =CGRectMake(40, 220, 40, 20);
        _downLab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
        [aView addSubview:_downLab];
        //--------右边
        _leftImageR=[[UIImageView alloc]init];
        _leftImageR.frame = CGRectMake(170, 0, 140, 140);
        [aView addSubview:_leftImageR];
        
        UIView *view1 =[[UIView alloc]initWithFrame:CGRectMake(170, 110, 140, 30)];
        view1.backgroundColor =[UIColor whiteColor];
        view1.alpha=0.6;
        [aView addSubview:view1];
        
        _leftLabR =[UILabel new];
        _leftLabR.frame = CGRectMake(175, 115,80, 20);
        _leftLabR.font =[UIFont systemFontOfSize:14];
         _leftLabR.alpha =0.7;
        [aView addSubview:_leftLabR];
        
        _rightLabR =[UILabel new];
        _rightLabR.frame = CGRectMake(260, 115, 80, 20);
        _rightLabR.font =[UIFont systemFontOfSize:14];
         _rightLabR.alpha =0.7;
        [aView addSubview:_rightLabR];
        
        _middleLabR=[UILabel new];
        _middleLabR.frame = CGRectMake(170, 140, 140, 50);
         _middleLabR.font =[UIFont systemFontOfSize:16];
        [aView  addSubview:_middleLabR];
        
        _thirdRowLabR = [UILabel new];
        _thirdRowLabR.frame = CGRectMake(170, 190, 100, 25);
        
        _thirdRowLabR.textColor =[UIColor redColor];
        [aView addSubview:_thirdRowLabR];
        
        _smallImageR =[UIImageView new];
        _smallImageR.frame = CGRectMake(170, 220, 20, 20);
        _smallImageR.image =[UIImage imageNamed:@"ic_no_comment@2x"];
        [aView addSubview:_smallImageR];
        
        _downLabR =[[UILabel alloc]  init];
        _downLabR.frame =CGRectMake(200, 220, 40, 20);
        _downLabR.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
        [aView addSubview:_downLabR];

    }
    return self;
    
}









- (void)awakeFromNib {
    // Initialization code
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
