//
//  DDPageControl.m
//  DDKit
//
//  Created by Song on 16/9/26.
//  Copyright © 2016年 https://github.com/China-ZWS. All rights reserved.
//

#import "DDPageControl.h"

// bar
#import "DDPageBar.h"

// content
#import "DDPageContentView.h"



@interface DDPageControl () <DDPageBarDelegate>

@property (nonatomic, strong) DDPageBar *pageBar;;
@property (nonatomic, strong) DDPageContentView *contentView;
@property (nonatomic, strong) NSArray *controllers;

@end

@implementation DDPageControl

- (instancetype)initWithControllers:(NSArray *)controllers
{
    if ((self = [super init])) {
        _controllers = controllers;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // 内部组件
    [self layoutViews];
}

- (void)layoutViews
{
    _pageBar = [[DDPageBar alloc] initWithFrame:CGRectMake(0, 0, CGRectGetHeight(self.view.frame), 44)];
    _pageBar.barDelegate = self;
    [self.view addSubview:_pageBar];

    _contentView = [[DDPageContentView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(_pageBar.frame), CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame) - CGRectGetHeight(_pageBar.frame))];
    [self.view addSubview:_contentView];
}

- (void)viewDidAppear:(BOOL)animated
{

}

@end
