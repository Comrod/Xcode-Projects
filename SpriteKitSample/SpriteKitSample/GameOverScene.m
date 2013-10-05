//
//  GameOverScene.m
//  SpriteKitSample
//
//  Created by Cormac Chester on 10/5/13.
//  Copyright (c) 2013 Testman Industries. All rights reserved.
//

#import "GameOverScene.h"
#import "MyScene.h"

@implementation GameOverScene

-(id)initWithSize:(CGSize)size won:(BOOL)won {
    if (self = [super initWithSize:size]) {
        
        // 1
        self.backgroundColor = [SKColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
        
        // 2
        NSString *message;
        NSString *message2;
        if (won) {
            message = @"You Won!";
            message2 = @"Play Again?";
        } else {
            message = @"You Lose :[";
            message2 = @"Play Again?";
        }
        
        // 3
        SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        SKLabelNode *label2 = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        label.text = message;
        label.fontSize = 40;
        label.fontColor = [SKColor blackColor];
        label.position = CGPointMake(self.size.width/2, self.size.height/2);
        label2.text = message2;
        label2.fontSize = 40;
        label2.fontColor = [SKColor blackColor];
        label2.position = CGPointMake(self.size.width/2, self.size.height/3);
        [self addChild:label];
        [self addChild:label2];
        
        // 4
        [self runAction:
         [SKAction sequence:@[
                              [SKAction waitForDuration:3.0],
                              [SKAction runBlock:^{
             // 5
             SKTransition *dissolve = [SKTransition crossFadeWithDuration:0.5];
             SKScene *myScene = [[MyScene alloc] initWithSize:self.size];
             [self.view presentScene:myScene transition: dissolve];
         }]
                              ]]
         ];
        
    }
    return self;
}

@end