//
//  DivisionQuestion.m
//  Maths
//
//  Created by ruijia lin on 4/11/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void) generateQuestion{
    
    self.question = [NSString stringWithFormat:@"%li / %li ?", self.leftValue, self.rightValue];
    self.answer = self.answer;
}

@end
