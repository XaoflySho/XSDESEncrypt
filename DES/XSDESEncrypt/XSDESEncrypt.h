//
//  XSDESEncrypt.h
//  DES
//
//  Created by Xaofly Sho on 2016/8/30.
//  Copyright © 2016年 Xaofly Sho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSDESEncrypt : NSObject

/*!
 DES加密
 
 @param clearText 需要加密的字符串
 
 @param key 加密密钥
 
 @return NSString 加密后的字符串
 */
+ (NSString *) encryptUseDES:(NSString *)clearText key:(NSString *)key;

/*!
 DES解密
 
 @param plainText 需要解密的字符串
 
 @param key 解密密钥
 
 @return NSString 解密后的字符串
 */
+ (NSString *) decryptUseDES:(NSString *)plainText key:(NSString *)key;


+ (NSString*) stringWithHexBytes2:(NSData *)sender;

+ (NSData*) parseHexToByteArray:(NSString*) hexString;


+ (NSString *) parseByte2HexString:(Byte *) bytes;

+ (NSString *) parseByteArray2HexString:(Byte[]) bytes;

@end
