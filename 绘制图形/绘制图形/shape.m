//
//  shape.m
//  绘制图形
//
//  Created by 章芝源 on 16/1/1.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "shape.h"

@implementation shape

- (void)drawRect:(CGRect)rect
{
    [self triangle];
}

//三角形
- (void)triangle
{
    CGContextRef cxt = UIGraphicsGetCurrentContext();
    
//    UIBezierPath *path = [UIBezierPath bezierPath];
    CGMutablePathRef path = CGPathCreateMutable();
    
    CGContextMoveToPoint(cxt, 100, 100);
    CGContextAddLineToPoint(cxt, 200, 200);
    CGContextAddLineToPoint(cxt, 300, 100);
//    CGContextAddLineToPoint(cxt, 100, 100);
    CGContextClosePath(cxt);
    

    CGContextAddPath(cxt, path);
    //设置颜色
//        [[UIColor redColor]setStroke];
    [[UIColor yellowColor]setFill];
    //    [[UIColor blueColor]set];
    
//    CGContextStrokePath(cxt);//stroke是描边
    CGContextFillPath(cxt);
}
@end
