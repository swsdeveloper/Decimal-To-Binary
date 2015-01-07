//
//  ViewController.h
//  DecimalToBinary
//
//  Created by Steven Shatz on 1/7/15.
//  Copyright (c) 2015 Steven Shatz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DecimalConverter.h"


@interface ViewController : UIViewController

@property (retain, nonatomic) DecimalConverter *decConv;

@property (weak, nonatomic) IBOutlet UITextField *decimalNumTextField;

@property (weak, nonatomic) IBOutlet UILabel *binaryStringLabel;

@end

