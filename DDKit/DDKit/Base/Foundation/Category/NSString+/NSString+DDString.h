//
//  NSString+DDString.h
//  DDKit
//
//  Created by Song on 16/9/13.
//  Copyright © 2016年 https://github.com/China-ZWS. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (DDString)

- (BOOL)isNotBlank;

- (NSString*)urlEncodeValue;

@end

NS_ASSUME_NONNULL_END