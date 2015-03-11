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
    
    
    
}

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:@""];
    if (self)
    {
        
    }
    
    
    
    
    return self;
    
    
}


-(void )getbg:(NSInteger)indexPath
{
    
    
    
    UIImageView * imageV =[[UIImageView alloc] init];
    imageV.frame =CGRectMake(0, 2, 50, 60);
//      imageV.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld",20+indexPath]];
    imageV.backgroundColor=[UIColor whiteColor];
    
    [self   addSubview:imageV];
    
    UIButton * btn =[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame =CGRectMake(10, 15, 30, 30);
    [btn setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d",20+indexPath]] forState:UIControlStateNormal];
    [imageV addSubview:btn];

    
    NSArray * array =@[@"推送设置",@"夜间模式",@"签到提醒",@"移动网络图片质量",@"清除缓存",@"APP推荐",@"淘宝快捷下单",@"推荐“什么值得买”给好友",@"更多"];
    UILabel * lab = [UILabel new];
    lab.frame = CGRectMake(70, 0, 320, 60);
    lab.text = [array objectAtIndex:indexPath];
    [[self contentView] addSubview:lab];
    

    if (indexPath==0||indexPath==5||indexPath==7||indexPath==8) {
        UIButton * bgBtn=[UIButton buttonWithType:UIButtonTypeCustom];
        bgBtn .frame = CGRectMake(300, 22.5, 12,15 );
        [bgBtn setBackgroundImage:[UIImage imageNamed:@"unRightClick@2x"] forState:UIControlStateNormal];
        [[self contentView] addSubview:bgBtn];
        
    }
    
    if (indexPath==1||indexPath==2||indexPath==6) {
        UISwitch * bgSwittch = [[UISwitch alloc]init];
        bgSwittch.frame = CGRectMake(260, 10, 70, 40);
        [[self contentView] addSubview:bgSwittch];
    }
    
    if (indexPath==3 ) {
        UILabel  * lab =[UILabel new];
        lab .text = @"标清";
        lab.frame= CGRectMake(270, 20, 40, 20);
        lab.textColor = [UIColor colorWithRed:0.4 green:0.7 blue:0.7 alpha:1];
        [[self contentView] addSubview:lab];
        
        
        
    }
    
    if (indexPath==4) {
        UILabel  * lab =[UILabel new];
        lab.frame= CGRectMake(245, 20, 60, 20);
        lab.textAlignment= NSTextAlignmentRight;
        lab.textColor = [UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1];
        lab.text= @"2M";
        [[self contentView] addSubview:lab];

    }
    
    
    
    
}

//-(void)setAccessoryType:(UITableViewCellAccessoryType)accessoryType
//{
//    
//    
//    
//    
//}









- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
