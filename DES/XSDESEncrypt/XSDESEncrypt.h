//
//  XSDESEncrypt.h
//  DES
//
//  Created by Xaofly Sho on 2016/8/30.
//  Copyright © 2016年 Xaofly Sho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSDESEncrypt : NSObject

/****** 加密 ******/
+ (NSString *) encryptUseDES:(NSString *)clearText key:(NSString *)key;
/****** 解密 ******/
+ (NSString *) decryptUseDES:(NSString *)plainText key:(NSString *)key;


+ (NSString*) stringWithHexBytes2:(NSData *)sender;

+ (NSData*) parseHexToByteArray:(NSString*) hexString;


+ (NSString *) parseByte2HexString:(Byte *) bytes;

+ (NSString *) parseByteArray2HexString:(Byte[]) bytes;

@end
