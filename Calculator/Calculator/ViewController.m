//
//  ViewController.m
//  Calculator
//
//  Created by Cormac Chester on 9/23/13.
//  Copyright (c) 2013 Cormac Chester. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize inputTextField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    x = 0;
    inputTextFieldString = @"";
    inputTextField.text = inputTextFieldString;
}

-(IBAction)button0Tap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@0", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)button1Tap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@1", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)button2Tap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@2", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)button3Tap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@3", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)button4Tap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@4", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)button5Tap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@5", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)button6Tap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@6", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)button7Tap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@7", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)button8Tap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@8", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)button9Tap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@9", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)buttonNegTap:(id)sender
{
    if (x == 0)
    {
        inputTextFieldString = [NSString stringWithFormat:@"-%@", inputTextFieldString];
        inputTextField.text = inputTextFieldString;
        NSLog(@"String: %@", inputTextFieldString);
        x++;
    }
    else if (x == 1)
    {
        NSString *removedNegString = [inputTextFieldString stringByReplacingOccurrencesOfString:@"-" withString:@""];
        inputTextField.text = removedNegString;
        inputTextFieldString = removedNegString;
        NSLog(@"String: %@", removedNegString);
        x = 0;
    }
}

-(IBAction)buttonDotTap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@.", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)buttonEnterTap:(id)sender
{
    NSDecimalNumber *equationNotString = [[NSDecimalNumber alloc]initWithString:inputTextFieldString];
    NSLog(@"Equation: %@", equationNotString);
}

-(IBAction)buttonAddTap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@+", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)buttonSubtractTap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@-", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)buttonMultiplyTap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@*", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

-(IBAction)buttonDivideTap:(id)sender
{
    inputTextFieldString = [NSString stringWithFormat:@"%@/", inputTextFieldString];
    inputTextField.text = inputTextFieldString;
    NSLog(@"String: %@", inputTextFieldString);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
