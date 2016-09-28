//
//  DDPageBar.h
//  DDKit
//
//  Created by Song on 16/9/26.
//  Copyright © 2016年 https://github.com/China-ZWS. All rights reserved.
//

#import <UIKit/UIKit.h>

// protocol
#import "DDPageProtocol.h"

@interface DDPageBar : UIScrollView

@property (nonatomic, assign) id <DDPageBarDelegate>barDelegate;

@end
