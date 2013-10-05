//
//  ViewController.h
//  Java Counting Game
//
//  Created by Cormac Chester on 8/6/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SingletonObject.h"

@interface ViewController : UIViewController
{
    SingletonObject *vcSobj;
    NSInteger *range;
    NSInteger *random;
    NSInteger *number;
    NSInteger *guess;
    NSInteger *counter = nil;
}

@property (strong, nonatomic) IBOutlet UITextField *enterTextField;
@property (strong, nonatomic) IBOutlet UITextView *infoTextView;
@property (strong, nonatomic) IBOutlet UIButton *processButton;

- (IBAction)resignKeyboard:(id)sender;
- (IBAction)processButtonTap:(id)sender;

@end
