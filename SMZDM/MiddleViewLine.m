


//
//  MiddleViewLine.m
//  SMZDM
//
//  Created by dushuai on 3/9/15.
//  Copyright (c) 2015 布鲁斯.韦恩 . All rights reserved.
//

#import "MiddleViewLine.h"

@implementation MiddleViewLine

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
    
    
//    CGContextFillRect(context, CGRectMake(0 ,0, rect.size.width, 1));
    
    CGContextFillRect(context, CGRectMake(0 ,100, rect.size.width, 1));
 CGContextFillRect(context, CGRectMake(0 ,199, rect.size.width, 1));
    
    //--竖线
    
    CGContextFillRect(context, CGRectMake(320/3 ,0, 1, 300));
    CGContextFillRect(context, CGRectMake(2*320/3 ,0, 1, 300));
    

}









@end
