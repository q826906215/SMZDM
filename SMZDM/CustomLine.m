




//
//  CustomLine.m
//  WhatToBuy
//
//  Created by dushuai on 3/5/15.
//  Copyright (c) 2015 dushuai. All rights reserved.
//

#import "CustomLine.h"

@implementation CustomLine

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//- 画线  重写父类的方法；


- (void)drawRect:(CGRect)rect
{
    CGContextRef  context = UIGraphicsGetCurrentContext();

    CGContextSetRGBFillColor(context, 0.9, 0.9, 0.9, 1);
    CGContextFillRect(context, rect);
      // --对线进行 填充 －－－－
    CGContextSetRGBFillColor(context, 0.8, 0.8, 0.8, 1.0);
    
//    CGContextFillRect(context, CGRectMake(0,, rect.size.width, 1));
    
//    CGContextFillRect(context, CGRectMake(0, 2*rect.size.height/3, rect.size.width, 1));
    
    CGContextFillRect(context, CGRectMake(0 ,0.1, rect.size.width, 1));
    
    CGContextFillRect(context, CGRectMake(0 ,50, rect.size.width, 1));
    
    CGContextFillRect(context, CGRectMake(0 ,150, rect.size.width, 1));
    CGContextFillRect(context, CGRectMake(0 ,250, rect.size.width, 1));
    CGContextFillRect(context, CGRectMake(0 ,300, rect.size.width, 1));
    
     CGContextFillRect(context, CGRectMake(0 ,400, rect.size.width, 1));
    
     CGContextFillRect(context, CGRectMake(0 ,500, rect.size.width, 1));
     CGContextFillRect(context, CGRectMake(0 ,600, rect.size.width, 1));
     CGContextFillRect(context, CGRectMake(0 ,700, rect.size.width, 1));
     CGContextFillRect(context, CGRectMake(0 ,800, rect.size.width, 1));
    //--竖线
    
     CGContextFillRect(context, CGRectMake(375/3 ,50, 1, 200));
    CGContextFillRect(context, CGRectMake(2*375/3 ,50, 1, 200));
    
    
    CGContextFillRect(context, CGRectMake(375/3 ,300, 1, 500));
    CGContextFillRect(context, CGRectMake(2*375/3 ,300, 1, 500));
    
}









@end
