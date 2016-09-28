//
//  DDPageBar.m
//  DDKit
//
//  Created by Song on 16/9/26.
//  Copyright © 2016年 https://github.com/China-ZWS. All rights reserved.
//

#import "DDPageBar.h"

@interface DDPageBar ()



@end

@implementation DDPageBar

- (instancetype) initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame])) {

    }
    return self;
}

- (void)setBarDelegate:(id<DDPageBarDelegate>)barDelegate
{
    if (_barDelegate != barDelegate) {
        _barDelegate = barDelegate;
    }
}

@end
