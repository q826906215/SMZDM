//
//  AppDelegate.h
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/4.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,UIScrollViewDelegate>{
    UIScrollView *productIntroduction;
    
    UIPageControl *pageControl;
}

@property (strong, nonatomic) UIWindow *window;


@end

