//
//  QuestionManager.m
//  Maths
//
//  Created by ruijia lin on 4/11/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray new];
    }
    return self;
}

-(NSString *) timeOutput{
    double totalTime = 0;
    double averageTime = 0;
    
    for (Question *question in _questions){
        totalTime += [question answerTime];
    }
    
    averageTime = totalTime / [_questions count];
    return  [NSString stringWithFormat:@"Total time: %0.2fs, average time: %0.2fs", totalTime, averageTime];
}

@end
            
