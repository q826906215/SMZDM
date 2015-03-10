//
//  ShopCell.h
//  SMZDM
//
//  Created by dushuai on 3/10/15.
//  Copyright (c) 2015 布鲁斯.韦恩 . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShopCell : UITableViewCell
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

@property (nonatomic, retain) UIImageView * leftImageR;
@property (nonatomic,retain) UIImageView * smallImageR;

@property(nonatomic, retain) UILabel * leftLabR;
@property (nonatomic,retain) UILabel *  rightLabR;
@property (nonatomic, retain) UILabel * middleLabR;
@property (nonatomic, retain) UILabel *   thirdRowLabR;
@property (nonatomic, retain) UILabel *  downLabR;







-(void)getShopList:(NSInteger)sender dataArray:(NSArray*)arr  indexRow:(NSInteger)indexPath;






@end
