//
//  ViewController.m
//  DecimalToBinary
//
//  Created by Steven Shatz on 1/7/15.
//  Copyright (c) 2015 Steven Shatz. All rights reserved.
//

#import "ViewController.h"
#import "Constants.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.decConv = [[DecimalConverter alloc] init];

//    [self tests];
}

- (IBAction)convertToBinaryButtonPressed:(UIButton *)sender {
    self.binaryStringLabel.text = [self.decConv decimalToBinary:[self.decimalNumTextField.text integerValue]];
}

- (void)tests {
    [self test:0];
    [self test:1];
    [self test:2];
    [self test:3];
    [self test:4];
    [self test:5];
    [self test:6];
    [self test:7];
    [self test:8];
    [self test:9];
    [self test:10];
    [self test:11];
    [self test:12];
    [self test:13];
    [self test:14];
    [self test:15];
    [self test:16];
    [self test:20];
    [self test:32];
    [self test:50];
    [self test:64];
    [self test:65];
    [self test:123];
    [self test:127];
    [self test:128];
    [self test:254];
    [self test:255];
    [self test:256];
    [self test:512];
    [self test:1024];
    [self test:2048];
    [self test:4096];
    [self test:12345678];
}

- (void)test:(NSUInteger)decNum {
    NSLog(@"%ld -> %@", decNum, [self.decConv decimalToBinary:decNum] );
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
