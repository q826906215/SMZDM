//
//  SearchVC.h
//  WhatToBuy
//
//  Created by dushuai on 3/5/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomLine.h"
@interface SearchVC : UIViewController <UIScrollViewDelegate>
{
    UIButton      *_button;
    UIButton      *_classBtn;
    UIButton      *_shopBtn;
    UIView        *_downView;
    UITextField * _searchField;
    UIScrollView * _scrollView;
    
    UIScrollView    * _hoziScrollView;
    
    UIScrollView        *_rightScrollView;
    
    UIView              * _upAView;
    
}
@end
