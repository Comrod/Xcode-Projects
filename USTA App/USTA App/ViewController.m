//
//  ViewController.m
//  USTA App
//
//  Created by Cormac Chester on 7/30/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import "ViewController.h"
#import "SBJson.h"
#import "TournamentSelectViewController.h"
#import "iToast.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize ustaNumberTextField, passwordTextField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//Removes keyboard when background is tapped
-(IBAction)removeKeys:(id)sender
{
    [ustaNumberTextField resignFirstResponder];
    [passwordTextField resignFirstResponder];
}

//Login Button
-(IBAction)loginButtonTap:(id)sender
{
    NSLog(@"Login Button was tapped");
        
    //POST URL
    @try {
        
        if([[ustaNumberTextField text] isEqualToString:@""] || [[passwordTextField text] isEqualToString:@""] ) {
            [[[[iToast makeText:NSLocalizedString(@"Login failed. Please enter both a username and password", @"")]
               setGravity:iToastGravityBottom] setDuration:iToastDurationNormal] show];
        } else {
            NSString *post =[[NSString alloc] initWithFormat:@"username=%@&password=%@",[ustaNumberTextField text],[passwordTextField text]];
            NSLog(@"PostData: %@",post);
            
            NSURL *url=[NSURL URLWithString:@"https://tennislink.usta.com/Dashboard/Main/Login.aspx?App=5"];
            //NSURL *url=[NSURL URLWithString:@"javascript:__doPostBack(&#39;ctl00$lnkbutLogIn&#39;,&#39;&#39;)"];
            
            NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
            
            NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
            
            NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
            [request setURL:url];
            [request setHTTPMethod:@"POST"];
            [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
            [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
            [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
            [request setHTTPBody:postData];
            
            NSError *error = [[NSError alloc] init];
            NSHTTPURLResponse *response = nil;
            NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
            
            NSLog(@"Response Status Code: %d", [response statusCode]);
            if ([response statusCode] >=200 && [response statusCode] <300)
            {
                //Respones Data
                NSString *responseData = [[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
                NSLog(@"Response Data ==> %@", responseData);
                
                //JSON Data
                SBJsonParser *jsonParser = [SBJsonParser new];
                NSDictionary *jsonData = (NSDictionary *) [jsonParser objectWithString:responseData error:nil];
                NSLog(@"JSON Data ==> %@",jsonData);
                
                TournamentSelectViewController *tsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"tsViewController"];
                tsViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
                [self presentViewController:tsViewController animated:YES completion:nil];
            }
            else
            {
                if (error) NSLog(@"Error: %@", error);
                [[[[iToast makeText:NSLocalizedString(@"Connection failed. Please try again", @"")]
                   setGravity:iToastGravityBottom] setDuration:iToastDurationNormal] show];
            }
        }
    }
    @catch (NSException * e) {
        NSLog(@"Exception: %@", e);
        [[[[iToast makeText:NSLocalizedString(@"Login failed. Please try again", @"")]
           setGravity:iToastGravityBottom] setDuration:iToastDurationNormal] show];
    }
    
}

//Link for logging in: https://tennislink.usta.com/Dashboard/Main/Login.aspx?App=5

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
