//
//  DecimalConverter.m
//  DecimalToBinary
//
//  Created by Steven Shatz on 1/7/15.
//  Copyright (c) 2015 Steven Shatz. All rights reserved.
//

#import "DecimalConverter.h"
#import "Constants.h"


@implementation DecimalConverter

- (id)init {
    self = [super init];
    if (self) {
        maxNum = LONG_MAX;
    }
    return self;
}

- (NSString *)decimalToBinary:(NSUInteger)decNum {
    NSLog(@"decNum = %ld\nmaxNum = %ld", decNum, maxNum);
    if (decNum >= maxNum) {
        return [NSString stringWithFormat:@"Error - number exceeds \"%ld\" the maximum supported", maxNum];
    }
    
    NSString *binaryResult = @"";
    if (decNum == 0) {
        binaryResult = @"0";
    }
    while (decNum > 0) {
        // decNum & 1 returns value of right-most binary digit (0 or 1)
        binaryResult = [[NSString stringWithFormat: @"%ld", decNum&1] stringByAppendingString:binaryResult];
        decNum = decNum >> 1;   // Binary shift right 1 position
    }
    
    // Pad with lead zeroes to make string length a multiple of 4 (eg: change 10 to 0010)
    
    NSUInteger len = [binaryResult length];
    if (len % 4 > 0) {
        int padLen = 4 - (len % 4);
        NSString *padStr = [@"0000" substringWithRange:NSMakeRange(0,padLen)];
        binaryResult = [padStr stringByAppendingString:binaryResult];
    }
    
    // Insert a space after every 4th character for improved readability (eg: 00111100 -> 0011 1100)
    
    if ([binaryResult length] > 4) {
        NSMutableString *readableStr = [[NSMutableString alloc] initWithString:binaryResult];
        for (int n=4; n < [binaryResult length]; n+=4) {
            [readableStr insertString:@" " atIndex:n + (n/4) - 1];
        }
        binaryResult = readableStr;
    }
    
    return binaryResult;
}

@end
