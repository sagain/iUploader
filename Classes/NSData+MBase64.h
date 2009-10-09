//
//  NSString+Base64Encoding.m
//  iUploader
//
//  Created by Sagain Saowaluck on 10/8/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//



@interface NSData (MBBase64)

+ (id)dataWithBase64EncodedString:(NSString *)string;     //  Padding '=' characters are optional. Whitespace is ignored.
- (NSString *)base64Encoding;
@end


