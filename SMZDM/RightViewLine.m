
//
//  RightViewLine.m
//  SMZDM
//
//  Created by dushuai on 3/9/15.
//  Copyright (c) 2015 布鲁斯.韦恩 . All rights reserved.
//

#import "RightViewLine.h"

@implementation RightViewLine

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

    -(void)drawRect:(CGRect)rect
{
    CGContextRef  context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, 0.9, 0.9, 0.9, 1);
    CGContextFillRect(context, rect);
    
    CGContextSetRGBFillColor(context, 0.8, 0.8, 0.8, 1);


    CGContextFillRect(context, CGRectMake(0 ,0.1, rect.size.width, 1));

    
    CGContextFillRect(context, CGRectMake(0 ,50, rect.size.width, 1));
    
    CGContextFillRect(context, CGRectMake(0 ,150, rect.size.width, 1));
    CGContextFillRect(context, CGRectMake(0 ,250, rect.size.width, 1));
    CGContextFillRect(context, CGRectMake(0 ,349, rect.size.width, 1));
    
//
//    CGContextFillRect(context, CGRectMake(0 ,550, rect.size.width, 1));
//    CGContextFillRect(context, CGRectMake(0 ,600, rect.size.width, 1));
//    CGContextFillRect(context, CGRectMake(0 ,700, rect.size.width, 1));
//    CGContextFillRect(context, CGRectMake(0 ,800, rect.size.width, 1));
    //--竖线
    
    CGContextFillRect(context, CGRectMake(320/3 ,50, 1, 300));
    CGContextFillRect(context, CGRectMake(2*320/3 ,50, 1, 300));
    
    
//    CGContextFillRect(context, CGRectMake(330/3 ,300, 1, 500));
//    CGContextFillRect(context, CGRectMake(2*320/3 ,300, 1, 500));

    

    
    
}












@end
