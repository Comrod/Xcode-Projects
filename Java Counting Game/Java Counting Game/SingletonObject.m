//
//  SingletonObject.m
//  Java Counting Game
//
//  Created by Cormac Chester on 8/6/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import "SingletonObject.h"

@implementation SingletonObject

@synthesize range, number, guess;

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
