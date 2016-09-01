# XSDESEncrypt&XSString

## XSDESEncrypt

### 屏幕截图

![](https://raw.githubusercontent.com/XaoflySho/XSDESEncrypt/master/DESEncrypt.PNG)

### 使用方法

**加密**

```objective-c
+ (NSString *) encryptUseDES:(NSString *)clearText key:(NSString *)key;
```

**解密**

```objective-c
+ (NSString *) decryptUseDES:(NSString *)plainText key:(NSString *)key;
```

**其他方法**

```objective-c
+ (NSString*) stringWithHexBytes2:(NSData *)sender;

+ (NSData*) parseHexToByteArray:(NSString*) hexString;

+ (NSString *) parseByte2HexString:(Byte *) bytes;

+ (NSString *) parseByteArray2HexString:(Byte[]) bytes;
```

## XSString

###方法

**移除字符串中的HTML标签**

```objective-c
- (NSString *)stringByRemovingHTMLMark;
```

**生成一个由大写英文字母组成的随机字符串**

```objective-c
+ (NSString *)generatesRandomStringWithLength:(int)lenght;
```

**将JSON对象（NSArray、NSDictionary）转换为字符串**

```objective-c
+ (NSString *)stringByJSONObject:(id)JSONObject;
```

