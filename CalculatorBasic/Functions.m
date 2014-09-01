//
//  Functions.m
//  CalculatorBasic
//
//  Created by Rahul on 07/08/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "Functions.h"
#import "Information.h"
#import <QuartzCore/QuartzCore.h>

@interface Functions ()

{
    Information * info;
}

@end

@implementation Functions


@synthesize textreslt,parallel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
        
    self.textreslt.layer.cornerRadius = 10.0f;
    self.clear.layer.cornerRadius = 10.0f;
    
    self.info = [UIButton buttonWithType:UIButtonTypeInfoLight];
    self.info.frame = CGRectMake(260, 10, 50, 50);
    [self.view addSubview:self.info];
    
    [self.info addTarget:self action:@selector(information:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIImage *image = [UIImage imageNamed:@"apple.png"];
    imageView = [[UIImageView alloc] initWithImage:image];
    
    imageView.frame = CGRectMake(0, 0, 50.0f, 50.0f);
    [self.parallel addSubview:imageView];
    
   
    
}


- (void)viewWillAppear:(BOOL)animated
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:10.0f];
    [UIView setAnimationDelegate:self];
    
    imageView.frame = CGRectMake(200.0f, 200.0f, 60.0f, 60.0f);
    imageView.frame = CGRectMake(10.0f, 10.0f, 0.0f, 0.0f);
    [UIView commitAnimations];

}

- (void)information:(id)sender
{
    
    info = [[Information alloc]initWithNibName:@"Information" bundle:nil];
    [self presentViewController:info animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)numberPressed:(UIButton *)sender;
{
    NSString *number = sender.currentTitle;
    if (self.typingNumber) {
        self.textreslt.text = [self.textreslt.text
                                       stringByAppendingString:number];
    } else
    {
        self.textreslt.text = number;
        self.typingNumber = YES;
    }

    
}

- (IBAction)calculationPressed:(id)sender;
{
    self.typingNumber = NO;
    self.firstNumber = [self.textreslt.text intValue];
    
    self.operation = [sender currentTitle];
}

- (IBAction)equalsPressed;
{
    self.typingNumber = NO;
    self.secondNumber = [self.textreslt.text intValue];
    
    int result = 0;
    
    if ([self.operation isEqualToString:@"+"])
    {
        result = self.firstNumber + self.secondNumber;
    }
    else if ([self.operation isEqualToString:@"-"])
    {
        result = self.firstNumber - self.secondNumber;
    }
    else if ([self.operation isEqualToString:@"*"])
    {
        result = self.firstNumber * self.secondNumber;
    }
    else if ([self.operation isEqualToString:@"/"])
    {
        result = self.firstNumber / self.secondNumber;
    }
    
    self.textreslt.text = [NSString stringWithFormat:@"%d", result];
}

- (IBAction)clear:(id)sender
{
    
    self.textreslt.text = @"0";
    
}

- (IBAction)info:(id)sender {
}

@end
