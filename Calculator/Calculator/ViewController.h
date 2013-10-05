//
//  ViewController.h
//  Calculator
//
//  Created by Cormac Chester on 9/23/13.
//  Copyright (c) 2013 Cormac Chester. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSString *inputTextFieldString;
    int x;
    int equation;
}

@property (strong, nonatomic) IBOutlet UITextField *inputTextField;

@property (strong, nonatomic) IBOutlet UIButton *button0;
@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet UIButton *button3;
@property (strong, nonatomic) IBOutlet UIButton *button4;
@property (strong, nonatomic) IBOutlet UIButton *button5;
@property (strong, nonatomic) IBOutlet UIButton *button6;
@property (strong, nonatomic) IBOutlet UIButton *button7;
@property (strong, nonatomic) IBOutlet UIButton *button8;
@property (strong, nonatomic) IBOutlet UIButton *button9;
@property (strong, nonatomic) IBOutlet UIButton *buttonNeg;
@property (strong, nonatomic) IBOutlet UIButton *buttonDot;

@property (strong, nonatomic) IBOutlet UIButton *buttonEnter;
@property (strong, nonatomic) IBOutlet UIButton *buttonAdd;
@property (strong, nonatomic) IBOutlet UIButton *buttonSubtract;
@property (strong, nonatomic) IBOutlet UIButton *buttonMultiply;
@property (strong, nonatomic) IBOutlet UIButton *buttonDivide;


-(IBAction)button0Tap:(id)sender;
-(IBAction)button1Tap:(id)sender;
-(IBAction)button2Tap:(id)sender;
-(IBAction)button3Tap:(id)sender;
-(IBAction)button4Tap:(id)sender;
-(IBAction)button5Tap:(id)sender;
-(IBAction)button6Tap:(id)sender;
-(IBAction)button7Tap:(id)sender;
-(IBAction)button8Tap:(id)sender;
-(IBAction)button9Tap:(id)sender;
-(IBAction)buttonNegTap:(id)sender;
-(IBAction)buttonDotTap:(id)sender;
-(IBAction)buttonEnterTap:(id)sender;
-(IBAction)buttonAddTap:(id)sender;
-(IBAction)buttonSubtractTap:(id)sender;
-(IBAction)buttonMultiplyTap:(id)sender;
-(IBAction)buttonDivideTap:(id)sender;

@end
