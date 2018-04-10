//
//  ScoreKeeper.h
//  Maths
//
//  Created by ruijia lin on 4/10/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property float rightCounter;
@property float wrongCounter;

//+ (void) displayScore: (int)right :(int)wrong;

-(void) displayScore;
@end
