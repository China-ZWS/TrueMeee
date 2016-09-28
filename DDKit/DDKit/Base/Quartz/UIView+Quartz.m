//
//  UIView+Quartz.m
//  DDKit
//
//  Created by Song on 16/9/6.
//  Copyright © 2016年 https://github.com/China-ZWS. All rights reserved.
//

#import "UIView+Quartz.h"

#import "DDCommonDefine.h"

@implementation UIView (Quartz)

- (void)drawRectWithLine:(CGRect)rect start:(CGPoint)start end:(CGPoint)end lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth
{


    /**
     *  https://developer.apple.com/library/ios/documentation/2DDrawing/Conceptual/DrawingPrintingiOS/GraphicsDrawingOverview/GraphicsDrawingOverview.html
     * 仅当要绘制的线宽为奇数像素时，绘制位置需要调整
     */
    CGFloat half_pixel = 0;
    if (((int)(lineWidth * [UIScreen mainScreen].scale) + 1) % 2 == 0) {
        half_pixel = DD_ScreenScale / 2;

    }

    double pixelAdjustOffset_startX = fmod(start.x,DD_ScreenScale);
    double pixelAdjustOffset_startY = fmod(start.y,DD_ScreenScale);
    double pixelAdjustOffset_endX = fmod(end.x,DD_ScreenScale);
    double pixelAdjustOffset_endY = fmod(end.y,DD_ScreenScale);

//    if (pixelAdjustOffset_startX - half_pixel > 0) {
//        pixelAdjustOffset_startX = fmod(pixelAdjustOffset_startX,half_pixel);
//    } else if (pixelAdjustOffset_startX - half_pixel == 0){
//        pixelAdjustOffset_startX = 0;
//    }
//
//    if (pixelAdjustOffset_startY - half_pixel > 0) {
//        pixelAdjustOffset_startY = fmod(pixelAdjustOffset_startY,half_pixel);
//    } else if (pixelAdjustOffset_startY - half_pixel == 0){
//        pixelAdjustOffset_startY =0;
//    }
//
//    if (pixelAdjustOffset_endX - half_pixel > 0) {
//        pixelAdjustOffset_endX = fmod(pixelAdjustOffset_endX,half_pixel);
//    } else if (pixelAdjustOffset_endX - half_pixel == 0){
//        pixelAdjustOffset_endX = 0;
//    }
//
//    if (pixelAdjustOffset_endY - half_pixel > 0) {
//        pixelAdjustOffset_endY = fmod(pixelAdjustOffset_endY,half_pixel);
//    } else if (pixelAdjustOffset_endY - half_pixel == 0){
//        pixelAdjustOffset_endY = 0;
//    }

    start.x = start.x - pixelAdjustOffset_startX;
    start.y = start.y - pixelAdjustOffset_startY;
    end.x = end.x - pixelAdjustOffset_endX;
    end.y = end.y - pixelAdjustOffset_endY;

    CGFloat startX = start.x ? (start.x - half_pixel) : half_pixel;
    CGFloat startY = start.y ? (start.y - half_pixel) : half_pixel;
    CGFloat endX = end.x ? (end.x - half_pixel) : half_pixel;
    CGFloat endY = end.y ? (end.y - half_pixel) : half_pixel;

    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineCap(context,kCGLineCapRound);
    CGContextSetLineWidth(context,lineWidth);
    CGContextSetStrokeColorWithColor(context,lineColor.CGColor);

    CGContextBeginPath(context);
    CGContextMoveToPoint(context,startX, startY);
    CGContextAddLineToPoint(context,endX, endY);

    CGContextDrawPath(context,kCGPathFillStroke);
}

@end
