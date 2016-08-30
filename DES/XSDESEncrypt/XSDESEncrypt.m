//
//  XSDESEncrypt.m
//  DES
//
//  Created by Xaofly Sho on 2016/8/30.
//  Copyright © 2016年 Xaofly Sho. All rights reserved.
//

#import "XSDESEncrypt.h"
#import <CommonCrypto/CommonCryptor.h>

/*
 only Used for Cipher Block Chaining (CBC) mode,This is ignored if ECB mode is used
 */
//static Byte iv[] = {'3','B','1','3','0','8','B','5'};

@implementation XSDESEncrypt

#pragma mark - DES_Mothed

/******************************************************************************
 文本数据进行DES加密
 ******************************************************************************/

+ (NSString *) encryptUseDES:(NSString *)clearText key:(NSString *)key {
    
    NSString *ciphertext = nil;
    
    NSData *textData = [clearText dataUsingEncoding:NSUTF8StringEncoding];
    
    NSUInteger dataLength = [textData length];
    
    size_t bufferSize = dataLength + kCCBlockSizeDES;
    
    void * buffer = malloc(bufferSize);
    
    
    size_t numBytesEncrypted = 0;
    
    CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt,
                                          kCCAlgorithmDES,
                                          kCCOptionPKCS7Padding | kCCOptionECBMode,
                                          [key UTF8String],
                                          kCCBlockSizeDES,
                                          NULL,
                                          [textData bytes],
                                          dataLength,
                                          buffer,
                                          bufferSize,
                                          &numBytesEncrypted);
    
    if (cryptStatus == kCCSuccess) {
        NSLog(@"DES加密成功");
        
        NSData *data = [NSData dataWithBytes:buffer length:(NSUInteger)numBytesEncrypted];
        ciphertext = [data base64EncodedStringWithOptions:0];
        
    }else{
        NSLog(@"DES加密失败");
    }
    
    free(buffer);
    return ciphertext;
}

/******************************************************************************
 文本数据进行DES解密
 ******************************************************************************/
+ (NSString *) decryptUseDES:(NSString *)plainText key:(NSString *)key {
    
    NSString *cleartext = nil;
    
    NSData *textData = [[NSData alloc]initWithBase64EncodedString:plainText options:0];
    
    NSUInteger dataLength = [textData length];
    
    size_t bufferSize = dataLength + kCCBlockSizeDES;
    
    void *buffer = malloc(bufferSize);
    
    size_t numBytesEncrypted = 0;
    
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,
                                          kCCAlgorithmDES,
                                          kCCOptionPKCS7Padding | kCCOptionECBMode,
                                          [key UTF8String],
                                          kCCKeySizeDES,
                                          NULL,
                                          [textData bytes],
                                          dataLength,
                                          buffer,
                                          bufferSize,
                                          &numBytesEncrypted);
    if (cryptStatus == kCCSuccess) {
        NSLog(@"DES解密成功");
        
        NSData *data = [NSData dataWithBytes:buffer length:(NSUInteger)numBytesEncrypted];
        cleartext = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
    }else{
        NSLog(@"DES解密失败");
    }
    
    free(buffer);
    return cleartext;
}

@end
