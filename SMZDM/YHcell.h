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
@property (nonatomic,retain)UIImageView* peopleImage;
@property (nonatomic, retain) UIImageView * leftImage;
@property (nonatomic,retain) UIImageView * smallImage;

@property(nonatomic, retain) UILabel * leftLab;
@property (nonatomic,retain) UILabel *  rightLab;
@property (nonatomic, retain) UILabel * middleLab;
@property (nonatomic, retain) UILabel *   thirdRowLab;
@property (nonatomic, retain) UILabel *  downLab;

@property (nonatomic,retain)UILabel * userLab;
@property (nonatomic,retain)UILabel * filterLab;
//---
@property (nonatomic,retain)UIImageView* rightImageR;
@property (nonatomic, retain) UIImageView * leftImageR;
@property (nonatomic,retain) UIImageView * smallImageR;

@property(nonatomic, retain) UILabel * leftLabR;
@property (nonatomic,retain) UILabel *  rightLabR;
@property (nonatomic, retain) UILabel * middleLabR;
@property (nonatomic, retain) UILabel *   thirdRowLabR;
@property (nonatomic, retain) UILabel *  downLabR;







-(void)getDayList:(NSInteger)sender dataArray:(NSArray*)arr  indexRow:(NSInteger)indexPath;






@end
