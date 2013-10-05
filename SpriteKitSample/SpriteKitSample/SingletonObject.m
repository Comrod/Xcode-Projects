//
//  SingletonObject.m
//  SpriteKitSample
//
//  Created by Cormac Chester on 10/5/13.
//  Copyright (c) 2013 Testman Industries. All rights reserved.
//

#import "SingletonObject.h"

@implementation SingletonObject

@synthesize soundOnOff;

+(SingletonObject *)singleObj
{
    static SingletonObject *single = nil;
    
    @synchronized(self)
    {
        if(!single)
        {
            single = [[SingletonObject alloc] init];
            //single = [SingletonObject new]
        }
        
    }
    return single;
}

@end
