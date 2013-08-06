//
//  ViewController2.h
//  Tutorial Test (Storyboard)
//
//  Created by Cormac Chester on 6/23/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import <UIKit/UIKit.h>
//Calculator
@interface ViewController2 : UIViewController
{
    IBOutlet UITextField *textField1;
    IBOutlet UITextField *textField2;
    IBOutlet UILabel *label;
}

@property (nonatomic, retain)IBOutlet UITextField *textField1;
@property (nonatomic, retain)IBOutlet UITextField *textField2;

-(IBAction)removeKeys:(id)sender;

-(IBAction)addition;
-(IBAction)subtract;
-(IBAction)multiply;
-(IBAction)divide;
-(IBAction)clear;


@end
