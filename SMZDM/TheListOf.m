//
//  TheListOf.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/5.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "TheListOf.h"

@implementation TheListOf

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self =[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        UIImageView * imageView =[[UIImageView alloc]initWithFrame:CGRectMake(8, 8, 100, 100)];
        
        [self addSubview:imageView];
        
        imageView.image =[UIImage imageNamed:@"banner_bg@2x.png"];
        
        self.headerImageView =imageView;
        
        [imageView release];
        
        UILabel *label =[[UILabel alloc]initWithFrame:CGRectMake(116, 8, 100, 20)];
        
        label.font =[UIFont systemFontOfSize:14];
        
        label.tintColor =[UIColor blackColor];
        
        label.alpha =0.3;
        
        [self addSubview:label];
        
        self.label =label;
        
        [label release];
        
        UILabel *rightLabel =[[UILabel alloc]initWithFrame:CGRectMake(270, 8, 40, 20)];
        
        rightLabel.font =[UIFont systemFontOfSize:14];
        
        rightLabel.tintColor =[UIColor blackColor];
        
        rightLabel.alpha =0.3;
        
        [self addSubview:rightLabel ];
        
        self.rightLabel =rightLabel;
        
        [rightLabel release];
        
        UILabel *bigLabel =[[UILabel alloc]initWithFrame:CGRectMake(116, 30, 194, 40)];
        
        bigLabel.font =[UIFont systemFontOfSize:15];
        
        bigLabel.alpha =0.7;
        
        bigLabel.numberOfLines =0;
        
        [self addSubview:bigLabel];
        
        self.bigLabel =bigLabel;
        
        [bigLabel release];
        
        UILabel *redLabel =[[UILabel alloc]initWithFrame:CGRectMake(116, 72, 130, 20)];
        
        redLabel.font =[UIFont systemFontOfSize:15];
        
        redLabel.textColor=[UIColor redColor];
        
        redLabel.alpha =0.8;
        
        [self addSubview:redLabel];
        
        self.redLabel =redLabel;
        
        [redLabel  release];
        
        UIImageView * nextView =[[UIImageView alloc]initWithFrame:CGRectMake(116, 94, 17, 17)];
        
        [self addSubview:nextView];
        
        self.iImageView =nextView;
        
        UILabel *nextLabel =[[UILabel alloc]initWithFrame:CGRectMake(140, 94, 60, 17)];
        
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
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
