//
//  ViewController.m
//  Java Counting Game
//
//  Created by Cormac Chester on 8/6/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize enterTextField, infoTextView, processButton;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    vcSobj = [SingletonObject singleObj];
    
    counter = nil;
    guess = 0;
    [self changeTextViewText];
}

- (IBAction)resignKeyboard:(id)sender
{
    [enterTextField resignFirstResponder];
}

- (IBAction)processButtonTap:(id)sender
{
    enterTextField.text = NSString string
    guess;
}

- (void)changeTextViewText
{
    if(counter == nil)
    {
        infoTextView.text = @"Welcome to Cormac's Guessing Game. Enter an Integer and then tap Process";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
