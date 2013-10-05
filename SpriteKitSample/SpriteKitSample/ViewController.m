//
//  ViewController.m
//  SpriteKitSample
//
//  Created by Cormac Chester on 10/5/13.
//  Copyright (c) 2013 Testman Industries. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"
@import AVFoundation;

@interface ViewController()

@property (nonatomic) AVAudioPlayer *backgroundMusicPlayer;

@end

@implementation ViewController

@synthesize volumeSegment;

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    vcSobj = [SingletonObject singleObj];
    vcSobj.soundOnOff = -1;
    
    // Configure the view.
    SKView * skView = (SKView *)self.view;
    if (!skView.scene) {
        skView.showsFPS = YES;
        skView.showsNodeCount = YES;
        
        // Create and configure the scene.
        SKScene * scene = [MyScene sceneWithSize:skView.bounds.size];
        scene.scaleMode = SKSceneScaleModeAspectFill;
        
        // Present the scene.
        [skView presentScene:scene];
    }
    
    if (vcSobj.soundOnOff == -1)
    {
        [volumeSegment setSelectedSegmentIndex:0];
        NSError *error;
        NSURL *backgroundMusicURL = [[NSBundle mainBundle] URLForResource:@"background-music-aac" withExtension:@"caf"];
        self.backgroundMusicPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:backgroundMusicURL error:&error];
        self.backgroundMusicPlayer.numberOfLoops = -1;
        [self.backgroundMusicPlayer prepareToPlay];
        [self.backgroundMusicPlayer play];
        
        [volumeSegment setSelectedSegmentIndex:0];
    }
    else if (vcSobj.soundOnOff == 0)
    {
        [volumeSegment setSelectedSegmentIndex:0];
    }
    else if (vcSobj.soundOnOff == 1)
    {
        [volumeSegment setSelectedSegmentIndex:1];
    }
    
}

-(void)stopAudio
{
    if(self.backgroundMusicPlayer.isPlaying)
    {
        [self.backgroundMusicPlayer stop];
    }
    soundOnOff = 1;
    vcSobj.soundOnOff = 1;
}

- (IBAction)volumeSegmentTap:(id)sender
{
    if ([volumeSegment selectedSegmentIndex] == 0)
    {
        [volumeSegment setSelectedSegmentIndex:0];
        NSError *error;
        NSURL *backgroundMusicURL = [[NSBundle mainBundle] URLForResource:@"background-music-aac" withExtension:@"caf"];
        self.backgroundMusicPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:backgroundMusicURL error:&error];
        self.backgroundMusicPlayer.numberOfLoops = -1;
        [self.backgroundMusicPlayer prepareToPlay];
        [self.backgroundMusicPlayer play];
        vcSobj.soundOnOff = 0;
    }
    else if ([volumeSegment selectedSegmentIndex] == 1)
    {
        [self stopAudio];
        NSLog(@"Sound Turned Off");
        vcSobj.soundOnOff = 1;
    }
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
