//
//  DDItemControl.m
//  DDKit
//
//  Created by Song on 16/9/24.
//  Copyright © 2016年 https://github.com/China-ZWS. All rights reserved.
//

#import "DDItemControl.h"
#import "DDCommonDefine.h"
#import "DDScreen.h"
#import "UIView+DDView.h"

// UIKit
@implementation DDItemControl

- (instancetype)init
{
    if ((self = [super init])) {

        _backgroundLayer = CALayer.new;
        [self.layer addSublayer:_backgroundLayer];
        _icon = UIImageView.new;
        _textLb = UILabel.new;
        _textLb.font = DDFont(DDLayoutIphone5Pixels(11));
        _textLb.textColor = DDTextColor;
        _textLb.textAlignment = NSTextAlignmentCenter;

        [self addSubview:_icon];
        [self addSubview:_textLb];
        [self addTarget:self action:@selector(highlighted) forControlEvents:UIControlEventTouchDown];
        [self addTarget:self action:@selector(unHighlighted) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchDragExit | UIControlEventTouchCancel | UIControlEventTouchDragExit];
    }
    return self;
}

- (void)highlighted
{
    _backgroundLayer.backgroundColor = DDSelectBKColor.CGColor;
}

- (void)unHighlighted
{
    _backgroundLayer.backgroundColor = DDWhiteColor(0).CGColor;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _icon.frame = CGRectMake((self.dd_width - _icon.image.size.width) / 2, (self.dd_height - _icon.image.size.width - _textLb.font.lineHeight - DDLayoutIphone5Pixels(4)) / 2, _icon.image.size.height, _icon.image.size.height);
    _textLb.frame = CGRectMake(0, _icon.dd_bottom + DDLayoutIphone5Pixels(4), self.dd_width, _textLb.font.lineHeight);

    _backgroundLayer.frame = CGRectMake(DD_ScreenScale, DD_ScreenScale, self.dd_width - DD_ScreenScale * 2, self.dd_height - DD_ScreenScale * 2);
}

@end
