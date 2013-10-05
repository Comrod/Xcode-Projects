//
//  SingletonObject.h
//  SpriteKitSample
//
//  Created by Cormac Chester on 10/5/13.
//  Copyright (c) 2013 Testman Industries. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonObject : NSObject

@property (nonatomic) NSInteger soundOnOff;

+(SingletonObject *)singleObj;

@end
