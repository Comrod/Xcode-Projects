//
//  ViewController.m
//  Tutorial Test (Storyboard)
//
//  Created by Cormac Chester on 6/23/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import "ViewController1.h"
#import "AudioToolBox/AudioToolBox.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Alert
//Shows alert when button is pressed
- (IBAction)showMessage:(id)sender
{
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Test Message"
                                                      message:@"This is a test message. Please do not be alarmed."
                                                     delegate:self
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:@"Go Away", nil];
    [message show];
}


//Checks/Tests which button is pressed
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:@"OK"])
    {
        NSLog(@"OK was selected.");
    }
    else if([title isEqualToString:@"Go Away"])
    {
        NSLog(@"Bad decision.");
        UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Test Message"
                                                          message:@"This is a test message. Please do not be alarmed."
                                                         delegate:self
                                                cancelButtonTitle:@"OK"
                                                otherButtonTitles:@"Go Away", nil];
        [message show];
    }
}
@end
