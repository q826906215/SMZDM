//
//  YHcell.h
//  WhatToBuy
//
//  Created by dushuai on 3/5/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YHcell : UITableViewCell

// ----在非arc 一般用retain （长久持有对象id ）       copy复制    assign （delegate ，整形数据）
@property (nonatomic, retain) UIImageView * leftImage;
@property(nonatomic, retain) UILabel * leftLab;
@property (nonatomic,retain) UILabel *  rightLab;
@property (nonatomic, retain) UILabel * middleLab;
@property (nonatomic, retain) UILabel *   thirdRowLab;
@property (nonatomic, retain) UILabel *  downLab;

@property (nonatomic,retain) UIImageView * smallImage;

@end
