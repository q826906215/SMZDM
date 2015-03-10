//
//  MiracleCell.h
//  SMZDM
//
//  Created by dushuai on 3/9/15.
//  Copyright (c) 2015 布鲁斯.韦恩 . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MiracleCell : UITableViewCell
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
//------------


@property(nonatomic, retain) UILabel * leftLabR;






-(void)getDayList:(NSInteger)sender dataArray:(NSArray*)arr  indexRow:(NSInteger)indexPath;


@end
