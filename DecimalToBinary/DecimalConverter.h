//
//  DecimalConverter.h
//  DecimalToBinary
//
//  Created by Steven Shatz on 1/7/15.
//  Copyright (c) 2015 Steven Shatz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DecimalConverter : NSObject {
    
    NSUInteger maxNum;
}

- (NSString *)decimalToBinary:(NSUInteger)decNum;

@end
