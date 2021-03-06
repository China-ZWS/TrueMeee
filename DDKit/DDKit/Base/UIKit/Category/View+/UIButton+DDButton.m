//
//  UIButton+DDButton.m
//  RetailClient
//
//  Created by Song on 16/9/22.
//  Copyright © 2016年 https://github.com/China-ZWS. All rights reserved.
//

#import "UIButton+DDButton.h"

@implementation UIButton (DDButton)

- (void)dd_setBackgroundColor:(UIColor *)color forState:(UIControlState)state
{
    UIView *colorView = [[UIView alloc] initWithFrame:[self frame]];
    [colorView setBackgroundColor:color];

    UIGraphicsBeginImageContext(colorView.bounds.size);
    [[colorView layer] renderInContext:UIGraphicsGetCurrentContext()];

    UIImage *colorImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    [self setBackgroundImage:colorImage forState:state];
}

-(void)dd_startTime:(NSInteger )timeout title:(NSString *)title waitTitle:(NSString *)waitTitle
{
    __block NSInteger timeOut = timeout; //倒计时时间
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    dispatch_source_set_timer(_timer,dispatch_walltime(NULL, 0), 1.0 * NSEC_PER_SEC, 0); //每秒执行
    dispatch_source_set_event_handler(_timer, ^{
        if(timeOut <= 0) { //倒计时结束，关闭
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                //设置界面的按钮显示 根据自己需求设置
                [self setTitle:title forState:UIControlStateNormal];
                self.userInteractionEnabled = YES;
            });
        } else {
            //            int minutes = timeout / 60;
            int seconds = timeOut % 60;
            NSString *strTime = [NSString stringWithFormat:@"%.2d", seconds];
            dispatch_async(dispatch_get_main_queue(), ^{
                //设置界面的按钮显示 根据自己需求设置
                [self setTitle:[NSString stringWithFormat:@"%@%@", strTime, waitTitle] forState:UIControlStateNormal];
                self.userInteractionEnabled = NO;

            });
            timeOut--;
        }
    });
    dispatch_resume(_timer);
}

@end
