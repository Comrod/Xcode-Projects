//
//  WebViewViewController.m
//  USTA App
//
//  Created by Cormac Chester on 7/30/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import "WebViewViewController.h"

@interface WebViewViewController ()

@end

@implementation WebViewViewController

@synthesize webView;

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
    NSString *urlAddress = [NSString stringWithFormat:@"https://tennislink.usta.com/Dashboard/Main/Login.aspx?App=5"];
    urlAddress = [urlAddress stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:urlAddress];
    
    [webView loadRequest:requestObj];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
