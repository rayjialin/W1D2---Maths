//
//  QuestionFactory.m
//  Maths
//
//  Created by ruijia lin on 4/11/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory


- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}
-(Question *)generateRandomQuestion{
        return [NSClassFromString([_questionSubclassNames objectAtIndex:arc4random_uniform(3) + 0]) new];
}
@end
