//
//  UIImage+DDImage.h
//  DDKit
//
//  Created by Song on 16/8/30.
//  Copyright © 2016年 https://github.com/China-ZWS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (DDImage)

- (UIImage *)blurredImageWithRadius:(CGFloat)radius iterations:(NSUInteger)iterations tintColor:(UIColor *)tintColor;

+ (UIImage *)dd_reSizeImage:(UIImage *)image toSize:(CGSize)reSize;

- (UIImage *)imageByRoundCornerRadius:(CGFloat)radius;

UIImage * resizableImage(UIImage *image, CGFloat top, CGFloat bottom, CGFloat left, CGFloat right);

@end
