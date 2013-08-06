//
//  TournamentSelectViewController.h
//  USTA App
//
//  Created by Cormac Chester on 7/30/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TournamentSelectViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIButton *backToLoginButton;
@property (nonatomic, retain) IBOutlet UIButton *currentTournamentsButton;
@property (nonatomic, retain) IBOutlet UIButton *pastTournamentsButton;

-(IBAction)backToLoginButtonTap:(id)sender;
-(IBAction)currentTournamentsButtonTap:(id)sender;
-(IBAction)pastTournamentsButtonTap:(id)sender;

@end
