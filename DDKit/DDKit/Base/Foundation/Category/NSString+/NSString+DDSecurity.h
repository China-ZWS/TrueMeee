//
//  NSString+DDSecurity.h
//  DDKit
//
//  Created by Song on 16/8/27.
//  Copyright © 2016年 https://github.com/China-ZWS. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (DDSecurity)

#pragma mark - Hash
///=============================================================================
/// @name Hash
///=============================================================================

/**
 Returns a lowercase NSString for md2 hash.
 */
- (nullable NSString *)md2String;

/**
 Returns a lowercase NSString for md4 hash.
 */
- (nullable NSString *)md4String;

/**
 Returns a lowercase NSString for md5 hash.
 */
- (nullable NSString *)md5String;

/**
 Returns a lowercase NSString for sha1 hash.
 */
- (nullable NSString *)sha1String;

/**
 Returns a lowercase NSString for sha224 hash.
 */
- (nullable NSString *)sha224String;

/**
 Returns a lowercase NSString for sha256 hash.
 */
- (nullable NSString *)sha256String;

/**
 Returns a lowercase NSString for sha384 hash.
 */
- (nullable NSString *)sha384String;

/**
 Returns a lowercase NSString for sha512 hash.
 */
- (nullable NSString *)sha512String;

/**
 Returns a lowercase NSString for hmac using algorithm md5 with key.
 @param key The hmac key.
 */
- (nullable NSString *)hmacMD5StringWithKey:(NSString *)key;

/**
 Returns a lowercase NSString for hmac using algorithm sha1 with key.
 @param key The hmac key.
 */
- (nullable NSString *)hmacSHA1StringWithKey:(NSString *)key;

/**
 Returns a lowercase NSString for hmac using algorithm sha224 with key.
 @param key The hmac key.
 */
- (nullable NSString *)hmacSHA224StringWithKey:(NSString *)key;

/**
 Returns a lowercase NSString for hmac using algorithm sha256 with key.
 @param key The hmac key.
 */
- (nullable NSString *)hmacSHA256StringWithKey:(NSString *)key;

/**
 Returns a lowercase NSString for hmac using algorithm sha384 with key.
 @param key The hmac key.
 */
- (nullable NSString *)hmacSHA384StringWithKey:(NSString *)key;

/**
 Returns a lowercase NSString for hmac using algorithm sha512 with key.
 @param key The hmac key.
 */
- (nullable NSString *)hmacSHA512StringWithKey:(NSString *)key;

///**
// Returns a lowercase NSString for crc32 hash.
// */
//- (nullable NSString *)crc32String;
//
@end

NS_ASSUME_NONNULL_END
