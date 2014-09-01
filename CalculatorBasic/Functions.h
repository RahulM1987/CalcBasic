//
//  Functions.h
//  CalculatorBasic
//
//  Created by Rahul on 07/08/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Functions : UIViewController <UITextFieldDelegate>

{
    NSString * addString;
    UIImageView * imageView;
}


@property (strong, nonatomic) IBOutlet UITextField *textreslt;

@property (nonatomic) BOOL typingNumber;
@property (nonatomic) int firstNumber;
@property (nonatomic) int secondNumber;
@property (nonatomic, copy) NSString *operation;

- (IBAction)numberPressed:(UIButton *)sender;

- (IBAction)calculationPressed:(id)sender;

- (IBAction)equalsPressed;

@property (strong, nonatomic) IBOutlet UIButton *clear;
@property (strong, nonatomic) IBOutlet UIButton *info;
@property (strong, nonatomic) IBOutlet UIView *parallel;

@end
