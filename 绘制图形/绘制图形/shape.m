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
//    [self triangle];
//    [self setupImage];
//    [self setupRect];
    [self yuan];
}


- (void)yuan
{
    //圆弧
    UIBezierPath *bzrPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(200, 200) radius:100 startAngle:0 endAngle:M_PI_2 clockwise:NO];
//     [bzrPath addLineToPoint:CGPointMake(125, 125)];
    [bzrPath fill];
}


//画矩形&圆$圆角矩形
- (void)setupRect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();

//    UIBezierPath *bzrPath = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 100, 200)];
//    UIBezierPath *bzrPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 200, 100)];
    UIBezierPath *bzrPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(200, 200, 100, 100) cornerRadius:100];
    CGContextAddPath(ctx, bzrPath.CGPath);
    [[UIColor redColor]setFill];
    [[UIColor blueColor]setStroke];
    [[UIColor orangeColor]set];
//    CGContextStrokePath(ctx);
    CGContextDrawPath(ctx, kCGPathFillStroke);
}


//画图片失败
- (void)setupImage
{
    CGContextRef cxt = UIGraphicsGetCurrentContext();
//    CGMutablePathRef path = CGPathCreateMutable();
    UIImage *image = [UIImage imageNamed:@"普京"];
    CGImageRef imageRef = (__bridge CGImageRef)([UIImage imageWithCGImage:(__bridge CGImageRef _Nonnull)(image)]);
    CGContextDrawImage(cxt, CGRectMake(0, 0, 100, 100), imageRef);
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
        [[UIColor redColor]setStroke];
    [[UIColor yellowColor]setFill];
    //    [[UIColor blueColor]set];
    
//    CGContextStrokePath(cxt);//stroke是描边
//    CGContextFillPath(cxt);
    CGContextDrawPath(cxt, kCGPathFillStroke);
}
@end
