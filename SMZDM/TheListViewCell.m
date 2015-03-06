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
        
        UILabel *redLabel =[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
        redLabel.backgroundColor =[UIColor redColor];
        
        redLabel.font =[UIFont systemFontOfSize:15];
        
        redLabel.textColor=[UIColor redColor];
        
        [self addSubview:redLabel];
        
        self.redLabel =redLabel;
        
        UIImageView * imageView =[[UIImageView alloc]initWithFrame:CGRectMake(8,48, 100, 100)];
        
        imageView.backgroundColor =[UIColor redColor];
        
        [self addSubview:imageView];
        
        self.headerImageView =imageView;
        
        UILabel *label =[[UILabel alloc]initWithFrame:CGRectMake(116, 48, 100, 20)];
        
        label.backgroundColor =[UIColor redColor];
        
        label.font =[UIFont systemFontOfSize:16];
        
        label.tintColor =[UIColor blackColor];
        
        label.alpha =0.3;
        
        [self addSubview:label];
        
        self.label =label;
        
        UILabel *rightLabel =[[UILabel alloc]initWithFrame:CGRectMake(270, 48, 40, 20)];
        rightLabel.backgroundColor =[UIColor redColor];
        
        rightLabel.font =[UIFont systemFontOfSize:14];
        
        rightLabel.tintColor =[UIColor blackColor];
        
        rightLabel.alpha =0.3;
        
        [self addSubview:rightLabel ];
        
        self.rightLabel =rightLabel;
        
        UILabel *bigLabel =[[UILabel alloc]initWithFrame:CGRectMake(116, 70, 194, 60)];
        bigLabel.backgroundColor =[UIColor redColor];
        
        bigLabel.font =[UIFont systemFontOfSize:14];
        
        bigLabel.numberOfLines =0;
        
        [self addSubview:bigLabel];
        
        self.bigLabel =bigLabel;
        
        UIImageView * nextView =[[UIImageView alloc]initWithFrame:CGRectMake(116, 134, 17, 17)];
         nextView.backgroundColor =[UIColor redColor];
        
        [self addSubview:nextView];
        
        self.iImageView =nextView;
        
        UILabel *nextLabel =[[UILabel alloc]initWithFrame:CGRectMake(140, 134, 60, 17)];
        nextLabel.backgroundColor =[UIColor redColor];
        
        nextLabel.font =[UIFont systemFontOfSize:14];
        
        nextLabel.alpha =0.3;
        
        [self addSubview:nextLabel];
        
        self.nextLabel =nextLabel;
        
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
