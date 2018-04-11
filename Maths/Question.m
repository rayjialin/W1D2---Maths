//
//  Question.m
//  Maths
//
//  Created by ruijia lin on 4/10/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightValue = arc4random_uniform(91) + 10;
        _leftValue = arc4random_uniform(91) + 10;
        _question = @"nil question";
        _answer = 0;
        _startTime = [NSDate date];
        _endTime = [NSDate date];
    }
    return self;
}

// override getter to set endTime

-(NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval) answerTime{
    return [_endTime timeIntervalSinceDate:_startTime];
}

-(void)generateQuestion{}
@end
