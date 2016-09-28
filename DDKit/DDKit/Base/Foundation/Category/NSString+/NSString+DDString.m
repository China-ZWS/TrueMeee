//
//  NSString+DDString.m
//  DDKit
//
//  Created by Song on 16/9/13.
//  Copyright © 2016年 https://github.com/China-ZWS. All rights reserved.
//

#import "NSString+DDString.h"

@implementation NSString (DDString)

- (BOOL)isNotBlank {
    NSCharacterSet *blank = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    for (NSInteger i = 0; i < self.length; ++i) {
        unichar c = [self characterAtIndex:i];
        if (![blank characterIsMember:c]) {
            return YES;
        }
    }
    return NO;
}

- (NSString*)urlEncodeValue {
    NSString* encodedValue = self;
    if (self.length > 0) {
        encodedValue = (__bridge_transfer  NSString*)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (__bridge CFStringRef)self, NULL, (__bridge CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8 );
    }
    return encodedValue;
}

@end
