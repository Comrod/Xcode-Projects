//
//  TournamentSelectViewController.m
//  USTA App
//
//  Created by Cormac Chester on 7/30/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import "TournamentSelectViewController.h"
#import "ViewController.h"

@interface TournamentSelectViewController ()

@end

@implementation TournamentSelectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)backToLoginButtonTap:(id)sender
{
    NSLog(@"Back To Login button was pressed");
    ViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"viewController"];
    viewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:viewController animated:YES completion:nil];
}

-(IBAction)currentTournamentsButtonTap:(id)sender
{
    
}

-(IBAction)pastTournamentsButtonTap:(id)sender
{
    
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

@end
