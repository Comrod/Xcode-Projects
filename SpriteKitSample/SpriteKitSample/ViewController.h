//
//  ViewController.h
//  SpriteKitSample
//

//  Copyright (c) 2013 Testman Industries. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import "SingletonObject.h"

@interface ViewController : UIViewController
{
    int soundOnOff;
    SingletonObject *vcSobj;
}

@property (nonatomic, strong) IBOutlet UISegmentedControl *volumeSegment;

-(IBAction)volumeSegmentTap:(id)sender;

@end
