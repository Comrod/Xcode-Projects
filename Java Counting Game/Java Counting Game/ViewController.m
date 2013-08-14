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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    vcSobj = [SingletonObject singleObj];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
