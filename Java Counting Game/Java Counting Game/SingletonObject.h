//
//  SingletonObject.h
//  Java Counting Game
//
//  Created by Cormac Chester on 8/6/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonObject : NSObject

@property (strong, nonatomic) NSNumber *range;
@property (strong, nonatomic) NSNumber *number;
@property (strong, nonatomic) NSNumber *guess;

+(SingletonObject *)singleObj;

@end
