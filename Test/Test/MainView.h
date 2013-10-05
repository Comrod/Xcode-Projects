//
//  MainView.h
//  Test
//
//  Created by Cormac Chester on 8/14/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MainView : NSView

@property (strong, nonatomic) IBOutlet NSButton *button;
@property (strong, nonatomic) IBOutlet NSTextField *label;

- (IBAction)buttonTap:(id)sender;

@end
