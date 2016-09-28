//
//  DDPageProtocol.h
//  DDKit
//
//  Created by Song on 16/9/26.
//  Copyright © 2016年 https://github.com/China-ZWS. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DDPageBarDelegate <UIScrollViewDelegate>

- (void)zhou;

@end

@protocol DDPageContentDelegate <NSObject>

- (void)wen;

@end