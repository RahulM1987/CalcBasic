//
//  Information.m
//  CalculatorBasic
//
//  Created by Rahul on 08/08/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "Information.h"
#import <QuartzCore/QuartzCore.h>

@interface Information ()

@end

@implementation Information

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
    self.close.layer.cornerRadius = 10.0f;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)close:(id)sender
{

    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
