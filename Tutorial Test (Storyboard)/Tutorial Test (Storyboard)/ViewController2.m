//
//  ViewController2.m
//  Tutorial Test (Storyboard)
//
//  Created by Cormac Chester on 6/23/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2
@synthesize textField1;
@synthesize textField2;

//Removes keyboard when background is touched
- (IBAction)removeKeys:(id)sender
{
    [textField1 resignFirstResponder];
    [textField2 resignFirstResponder];
}

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//Calculator
//Addition
-(IBAction)addition
{
    float a = ([textField1.text floatValue]);
    float b = ([textField2.text floatValue]);
    float c = a + b;
    label.text = [[NSString alloc] initWithFormat:@"%2.f", c];
}

//Subtraction
-(IBAction)subtract
{
    float d = ([textField1.text floatValue]);
    float e = ([textField2.text floatValue]);
    float f = d - e;
    label.text = [[NSString alloc] initWithFormat:@"%2.f", f];
}

//Multiplication
-(IBAction)multiply
{
    float g = ([textField1.text floatValue]);
    float h = ([textField2.text floatValue]);
    float i = g * h;
    label.text = [[NSString alloc] initWithFormat:@"%2.f", i];
}

//Division
-(IBAction)divide
{
    float j = ([textField1.text floatValue]);
    float k = ([textField2.text floatValue]);
    float l = j / k;
    label.text = [[NSString alloc] initWithFormat:@"%2.f", l];
    if (j==0 || k==0)
    {
        label.text = [[NSString alloc] initWithFormat:@"Undefined"];
    }
}

//Clear Button
-(IBAction)clear
{
    textField1.text = @"";
    textField2.text = @"";
    label.text = @"";
}


@end
