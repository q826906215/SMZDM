//
//  BaskInContentCell.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/7.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "BaskInContentCell.h"

@implementation BaskInContentCell


-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self =[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        UIImageView * imageView =[[UIImageView alloc]initWithFrame:CGRectMake(1,1, 318, 178)];
        
        imageView.image =[UIImage imageNamed:@"banner_bg@2x.png"];
        
        [self addSubview:imageView];
    
        self.headerImageView =imageView;
        
        [imageView release];
        
        UILabel *blackLabel =[[UILabel alloc]initWithFrame:CGRectMake(1, 1, 318, 178)];
        
        blackLabel.backgroundColor =[UIColor blackColor];
        
        blackLabel.alpha =0.3;
        
        [self addSubview:blackLabel];
        
        [blackLabel release];

        UIImageView *imageViewto=[[UIImageView alloc]initWithFrame:CGRectMake(8, 88, 30, 30)];
        
        imageViewto.layer.cornerRadius =15;
        
        imageViewto.layer.masksToBounds=YES;
        
        [self addSubview:imageViewto];

        self.ImageViewto=imageViewto;
        
        [imageViewto release];
        
        UILabel *redLabel =[[UILabel alloc]initWithFrame:CGRectMake(10, 130, 300, 40)];
        
        redLabel.textColor =[UIColor whiteColor];
        
        redLabel.numberOfLines =0;
        
        redLabel.font =[UIFont systemFontOfSize:16];
        
        [self addSubview:redLabel];
        
        self.redLabel =redLabel;
        
        [redLabel release];
        
        UILabel *rightLabel =[[UILabel alloc]initWithFrame:CGRectMake(50, 93, 130, 20)];
        
        rightLabel.textColor =[UIColor whiteColor];
        
        rightLabel.font =[UIFont systemFontOfSize:16];
        
        [self addSubview:rightLabel ];
        
        self.rightLabel =rightLabel;
        
        [rightLabel release];
        
        UIImageView * nextView =[[UIImageView alloc]initWithFrame:CGRectMake(263, 95, 17, 17)];
        
        [self addSubview:nextView];
        
        self.iImageView =nextView;
        
        [nextView release];
        
        UILabel *nextLabel =[[UILabel alloc]initWithFrame:CGRectMake(290, 95, 30, 17)];
        
        
        nextLabel.textColor =[UIColor whiteColor];
        
        nextLabel.font =[UIFont systemFontOfSize:14];
        
        [self addSubview:nextLabel];
        
        self.nextLabel =nextLabel;
        
        [nextLabel release];
        
    }
    return self;
    
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
