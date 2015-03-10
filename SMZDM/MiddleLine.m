
//
//  MiddleLine.m
//  SMZDM
//
//  Created by dushuai on 3/7/15.
//  Copyright (c) 2015 布鲁斯.韦恩 . All rights reserved.
//

#import "MiddleLine.h"

@implementation MiddleLine

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)drawRect:(CGRect)rect
{
//    ref 参考  context 环境 上下文；
    CGContextRef  context= UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, 1, 1, 1, 1);
    CGContextFillRect(context, rect);
    CGContextSetRGBFillColor(context, 0.8, 0.8, 0.8, 1);
    
    CGContextFillRect(context, CGRectMake(160, 0, 1, 290));
    
}



@end
