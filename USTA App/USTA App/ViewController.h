//
//  ViewController.h
//  USTA App
//
//  Created by Cormac Chester on 7/30/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIButton *loginButton;
@property (nonatomic, retain) IBOutlet UITextField *ustaNumberTextField;
@property (nonatomic, retain) IBOutlet UITextField *passwordTextField;

-(IBAction)loginButtonTap:(id)sender;
-(IBAction)removeKeys:(id)sender;

@end
