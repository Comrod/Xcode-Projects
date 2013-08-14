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
}

@property (strong, nonatomic) IBOutlet UITextField *enterTextField;

@end
