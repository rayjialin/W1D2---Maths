//
//  ScoreKeeper.m
//  Maths
//
//  Created by ruijia lin on 4/10/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

//+ (void) displayScore: (int)right :(int)wrong{
//    NSLog(@"\nscore: %i right, %i wrong --- %i%%", right, wrong, (wrong+right)/right * 100);
//}


- (void) displayScore{
    NSLog(@"\nscore: %.f right, %.f wrong --- %.f%%", _rightCounter, _wrongCounter, _rightCounter/(_wrongCounter+_rightCounter) * 100);
}

@end
