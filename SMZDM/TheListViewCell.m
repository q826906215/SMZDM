//
//  TheListViewCell.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/6.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "TheListViewCell.h"

@implementation TheListViewCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self =[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        UILabel *redLabel =[[UILabel alloc]initWithFrame:CGRectMake(8, 0, 300, 40)];
        
        redLabel.numberOfLines =0;
        
        redLabel.alpha=0.8;
        
        redLabel.font =[UIFont systemFontOfSize:16];
        
        [self addSubview:redLabel];
        
        self.redLabel =redLabel;
        
        [redLabel release];
        
        UIImageView * imageView =[[UIImageView alloc]initWithFrame:CGRectMake(8,48, 100, 100)];
        
        [self addSubview:imageView];
        
        self.headerImageView =imageView;
        
        [imageView release];
        
        UILabel *label =[[UILabel alloc]initWithFrame:CGRectMake(116, 48, 100, 20)];
        
        label.font =[UIFont systemFontOfSize:14];
        
        label.tintColor =[UIColor blackColor];
        
        label.alpha =0.3;
        
        [self addSubview:label];
        
        self.label =label;
        
        [label release];
        
        UILabel *rightLabel =[[UILabel alloc]initWithFrame:CGRectMake(270, 48, 40, 20)];
        
        rightLabel.font =[UIFont systemFontOfSize:14];
        
        rightLabel.tintColor =[UIColor blackColor];
        
        rightLabel.alpha =0.4;
        
        [self addSubview:rightLabel ];
        
        self.rightLabel =rightLabel;
        
        [rightLabel release];
        
        UILabel *bigLabel =[[UILabel alloc]initWithFrame:CGRectMake(116, 70, 194, 60)];
        
        bigLabel.font =[UIFont systemFontOfSize:16];
        
        bigLabel.alpha =0.5;
        
        bigLabel.numberOfLines =0;
        
        [self addSubview:bigLabel];
        
        self.bigLabel =bigLabel;
        
        [bigLabel release];
        
        UIImageView * nextView =[[UIImageView alloc]initWithFrame:CGRectMake(116, 134, 17, 17)];
        
        [self addSubview:nextView];
        
        self.iImageView =nextView;
        
        [nextView release];
        
        UILabel *nextLabel =[[UILabel alloc]initWithFrame:CGRectMake(140, 134, 60, 17)];
        
        nextLabel.font =[UIFont systemFontOfSize:14];
        
        nextLabel.alpha =0.3;
        
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
